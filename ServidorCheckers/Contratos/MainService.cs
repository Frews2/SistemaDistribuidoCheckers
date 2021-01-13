/*
 Date: 20/11/2020
 Author(s): Cesar Sergio Martinez Palacios y Ricardo Moguel Sanchez
*/
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Mail;
using System.ServiceModel;
using DataAccess.DataManager;
using Dominio;


namespace Contratos
{
    /// <summary>
    /// Implementaciónn de Interface para servicios con respecto a datos de jugadores
    /// </summary>
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.Single, ConcurrencyMode = ConcurrencyMode.Multiple)]
    public partial class MainService : IPlayerManager
    {
        public static readonly string ACTIVATION_STATE = "En activacion";
        public static readonly string ACTIVE_STATE = "Activo";
        public static readonly string REPORTED_STATE = "En revision";
        public static readonly string DOWN_STATE = "Baja";
        private readonly string mailUser = ConfigurationManager.AppSettings["UserMail"];
        private readonly string mailPassword = ConfigurationManager.AppSettings["UserPassword"];


        JugadorDataManager jugadorDataManager = new JugadorDataManager();
        HashManager hashText = new HashManager();

        private Dictionary<string,IPlayerManagerCallback> playersLoggedIn = new Dictionary<string, IPlayerManagerCallback>();


        /// <summary>
        /// Implementación de Contrato para iniciar sesion al sistema
        /// </summary>
        /// <param name="player"></param>
        /// <exception>
        /// Este metodo puede retornar una excepcion tipo AddressAlreadyInUseEsception
        /// </exception>
        public void Login(Jugador player)
        {
            LoginResult result;
            AdminDataManager adminDataManager = new AdminDataManager();
            if (adminDataManager.CheckNickname(player.Apodo))
            {
                if (adminDataManager.EsPasswordCorrecto(player.Contrasenia, player.Apodo))
                {
                    try
                    {
                        result = LoginResult.EsAdmin;

                        playersLoggedIn.Add(player.Apodo, PlayerCallback);
                    }
                    catch (AddressAlreadyInUseException)
                    {
                        result = LoginResult.LOGGED_PLAYER;
                    }

                    PlayerCallback.GetAdminLoginResult(result, player);
                }
                else
                {
                    result = LoginResult.PasswordIncorrecto;

                    PlayerCallback.GetAdminLoginResult(result, player);
                }
            }
            else
            {
                LoginPlayer(player);
            }
        }

        /// <summary>
        /// Implementación de Contrato para iniciar sesion como Jugador
        /// </summary>
        /// <param name="player"></param>
        public void LoginPlayer(Jugador player)
        {
            LoginResult result = LoginResult.NoExisteJugador;
            JugadorDataManager jugadorManager = new JugadorDataManager();
            if (jugadorManager.CheckNickname(player.Apodo))
            {
                if (jugadorManager.CheckState(player.Apodo))
                {
                    if (jugadorManager.EsPasswordCorrecto(player.Contrasenia, player.Apodo))
                    {
                        DataAccess.Jugador searchedPlayer = jugadorManager.GetPlayerByNickname(player.Apodo);
                        if (!playersLoggedIn.ContainsKey(searchedPlayer.apodo))
                        {
                            result = LoginResult.ExisteJugadorVerificado;

                            playersLoggedIn.Add(searchedPlayer.apodo, PlayerCallback);
                            player.Apodo = searchedPlayer.apodo;
                            player.IdLenguaje = searchedPlayer.idioma;
                            player.IdJugador = searchedPlayer.idJugador;
                            player.Contrasenia = searchedPlayer.contrasenia;
                            player.CorreoElectronico = searchedPlayer.correoElectronico;
                            player.PreguntaRecuperacion = searchedPlayer.preguntaRecuperacion;

                            PlayerCallback.GetPlayerLoginResult(result, player);
                        }
                        else
                        { 
                            result = LoginResult.LOGGED_PLAYER;

                            PlayerCallback.GetPlayerLoginResult(result, player);
                        }
                    }
                    else
                    {
                        result = LoginResult.PasswordIncorrecto;

                        PlayerCallback.GetPlayerLoginResult(result, player);
                    }
                }
                else
                {
                    CheckBan(player);
                }
            }
            else
            {
                PlayerCallback.GetPlayerLoginResult(result, player);
            }
        }

        private void CheckBan(Jugador player)
        {
            LoginResult result;
            if (jugadorDataManager.CheckBannedState(player.Apodo))
            {
                result = LoginResult.EsBaneado;

                PlayerCallback.GetPlayerLoginResult(result, player);
            }
            else
            {
                result = LoginResult.ExisteJugadorNoVerificado;

                PlayerCallback.GetPlayerLoginResult(result, player);
            }
        }

        /// <summary>
        /// Implementación de Contrato para guardar un jugador registrado a la base de datos
        /// </summary>
        /// <param name="player"></param>
        /// <exception>
        /// Este metodo puede retornar una excepcion tipo SmtpException
        /// </exception>
        public void SavePlayer(Dominio.Jugador player)
        {
            JugadorDataManager playerDataManager = new JugadorDataManager();

            SaveResult saveResult;
            MailResult mailResult;

            bool nicknameExists = playerDataManager.CheckNickname(player.Apodo);

            if (!nicknameExists)
            {
                bool emailExists = playerDataManager.CheckEmail(player.CorreoElectronico);

                if (!emailExists)
                {
                    System.Net.Mail.MailMessage mensaje = new System.Net.Mail.MailMessage();

                    mensaje.To.Add(player.CorreoElectronico);
                    mensaje.Subject = "Account creation confirmation" + player.Apodo;
                    mensaje.Body = "Hello " + player.Apodo + " you are one step away from verifying your account!, " +
                        "the account verification code is as follows: " + player.PinConfirmacion;
                    mensaje.From = new System.Net.Mail.MailAddress("checkersGame124@gmail.com", "Checkers Game Proyect");

                    System.Net.Mail.SmtpClient cliente = new System.Net.Mail.SmtpClient
                    {
                        Credentials = new System.Net.NetworkCredential(mailUser, mailPassword),
                        Port = 587,
                        EnableSsl = true,
                        Host = "smtp.gmail.com",
                    };
                    try
                    {
                        mailResult = MailResult.MailSend;
                        cliente.Send(mensaje);
                    }
                    catch (System.Net.Mail.SmtpException)
                    {
                        mailResult = MailResult.SendError;
                        PlayerCallback.GetResendMailResult(mailResult, player.Apodo);
                    }
                    if (mailResult == MailResult.MailSend)
                    {
                        SaveNewPlayer(player);
                    }
                }
                else
                {
                    saveResult = SaveResult.CorreoExistente;
                    PlayerCallback.GetSaveResult(saveResult, player);
                }
            }
            else
            {
                saveResult = SaveResult.NicknameExistente;
                PlayerCallback.GetSaveResult(saveResult, player);
            }
        }

        private void SaveNewPlayer(Jugador player)
        {
            SaveResult saveResult;
            DataAccess.Jugador newPlayer = new DataAccess.Jugador
            {
                apodo = player.Apodo,
                contrasenia = hashText.TextToHash(player.Contrasenia),
                correoElectronico = player.CorreoElectronico,
                status = ACTIVATION_STATE,
                respuestaConfirmacion = player.RespuestaConfirmacion,
                preguntaRecuperacion = player.PreguntaRecuperacion,
                pinConfirmacion = player.PinConfirmacion,
                idCreador = 1,
                idioma = player.IdLenguaje
            };

            JugadorDataManager jugadorManager = new JugadorDataManager();
            int columnasAfectadas = jugadorManager.SaveNewPlayer(newPlayer);
            RankingDataManager rankingData = new RankingDataManager();
            rankingData.NewPlayerRank(newPlayer);
            if (columnasAfectadas > 0)
            {
                saveResult = SaveResult.JugadorGuardado;
                PlayerCallback.GetSaveResult(saveResult, player);
            }
            else
            {
                saveResult = SaveResult.ErrorGuardado;
                PlayerCallback.GetSaveResult(saveResult, player);
            }
        }

        /// <summary>
        /// Implementación de Contrato para verificar un jugador antes de ser otorgado acceso al sistema
        /// </summary>
        /// <param name="player"></param>
        public void VerifyPlayer(Dominio.Jugador player)
        {
            VerificationResult resultado = VerificationResult.NoExisteJugador;

            JugadorDataManager jugadorManager = new JugadorDataManager();

            if (jugadorManager.CheckNickname(player.Apodo))
            {
                if (jugadorManager.PinCorrecto(player.Apodo, player.PinConfirmacion))
                {
                    int result = jugadorManager.VerifyNewPlayer(new DataAccess.Jugador
                    {
                        apodo = player.Apodo,
                        pinConfirmacion = player.PinConfirmacion,
                    });

                    if (result > 0)
                    {
                        resultado = VerificationResult.VerificacionExistosa;
                    }
                }
                else
                {
                    resultado = VerificationResult.PinIncorrecto;
                }
            }
            else
            {
                resultado = VerificationResult.NoExisteJugador;
            }

            PlayerCallback.GetVerifyResult(resultado);
        }

        /// <summary>
        /// Implementación de Contrato para enviar correo al email de un jugador
        /// </summary>
        /// <param name="player"></param>
        /// <exception>
        /// Este metodo puede retornar una excepcion tipo SmtpException
        /// </exception>
        public void SendMail(Jugador player)
        {
            MailResult mailSuccesResult;

            System.Net.Mail.MailMessage mailMesagge = new System.Net.Mail.MailMessage();

            mailMesagge.To.Add(player.CorreoElectronico);
            mailMesagge.Subject = "Account creation confirmation" + player.Apodo;
            mailMesagge.Body = "Hello " + player.Apodo + " you are one step away from verifying your account!, " +
                "the account verification code is as follows: " + player.PinConfirmacion;
            mailMesagge.From = new System.Net.Mail.MailAddress("checkersGame124@gmail.com", "Checkers Game Proyect");

            System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient
            {
                Credentials = new System.Net.NetworkCredential(mailUser, mailPassword),
                Port = 587,
                EnableSsl = true,
                Host = "smtp.gmail.com",
            };
            try
            {
                client.Send(mailMesagge);
                mailSuccesResult = MailResult.MailSend;
                PlayerCallback.GetResendMailResult(mailSuccesResult, player.Apodo);
            }
            catch (System.Net.Mail.SmtpException)
            {
                mailSuccesResult = MailResult.SendError;
                PlayerCallback.GetResendMailResult(mailSuccesResult, player.Apodo);
            }
        }

        /// <summary>
        /// Implementación de Contrato para enviar email de solicitud de cambio de contraseña a un jugador
        /// </summary>
        /// <param name="actualNickname"></param>
        /// <exception>
        /// Este metodo puede retornar una excepcion tipo SmtpException
        /// </exception>
        public void PasswordForgotMail(string actualNickname)
        {
            JugadorDataManager jugadorManager = new JugadorDataManager();
            MailResult mailSuccesResult;
            string securityQuestion = " ";

            if (jugadorManager.CheckNickname(actualNickname))
            {
                DataAccess.Jugador player = jugadorManager.ChangePinByNickname(actualNickname);
                securityQuestion = player.preguntaRecuperacion;

                System.Net.Mail.MailMessage mailMesagge = new System.Net.Mail.MailMessage();

                mailMesagge.To.Add(player.correoElectronico);
                mailMesagge.Subject = "Recuperacion de cuenta del jugador " + player.apodo;
                mailMesagge.Body = "Hola " + player.apodo + " has solicitado una recuperacion de cuenta, " +
                    "el código de verificación para cambiar tu contraseña es el siguiente: " + player.pinConfirmacion;
                mailMesagge.From = new System.Net.Mail.MailAddress("checkersGame124@gmail.com", "Checkers Game Proyect");

                System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient
                {
                    Credentials = new System.Net.NetworkCredential(mailUser, mailPassword),
                    Port = 587,
                    EnableSsl = true,
                    Host = "smtp.gmail.com",
                };
                try
                {
                    client.Send(mailMesagge);
                    mailSuccesResult = MailResult.MailSend;
                    PlayerCallback.GetMailResult(mailSuccesResult, actualNickname, securityQuestion);
                }
                catch (System.Net.Mail.SmtpException)
                {
                    mailSuccesResult = MailResult.SendError;
                    PlayerCallback.GetMailResult(mailSuccesResult, actualNickname, securityQuestion);
                }
            }
            else
            {
                mailSuccesResult = MailResult.UnknownPlayer;
                PlayerCallback.GetMailResult(mailSuccesResult, actualNickname, securityQuestion);
            }
        }

        /// <summary>
        /// Implementación de Contrato para verificar el PIN de confirmacion para habilitar el cambio de contraseña de un jugador
        /// </summary>
        /// <param name="actualNickname"></param>
        /// <param name="playerPin"></param>
        /// <param name="answerText"></param>
        public void VerifyPin(string actualNickname, string playerPin, string answerText)
        {
            PinResult pinResult = PinResult.UnknownPin;

            if (jugadorDataManager.PinCorrecto(actualNickname, playerPin))
            {
                if (jugadorDataManager.CorrectAnswer(actualNickname, answerText))
                {
                    pinResult = PinResult.VerifiedPin;
                }
                else
                {
                    pinResult = PinResult.WrongAnswer;
                }
            }

            PlayerCallback.GetPinResult(pinResult, actualNickname);
        }

        /// <summary>
        /// Implementación de Contrato para actualizar la contraseña de un jugador
        /// </summary>
        /// <param name="userNickname"></param>
        /// <param name="password"></param>
        public void ChangePassword(string userNickname, string password)
        {
            PasswordChangeResult changeResult = PasswordChangeResult.ErrorChanging;

            if (jugadorDataManager.CheckNickname(userNickname))
            {
                string newPassword = hashText.TextToHash(password);
                int resultChange = jugadorDataManager.ChangePassword(userNickname, newPassword);

                if (resultChange > 0)
                {
                    changeResult = PasswordChangeResult.ChangedPassword;
                }

            }

            PlayerCallback.GetPasswordChangeResult(changeResult);

        }

        /// <summary>
        /// Implementación de Contrato para obtener datos de un jugador
        /// </summary>
        /// <param name="actualPlayer"></param>
        public void GetActualPlayer(Jugador actualPlayer)
        {
            DataObtainedResult dataObtainedResult = DataObtainedResult.ErrorObtainingData;
            DataAccess.Jugador searchedPlayer = jugadorDataManager.GetPlayerByNickname(actualPlayer.Apodo);

            if (searchedPlayer != null)
            {
                Dominio.Jugador domainSearchedPlayer = new Dominio.Jugador
                {
                    IdJugador = searchedPlayer.idJugador,
                    Apodo = searchedPlayer.apodo,
                    CorreoElectronico = searchedPlayer.correoElectronico,
                    Status = searchedPlayer.status,
                    PreguntaRecuperacion = searchedPlayer.preguntaRecuperacion,
                    IdLenguaje = searchedPlayer.idioma

                };
                dataObtainedResult = DataObtainedResult.DataObtained;
                PlayerCallback.SendActualPlayer(dataObtainedResult, domainSearchedPlayer);
            }
            else
            {
                Dominio.Jugador emptyPlayer = new Jugador();
                PlayerCallback.SendActualPlayer(dataObtainedResult, emptyPlayer);
            }


        }

        /// <summary>
        /// Implementación de Contrato para cerrrar sesion dentro del sistema
        /// </summary>
        /// <param name="playerNickname"></param>
        public void CloseSession(string playerNickname)
        {
            playersLoggedIn.Remove(playerNickname);

        }

        IPlayerManagerCallback PlayerCallback
        {
            get
            {
                return OperationContext.Current.GetCallbackChannel<IPlayerManagerCallback>();
            }
        }
    }

    /// <summary>
    /// Implementación de Interface para servicios con respecto a datos de ranking de jugadores
    /// </summary>
    public partial class MainService : IRankingManager
    {
        /// <summary>
        /// Implementación de Contrato para obtener datos de rankings de la base de datos
        /// </summary>
        public void GetRankingData()
        {
            RankingResult result;
            List<Dominio.Ranking> rankings = QueryRankingData();

            if (rankings == null)
            {
                result = RankingResult.NO_RANKING;
            }
            else
            {
                result = RankingResult.RANKING_EXISTS;

                RankingCallback.ReceiveRankingData(rankings);
            }


            RankingCallback.GetRankingResult(result);
        }

        /// <summary>
        /// Consulta de la base de datos por una lista de rankings
        /// </summary>
        /// <returns>Retorna lista de <c>Ranking</c></returns>
        public List<Dominio.Ranking> QueryRankingData()
        {
            List<Dominio.Ranking> currentRankings = new List<Dominio.Ranking>();
            RankingDataManager dataManager = new RankingDataManager();
            JugadorDataManager playerManager = new JugadorDataManager();
            List<DataAccess.Ranking> queriedRankingList = dataManager.GetRankingList();

            if (dataManager.GetRankingList() != null)
            {
                foreach (DataAccess.Ranking playerRanking in queriedRankingList)
                {
                    currentRankings.Add(new Dominio.Ranking
                    {
                        IdRanking = playerRanking.idRanking,
                        Duenio = playerManager.GetDomainPlayerByID(playerRanking.idDuenio),
                        FechaRegistracion = playerRanking.fechaRegistracion ?? default(DateTime),
                        NumeroVictorias = playerRanking.numeroVictorias ?? default(int),
                        PartidasJugadas = playerRanking.partidasJugadas ?? default(int),
                        Rank = playerRanking.rank ?? default(int),
                        NumeroPerdidas = playerRanking.numeroPerdidas ?? default(int)
                    });
                }
            }

            return currentRankings;
        }

        IRankingManagerCallback RankingCallback
        {
            get
            {
                return OperationContext.Current.GetCallbackChannel<IRankingManagerCallback>();
            }
        }
    }

    /// <summary>
    /// Implementación de Interface para servicios con respecto a jugar una partida de checkers
    /// </summary>
    public partial class MainService : IGameManager
    {
        private List<Match> activeMatches = new List<Match>();
        private int numberActiveMatches = 0;
        private List<Match> playersQueuedClassic = new List<Match>();
        private const int PLAYER_ONE = 1;
        private const int PLAYER_TWO = 2;

        IGameManagerCallback GameManagerCallback
        {
            get
            {
                return OperationContext.Current.GetCallbackChannel<IGameManagerCallback>();
            }
        }

        /// <summary>
        /// Implementación de Contrato para actualizar el tablero despues del turno del jugador 1
        /// </summary>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo EndpointNotFoundException
        /// </exception>
        public void Player1Turn(Checker[][] updateBoardMatrix, int matchNumber, int playerTwoCheckers, int playerOneCheckers)
        {
            try
            {
                activeMatches[matchNumber].playerTwoCallback.UpdateGameGUI(updateBoardMatrix, playerTwoCheckers, playerOneCheckers);
            }
            catch (EndpointNotFoundException)
            {
                activeMatches[matchNumber].playerOneCallback.EndAbandonedGame();
            }
        }

        /// <summary>
        /// Implementación de Contrato para crear una partida de checkers
        /// </summary>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo EndpointNotFoundException
        /// </exception>
        public void CreateMatch(Jugador currentPlayer, CheckersGameMode gameMode)
        {
            MatchmakingResult matchmakingResult;

            if (playersQueuedClassic.Count > 0)
            {
                Match newCompleteGame = playersQueuedClassic.First();
                playersQueuedClassic.Remove(newCompleteGame);
                newCompleteGame.playerTwoCallback = GameManagerCallback;
                newCompleteGame.playerTwoData = currentPlayer;
                newCompleteGame.matchActiveNumber = numberActiveMatches;
                playersQueuedClassic.Sort();
                matchmakingResult = MatchmakingResult.MATCH_FOUND;
                activeMatches.Add(newCompleteGame);
                numberActiveMatches++;

                try
                {
                    newCompleteGame.playerOneCallback.GetMatchmakingResult(matchmakingResult, newCompleteGame, PLAYER_ONE);


                    GameManagerCallback.GetMatchmakingResult(matchmakingResult, newCompleteGame, PLAYER_TWO);
                }
                catch(EndpointNotFoundException)
                {
                    matchmakingResult = MatchmakingResult.UNABLE_TO_ENTER_MATCH;
                    GameManagerCallback.GetMatchmakingResult(matchmakingResult, newCompleteGame, PLAYER_TWO);
                    activeMatches.Remove(newCompleteGame);
                    numberActiveMatches--;
                }

            }
            else
            {
                Match newGame = new Match()
                {
                    currentPlayer = PLAYER_ONE,
                    playerOneData = currentPlayer,
                    playerOneCallback = GameManagerCallback,
                };

                playersQueuedClassic.Add(newGame);
                matchmakingResult = MatchmakingResult.MATCH_NOT_FOUND;
                GameManagerCallback.GetMatchmakingResult(matchmakingResult, newGame, PLAYER_ONE);

            }
        }

        /// <summary>
        /// Implementación de Contrato para actualizar el tablero despues del turno del jugador 2
        /// </summary>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo EndpointNotFoundException
        /// </exception>
        public void Player2Turn(Checker[][] updateBoardMatrix, int matchNumber, int playerTwoCheckers, int playerOneCheckers)
        {
            try
            {
                activeMatches[matchNumber].playerOneCallback.UpdateGameGUI(updateBoardMatrix, playerTwoCheckers, playerOneCheckers);
            }
            catch (EndpointNotFoundException)
            {
                activeMatches[matchNumber].playerTwoCallback.EndAbandonedGame();
            }
        }

        /// <summary>
        /// Implementación de Contrato para terminar una partida de un juego de checkers
        /// </summary>
        public void FinishPlayerGame(int matchNumber, int playerNumber, int playerTwoCheckers, int playerOneCheckers)
        {
            if (playerNumber == PLAYER_ONE)
            {
                activeMatches[matchNumber].playerTwoCallback.FinishGame(playerTwoCheckers, playerOneCheckers);
            }
            else
            {
                activeMatches[matchNumber].playerOneCallback.FinishGame(playerTwoCheckers, playerOneCheckers);
            }
            RankingDataManager rankingDataManager = new RankingDataManager();
            rankingDataManager.UpdateMatchResults(activeMatches[matchNumber].playerOneData, playerOneCheckers, activeMatches[matchNumber].playerTwoData, playerTwoCheckers, playerNumber);

            numberActiveMatches--;
            activeMatches.RemoveAt(matchNumber);

            int listPosition;

            for (listPosition = matchNumber; listPosition < activeMatches.Count; listPosition++)
            {
                activeMatches[listPosition].matchActiveNumber--;
                activeMatches[listPosition].playerOneCallback.UpdateMatchNumber(activeMatches[listPosition].matchActiveNumber);
                activeMatches[listPosition].playerTwoCallback.UpdateMatchNumber(activeMatches[listPosition].matchActiveNumber);
            }
        }

        /// <summary>
        /// Contrato para mandar un mensaje al oponente durante un partido 
        /// </summary>
        /// <param name="playerNumber"></param>
        /// <param name="message"></param>
        /// <param name="matchNumber"></param>
        public void SendGameMessage(int playerNumber, string message, int matchNumber)
        {
            if (playerNumber == PLAYER_ONE)
            {
                activeMatches[matchNumber].playerTwoCallback.RecieveGameMessage(message, PLAYER_ONE);
            }
            else
            {
                activeMatches[matchNumber].playerOneCallback.RecieveGameMessage(message,PLAYER_TWO);
            }
        }

        /// <summary>
        /// Contrato para crear un reporte de acuso contra el oponente durante un partido
        /// </summary>
        /// <param name="playerNumberReporting"></param>
        /// <param name="matchNumber"></param>
        /// <param name="reportText"></param>
        public void ReportPlayer(int playerNumberReporting, int matchNumber, string reportText)
        {
            int reportResult;
            ReportSaveResult reportSaveResult = ReportSaveResult.ERROR_SAVING;
            ReportDataManager reportDataManager = new ReportDataManager();

            if (playerNumberReporting == PLAYER_ONE)
            {
                reportResult = reportDataManager.ReportPlayer(activeMatches[matchNumber].playerTwoData.IdJugador, activeMatches[matchNumber].playerOneData.IdJugador, reportText);
            }
            else
            {
                reportResult = reportDataManager.ReportPlayer(activeMatches[matchNumber].playerOneData.IdJugador, activeMatches[matchNumber].playerTwoData.IdJugador, reportText);
            }

            if (reportResult > 0)
            {
                reportSaveResult = ReportSaveResult.SAVED_REPORT;
            }
            GameManagerCallback.ReportResult(reportSaveResult);
        }

        /// <summary>
        /// Contrato para salir de una partida de un juego de checkers
        /// </summary>
        /// <param name="matchNumber"></param>
        /// <param name="playerNumber"></param>
        public void LeaveMatch(int matchNumber, int playerNumber)
        {
            if (playerNumber == PLAYER_ONE)
            {
                activeMatches[matchNumber].playerTwoCallback.EndAbandonedGame();
            }
            else
            {
                activeMatches[matchNumber].playerOneCallback.EndAbandonedGame();
            }
        }
    }

    /// <summary>
    /// Implementación de Interface para servicios con respecto a prohibir acceso a jugadores
    /// </summary>
    public partial class MainService : IBanManager
    {
        IBanManagerCallback BanCallback
        {
            get
            {
                return OperationContext.Current.GetCallbackChannel<IBanManagerCallback>();
            }
        }

        /// <summary>
        /// Implementación de Contrato para obtener datos de reportes de la base de datos
        /// </summary>
        public void GetReportData()
        {
            AdminReportResult result = AdminReportResult.NO_REPORTS_EXIST;
            List<Dominio.Reporte> reportList = QueryReportData();

            if (reportList.Count > 0)
            {
                result = AdminReportResult.REPORT_EXISTS;

                BanCallback.ReceiveReportData(reportList);
            }
            BanCallback.GetReportDataQueryResult(result);
        }

        /// <summary>
        /// Obtiene una lisa de reportes de la base de datos
        /// </summary>
        /// <returns>retorna una lista de <c>Reporte</c></returns>
        public List<Dominio.Reporte> QueryReportData()
        {
            List<Dominio.Reporte> currentPlayerReports = new List<Dominio.Reporte>();
            ReportDataManager reportDataManager = new ReportDataManager();
            JugadorDataManager playerManager = new JugadorDataManager();
            List<DataAccess.Reporte> queriedReportList = reportDataManager.GetReportList();

            if (reportDataManager.GetReportList() != null)
            {
                foreach (DataAccess.Reporte playerReport in queriedReportList)
                {
                    currentPlayerReports.Add(new Dominio.Reporte
                    {
                        IdReporte = playerReport.idReporte,
                        Acusador = playerManager.GetDomainPlayerByID(playerReport.idAcusador),
                        Reportado = playerManager.GetDomainPlayerByID(playerReport.idReportado),
                        DescripcionAcuso = playerReport.descripcionAcuso ?? default(string)
                    });
                }
            }

            return currentPlayerReports;
        }

        /// <summary>
        /// Contrato para prohibir acceso al sistema a un jugador
        /// </summary>
        /// <param name="reportedPlayerName"></param>
        /// <exception>
        /// Este metodo puede retornar una excepcion tipo SmtpException
        /// </exception>
        public void BanPlayer(string reportedPlayerName)
        {
            int isPlayerBanned = 0;
            const int BAN_SAUCCESSFUL = 1;
            const int BAN_ALREADY = 2;
            JugadorDataManager playerDataManager = new JugadorDataManager();

            BanResult banResult = BanResult.ERROR_BANNING;
            DataAccess.Jugador reportedPlayer = playerDataManager.GetPlayerByNickname(reportedPlayerName);
            isPlayerBanned = playerDataManager.BanPlayer(reportedPlayer.apodo);

            if (isPlayerBanned == BAN_SAUCCESSFUL)
            {
                MailMessage emailContent = new MailMessage();

                emailContent.To.Add(reportedPlayer.correoElectronico);
                emailContent.Subject = "Aviso de baja de cuenta por reportado " + reportedPlayer.apodo;
                emailContent.Body = "Hola " + reportedPlayer.apodo + " te avisamos que tu cuenta se ha sido dada de baja por " +
                    "reportaje de mal comporamiento. ";
                emailContent.From = new System.Net.Mail.MailAddress("checkersGame124@gmail.com", "Checkers Game Proyect");

                SmtpClient client = new SmtpClient
                {
                    Credentials = new System.Net.NetworkCredential(mailUser, mailPassword),
                    EnableSsl = true,
                    Port = 587,
                    Host = "smtp.gmail.com",
                };

                try
                {
                    client.Send(emailContent);
                }
                catch (System.Net.Mail.SmtpException)
                {
                    throw new System.Net.Mail.SmtpException("No se ha podido enviar el correo, favor de verificar el correo del jugador reportado");
                }

                banResult = BanResult.PLAYER_BANNED;
            }
            else 
            {
                if (isPlayerBanned == BAN_ALREADY)
                {
                    banResult = BanResult.PLAYER_ALREADY_BANNED;
                }
                    
            }

            BanCallback.GetBanResult(banResult);

        }
    }
}
