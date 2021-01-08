/*
 Date: 20/11/2020
 Author(s): Cesar Sergio Martinez Palacios y Ricardo Moguel Sanchez
*/
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Configuration;
using System.Linq;
using System.Net.Mail;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using DataAccess.DataManager;
using Dominio;


namespace Contratos
{

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

        private Dictionary<string, IPlayerManagerCallback> playersLoggedIn = new Dictionary<string, IPlayerManagerCallback>();


        public void Login(Jugador player)
        {
            LoginResult result = LoginResult.NoExisteJugador;
            AdminDataManager adminDataManager = new AdminDataManager();
            if (adminDataManager.CheckNickname(player.Apodo))
            {
                if (adminDataManager.EsPasswordCorrecto(player.Contrasenia, player.Apodo))
                {
                    result = LoginResult.EsAdmin;
                }
                else
                {
                    result = LoginResult.PasswordIncorrecto;
                }
            }
            else
            {
                JugadorDataManager jugadorDataManager = new JugadorDataManager();
                if (jugadorDataManager.CheckNickname(player.Apodo))
                {
                    if (jugadorDataManager.CheckState(player.Apodo))
                    {
                        if (jugadorDataManager.CorrectAnswer(player.Contrasenia, player.Apodo))
                        {
                            result = LoginResult.ExisteJugadorVerificado;
                            DataAccess.Jugador searchedPlayer = jugadorDataManager.GetPlayerByNickname(player.Apodo);
                            player.IdLenguaje = searchedPlayer.idioma;
                        }
                        else
                        {
                            result = LoginResult.PasswordIncorrecto;
                        }
                    }
                    else
                    {
                        if (jugadorDataManager.CheckBannedState(player.Apodo))
                        {
                            result = LoginResult.EsBaneado;
                        }
                        else
                        {
                            result = LoginResult.ExisteJugadorNoVerificado;
                        }

                    }
                }
                else
                {
                    result = LoginResult.NoExisteJugador;
                }
            }

            Callback.GetLoginResult(result, player);
        }

        public void SavePlayer(Dominio.Jugador player)
        {
            JugadorDataManager playerDataManager = new JugadorDataManager();

            int columnasAfectadas = 0;
            string eMail = player.CorreoElectronico;
            SaveResult saveResult = SaveResult.ErrorGuardado;
            MailResult mailResult = MailResult.SendError;

            bool nicknameExists = playerDataManager.CheckNickname(player.Apodo);

            if (nicknameExists == false)
            {
                bool emailExists = playerDataManager.CheckEmail(player.CorreoElectronico);

                if (emailExists == false)
                {
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

                    JugadorDataManager jugadorDataManager = new JugadorDataManager();
                    columnasAfectadas = jugadorDataManager.SaveNewPlayer(newPlayer);

                    if (columnasAfectadas > 0)
                    {
                        saveResult = SaveResult.JugadorGuardado;
                        Callback.GetSaveResult(saveResult, player);

                        System.Net.Mail.MailMessage mensaje = new System.Net.Mail.MailMessage();

                        mensaje.To.Add(newPlayer.correoElectronico);
                        mensaje.Subject = "Confirmación de creación de cuenta " + player.Apodo;
                        mensaje.Body = "Hola " + player.Apodo + " estas a un paso de verificar tu cuenta!, " +
                            "el código de verificación de cuenta es el siguiente: " + newPlayer.pinConfirmacion;
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
                            cliente.Send(mensaje);
                        }
                        catch (System.Net.Mail.SmtpException)
                        {
                            Callback.GetResendMailResult(mailResult, player.Apodo);
                            throw new System.Net.Mail.SmtpException("No se ha podido enviar el correo, favor de verificar su correo");
                        }
                    }
                    else
                    {
                        saveResult = SaveResult.ErrorGuardado;
                        Callback.GetSaveResult(saveResult, player);
                    }
                }
                else
                {
                    saveResult = SaveResult.CorreoExistente;
                    Callback.GetSaveResult(saveResult, player);
                }
            }
            else
            {
                saveResult = SaveResult.NicknameExistente;
                Callback.GetSaveResult(saveResult, player);
            }
            Callback.GetSaveResult(saveResult, player);
        }

        public void VerifyPlayer(Dominio.Jugador player)
        {
            VerificationResult resultado = VerificationResult.NoExisteJugador;

            JugadorDataManager jugadorDataManager = new JugadorDataManager();

            if (jugadorDataManager.CheckNickname(player.Apodo))
            {
                if (jugadorDataManager.PinCorrecto(player.Apodo, player.PinConfirmacion))
                {
                    int result = jugadorDataManager.VerifyNewPlayer(new DataAccess.Jugador
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

            Callback.GetVerifyResult(resultado);
        }

        public void SendMail(Jugador player)
        {
            MailResult mailSuccesResult = MailResult.SendError;

            System.Net.Mail.MailMessage mailMesagge = new System.Net.Mail.MailMessage();

            mailMesagge.To.Add(player.CorreoElectronico);
            mailMesagge.Subject = "Confirmación de creación de cuenta " + player.Apodo;
            mailMesagge.Body = "Hola " + player.Apodo + " estas a un paso de verificar tu cuenta!, " +
                "el código de verificación de cuenta es el siguiente: " + player.PinConfirmacion;
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
                Callback.GetResendMailResult(mailSuccesResult, player.Apodo);
            }
            catch (System.Net.Mail.SmtpException)
            {
                Callback.GetResendMailResult(mailSuccesResult, player.Apodo);
                throw new System.Net.Mail.SmtpException("No se ha podido enviar el correo, favor de verificar su correo");
            }
        }

        public void PasswordForgotMail(string actualNickname)
        {
            JugadorDataManager jugadorDataManager = new JugadorDataManager();
            MailResult mailSuccesResult = MailResult.SendError;
            string securityQuestion = " ";

            if (jugadorDataManager.CheckNickname(actualNickname))
            {
                DataAccess.Jugador player = new DataAccess.Jugador();
                player = jugadorDataManager.ChangePinByNickname(actualNickname);
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
                    Callback.GetMailResult(mailSuccesResult, actualNickname, securityQuestion);
                }
                catch (System.Net.Mail.SmtpException)
                {
                    Callback.GetMailResult(mailSuccesResult, actualNickname, securityQuestion);
                    throw new System.Net.Mail.SmtpException("No se ha podido enviar el correo, favor de verificar su correo");
                }
            }
            else
            {
                mailSuccesResult = MailResult.UnknownPlayer;
                Callback.GetMailResult(mailSuccesResult, actualNickname, securityQuestion);
            }
        }

        public void VerifyPin(string actualNickname, string playerPin, string answerText)
        {
            PinResult pinResult = PinResult.UnknownPin;

            if (jugadorDataManager.PinCorrecto(actualNickname, playerPin))
            {
                if (jugadorDataManager.CorrectAnswer(actualNickname, answerText))
                {
                    pinResult = PinResult.WrongAnswer;
                }
                pinResult = PinResult.VerifiedPin;
            }

            Callback.GetPinResult(pinResult, actualNickname);
        }

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

            Callback.GetPasswordChangeResult(changeResult);

        }

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
                Callback.SendActualPlayer(dataObtainedResult, domainSearchedPlayer);
            }
            else
            {
                Dominio.Jugador emptyPlayer = new Jugador();
                Callback.SendActualPlayer(dataObtainedResult, emptyPlayer);
            }


        }

        IPlayerManagerCallback Callback
        {
            get
            {
                return OperationContext.Current.GetCallbackChannel<IPlayerManagerCallback>();
            }
        }
    }

    public partial class MainService : IRankingManager
    {
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

                RankingCallback.GetRankingResult(result);

                RankingCallback.ReceiveRankingData(rankings);
            }
        }

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

        public void Player1Turn(Checker[][] updateBoardMatrix, int matchNumber, int playerTwoCheckers, int playerOneCheckers)
        {
            activeMatches[matchNumber].playerTwoCallback.UpdateGameGUI(updateBoardMatrix, playerTwoCheckers, playerOneCheckers);
        }

        public void CreateMatch(Jugador currentPlayer, CheckersGameMode gameMode)
        {
            MatchmakingResult matchmakingResult = MatchmakingResult.UNABLE_TO_ENTER_MATCH;

            if (playersQueuedClassic.Count > 0)
            {
                Match newCompleteGame = new Match();
                newCompleteGame = playersQueuedClassic.First();
                playersQueuedClassic.Remove(newCompleteGame);
                newCompleteGame.playerTwoCallback = GameManagerCallback as IGameManagerCallback;
                newCompleteGame.playerTwoData = currentPlayer;
                newCompleteGame.matchActiveNumber = numberActiveMatches;
                playersQueuedClassic.Sort();
                matchmakingResult = MatchmakingResult.MATCH_FOUND;
                activeMatches.Add(newCompleteGame);
                numberActiveMatches++;

                //error de que no encontro al inutil
                GameManagerCallback.GetMatchmakingResult(matchmakingResult, newCompleteGame, PLAYER_TWO);
                newCompleteGame.playerOneCallback.GetMatchmakingResult(matchmakingResult, newCompleteGame, PLAYER_ONE);

            }
            else
            {
                Match newGame = new Match()
                {
                    currentPlayer = PLAYER_ONE,
                    playerOneData = currentPlayer,
                    playerOneCallback = GameManagerCallback as IGameManagerCallback,
                };

                playersQueuedClassic.Add(newGame);
                matchmakingResult = MatchmakingResult.MATCH_NOT_FOUND;
                GameManagerCallback.GetMatchmakingResult(matchmakingResult, newGame, PLAYER_ONE);

            }
        }


        public void Player2Turn(Checker[][] updateBoardMatrix, int matchNumber, int playerTwoCheckers, int playerOneCheckers)
        {
            activeMatches[matchNumber].playerOneCallback.UpdateGameGUI(updateBoardMatrix, playerTwoCheckers, playerOneCheckers);
        }

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

        public void SendGameMessage(int playerNumber, string message, int matchNumber)
        {
            if (playerNumber == PLAYER_ONE)
            {
                activeMatches[matchNumber].playerTwoCallback.RecieveGameMessage(message);
            }
            else
            {
                activeMatches[matchNumber].playerOneCallback.RecieveGameMessage(message);
            }
        }
    }

    public partial class MainService : IBanManager
    {
        IBanManagerCallback BanCallback
        {
            get
            {
                return OperationContext.Current.GetCallbackChannel<IBanManagerCallback>();
            }
        }

        public void GetReportData()
        {
            AdminReportResult result;
            List<Dominio.Reporte> reportList = QueryReportData();

            if (reportList.Count() < 1)
            {
                result = AdminReportResult.NO_REPORTS_EXIST;
            }
            else
            {
                result = AdminReportResult.REPORT_EXISTS;

                BanCallback.GetReportDataQueryResult(result);

                BanCallback.ReceiveReportData(reportList);
            }
        }

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

        public void BanPlayer(string reportedPlayerName)
        {
            int isPlayerBanned = 0;
            DataAccess.Jugador reportedPlayer = new DataAccess.Jugador();
            JugadorDataManager playerDataManager = new JugadorDataManager();

            BanResult banResult = BanResult.ERROR_BANNING;
            reportedPlayer = playerDataManager.GetPlayerByNickname(reportedPlayerName);
            isPlayerBanned = playerDataManager.BanPlayer(reportedPlayer.apodo);

            if (isPlayerBanned != 0)
            {
                banResult = BanResult.PLAYER_BANNED;

                System.Net.Mail.MailMessage emailContent = new System.Net.Mail.MailMessage();

                emailContent.To.Add(reportedPlayer.correoElectronico);
                emailContent.Subject = "Aviso de baja de cuenta por reportado " + reportedPlayer.apodo;
                emailContent.Body = "Hola " + reportedPlayer.apodo + " te avisamos que tu cuenta se ha sido dada de baja por " +
                    "reportaje de mal comporamiento. ";
                emailContent.From = new System.Net.Mail.MailAddress("checkersGame124@gmail.com", "Checkers Game Proyect");

                System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient
                {
                    Credentials = new System.Net.NetworkCredential("checkersGame124@gmail.com", "checkersJuego1."),
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

                BanCallback.GetBanResult(banResult);
            }

        }
    }
}
