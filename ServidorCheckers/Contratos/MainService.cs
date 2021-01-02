/*
 Date: 20/11/2020
 Author(s): Cesar Sergio Martinez Palacios Ricardo Moguel Sanchez
*/
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
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

        JugadorDataManager jugadorDataManager = new JugadorDataManager();
        HashManager hashText = new HashManager();

        private Dictionary<string, IPlayerManagerCallback> playersLoggedIn = new Dictionary<string, IPlayerManagerCallback>();
        //private Dictionary<string, IMessageManagerCallback> usuariosEnLinea = new Dictionary<string, IMessageManagerCallback>();


        public void Login(Jugador player)
        {
            LoginResult result;

            JugadorDataManager jugadorDataManager = new JugadorDataManager();
            if (jugadorDataManager.CheckNickname(player.Apodo))
            {
                if (jugadorDataManager.CheckState(player.Apodo))
                {
                    if (jugadorDataManager.EsPasswordCorrecto(hashText.TextToHash(player.Contrasenia), player.Apodo))
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
                    result = LoginResult.ExisteJugadorNoVerificado;
                }
            }
            else
            {
                result = LoginResult.NoExisteJugador;
            }

            Callback.GetLoginResult(result, player);
        }

        public void SavePlayer(Dominio.Jugador player)
        {
            JugadorDataManager playerDataManager = new JugadorDataManager();

            int columnasAfectadas = 0;
            string eMail = player.CorreoElectronico;
            SaveResult saveResult = SaveResult.ErrorGuardado;

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
                            Credentials = new System.Net.NetworkCredential("checkersGame124@gmail.com", "checkersJuego1."),
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
                Credentials = new System.Net.NetworkCredential("checkersGame124@gmail.com", "checkersJuego1."),
                Port = 587,
                EnableSsl = true,
                Host = "smtp.gmail.com",
            };
            try
            {
                client.Send(mailMesagge);
                mailSuccesResult = MailResult.MailSend;
                Callback.GetMailResult(mailSuccesResult, player.Apodo);
            }
            catch (System.Net.Mail.SmtpException)
            {
                Callback.GetMailResult(mailSuccesResult, player.Apodo);
                throw new System.Net.Mail.SmtpException("No se ha podido enviar el correo, favor de verificar su correo");
            }
        }

        public void PasswordForgotMail(string actualNickname)
        {
            JugadorDataManager jugadorDataManager = new JugadorDataManager();
            MailResult mailSuccesResult = MailResult.SendError;

            if (jugadorDataManager.CheckNickname(actualNickname))
            {
                DataAccess.Jugador player = new DataAccess.Jugador();
                player = jugadorDataManager.ChangePinByNickname(actualNickname);

                System.Net.Mail.MailMessage mailMesagge = new System.Net.Mail.MailMessage();

                mailMesagge.To.Add(player.correoElectronico);
                mailMesagge.Subject = "Recuperacion de cuenta del jugador " + player.apodo;
                mailMesagge.Body = "Hola " + player.apodo + " has solicitado una recuperacion de cuenta, " +
                    "el código de verificación para cambiar tu contraseña es el siguiente: " + player.pinConfirmacion;
                mailMesagge.From = new System.Net.Mail.MailAddress("checkersGame124@gmail.com", "Checkers Game Proyect");

                System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient
                {
                    Credentials = new System.Net.NetworkCredential("checkersGame124@gmail.com", "checkersJuego1."),
                    Port = 587,
                    EnableSsl = true,
                    Host = "smtp.gmail.com",
                };
                try
                {
                    client.Send(mailMesagge);
                    mailSuccesResult = MailResult.MailSend;
                    Callback.GetMailResult(mailSuccesResult, actualNickname);
                }
                catch (System.Net.Mail.SmtpException)
                {
                    Callback.GetMailResult(mailSuccesResult, actualNickname);
                    throw new System.Net.Mail.SmtpException("No se ha podido enviar el correo, favor de verificar su correo");
                }
            }
            else
            {
                mailSuccesResult = MailResult.UnknownPlayer;
                Callback.GetMailResult(mailSuccesResult, actualNickname);
            }
        }

        public void VerifyPin(string actualNickname, string playerPin)
        {
            PinResult pinResult = PinResult.UnknownPin;

            if (jugadorDataManager.PinCorrecto(actualNickname, playerPin))
            {
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

            if(rankings == null)
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
            List<DataAccess.Ranking> queriedRankingList = dataManager.GetRankingList();

            if (dataManager.GetRankingList() != null)
            {
                foreach (DataAccess.Ranking playerRanking in queriedRankingList )
                {
                    currentRankings.Add(new Dominio.Ranking
                    {
                        IdRanking = playerRanking.idRanking,
                        Duenio = dataManager.GetPlayerByID(playerRanking.idDuenio),
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

    public partial class MainService : IMatchmakingManager
    {
        private Dictionary<IMatchmakingManagerCallback, Dominio.Jugador> hosts = new Dictionary<IMatchmakingManagerCallback, Dominio.Jugador>();
        Dictionary<IMatchmakingManagerCallback, Dominio.Jugador> currentMatch;
        //private readonly Dictionary<IMatchmakingManagerCallback, Dominio.Jugador> currentMatch = new Dictionary<IMatchmakingManagerCallback, Dominio.Jugador>();
        private List<string> playerChat = new List<string>();
        private List<Match> matchesCreated = new List<Match>();
        private List<string> playersReady = new List<string>();
        private Jugador currentlyQueuedPlayer;

        public void GetMatchmakingCallback()
        {

        }

        public void CreateMatch(Jugador currentPlayer, string gameMode)
        {
            if (!matchesCreated.Any(match => match.Host.Any(player => player.Value.Equals(currentPlayer))))
            {
                HostMatch(currentPlayer, gameMode);
            }
            else
            {
                Match availableMatch = null;
                availableMatch = matchesCreated.Where(match => match.GameMode.Equals(gameMode) && match.Guest == null).First();
                
                EnterMatch(availableMatch, currentPlayer);
            }
        }

        public void HostMatch(Jugador currentPlayer, string gameMode)
        {
            HostingResult hostingResult = HostingResult.MATCH_NOT_CREATED;
            if (!hosts.Any(player => player.Value.Equals(currentPlayer)))
            {
                hosts.Add(MatchmakingCallback, currentPlayer);
                Match match = new Match
                {
                    MatchHostName = currentPlayer.Apodo,
                    Host = hosts,
                    GameMode = gameMode
                };

                //match.MatchPair.Add(MatchmakingCallback, currentPlayer);
                matchesCreated.Add(match);
                hostingResult = HostingResult.MATCH_CREATED;
            }
            else if(!matchesCreated.Any(match => match.Guest.Any(player => player.Value.Equals(currentPlayer))))
            {
                Match vacantMatch = matchesCreated.First();
                EnterMatch(vacantMatch, currentPlayer);
            }
            MatchmakingCallback.GetHostingResult(hostingResult);
        }

        public void EnterMatch(Match gameMatch, Dominio.Jugador currentPlayer)
        {
            MatchmakingResult result = MatchmakingResult.MATCH_NOT_FOUND;
            IMatchmakingManagerCallback matchCallback = MatchmakingCallback;

            var searchForMatch = matchesCreated.Find(match => match.MatchHostName.Equals(gameMatch.MatchHostName));

            if (searchForMatch != null)
            {
                result = MatchmakingResult.MATCH_FOUND;
            }
            else
            {
                result = MatchmakingResult.UNABLE_TO_ENTER_MATCH;
            }

            matchCallback.NotifyMatchReady(result);

            if(result == MatchmakingResult.MATCH_FOUND)
            {
                searchForMatch.Guest.Add(matchCallback, currentPlayer);
                AddPlayerToMatch(searchForMatch, currentPlayer);
            }
            MatchmakingCallback.GetMatchmakingResult(result);
        }

        public void AddPlayerToMatch(Match currentMatch, Dominio.Jugador currentPlayer)
        {
            //currentMatch.Add(currentPlayer,)

        }

        public void LeaveMatch(Match gameMatch, Jugador currentPlayer)
        {
           if(matchesCreated.Any(match => match.GameMode.Equals(gameMatch.GameMode)))
            {

            }
        }

        IMatchmakingManagerCallback MatchmakingCallback
        {
            get
            {
                return OperationContext.Current.GetCallbackChannel<IMatchmakingManagerCallback>();
            }
        }
    }

    public partial class MainService : IChatManager
    {
        private readonly Dictionary<IChatManagerCallback, string> playersInChat = new Dictionary<IChatManagerCallback, string>();

        public void GetChatCallback()
        {
            playersInChat.Add(ChatCallback, currentlyQueuedPlayer.Apodo);
        }

        public void SendText(string destination, string message)
        {
            SendMessageResult messageResult = SendMessageResult.MESSAGE_NOT_SENT;
            IChatManagerCallback receiverPlayer = null;
            receiverPlayer = playersInChat.Where(receiver => receiver.Value == destination).First().Key;

            if (receiverPlayer != null)
            {
                receiverPlayer.ReceiveText(GetSender(), message);
                messageResult = SendMessageResult.MESSAGE_SENT;
            }

            ChatCallback.GetSentMessageResult(messageResult);
        }

        private string GetSender()
        {
            string sender = "";

            foreach (var player in playersInChat)
            {
                if (player.Key == ChatCallback)
                {
                    sender = player.Value;
                    break;
                }
            }

            return sender;
        }

        IChatManagerCallback ChatCallback
        {
            get
            {
                return OperationContext.Current.GetCallbackChannel<IChatManagerCallback>();
            }
        }
    }
}