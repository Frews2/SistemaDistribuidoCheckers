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
    public partial class MainService : ILoginManager
    {
        private Dictionary<string, ILoginManagerCallback> playersLoggedIn = new Dictionary<string, ILoginManagerCallback>();
        //private Dictionary<string, IMessageManagerCallback> usuariosEnLinea = new Dictionary<string, IMessageManagerCallback>();
        private List<string> playersReady = new List<string>();
        private Jugador currentlyQueuedPlayer;

        private Jugador currentPlayer;

        public void Login(Jugador player)
        {
            LoginResult result;

            JugadorDataManager jugadorDataManager = new JugadorDataManager();

            if (jugadorDataManager.ExisteNickname(player.Apodo))
            {
                if (jugadorDataManager.EsPasswordCorrecto(player.Contrasenia))
                {
                    result = LoginResult.ExisteJugador;
                    playersLoggedIn.Add(player.Apodo, Callback);
                    playersReady.Add(player.Apodo);
                    currentPlayer = player;

                }
                else
                {
                    result = LoginResult.PasswordIncorrecto;
                }
            }
            else
            {
                result = LoginResult.NoExisteJugador;
            }

            Callback.GetLoginResult(result, player);
        }

        ILoginManagerCallback Callback
        {
            get
            {
                return OperationContext.Current.GetCallbackChannel<ILoginManagerCallback>();
            }
        }
    }

    public partial class MainService:IRankingManager
    {
        private readonly Dictionary<string, IRankingManagerCallback> interestedPlayers = new Dictionary<string, IRankingManagerCallback>();
        private List<DataAccess.Ranking> message;

        public void GetRankingCallback()
        {
            interestedPlayers.Add(currentPlayer.Apodo, RankingCallback);
            SendRankingData();
        }

        public void GetRankingData()
        {
            RankingResult result;

            RankingDataManager dataManager = new RankingDataManager();
            List<DataAccess.Ranking> rankingList = dataManager.GetRankingList();

            if (dataManager.GetRankingList() == null)
            {

                result = RankingResult.NO_RANKING;
            }
            else
            {
                result = RankingResult.RANKING_EXISTS;
                message = rankingList;

            }

            RankingCallback.GetRankingResult(result);

        }

        public void SendRankingData()
        {
            interestedPlayers[currentPlayer.Apodo].ReceiveRankingData(message);
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

        public void HostMatch(Jugador currentPlayer)
        {
            HostingResult result = HostingResult.MATCH_NOT_CREATED;
            if (!hosts.Any(k => k.Value.Equals(currentPlayer)))
            {
                hosts.Add(MatchmakingCallback, currentPlayer);
                Match match = new Match();
                match.matchID = currentPlayer.Apodo;
                match.matchPair.Add(MatchmakingCallback, currentPlayer);
                matchesCreated.Add(match);
                result = HostingResult.MATCH_CREATED;
            }
        }

        public void EnterMatch(Match gameMatch, Dominio.Jugador currentPlayer)
        {
            MatchmakingResult result = MatchmakingResult.MATCH_NOT_FOUND;
            IMatchmakingManagerCallback matchCallback = MatchmakingCallback;

            var searchForMatch = matchesCreated.Find(match => match.matchID.Equals(gameMatch.matchID));

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
                searchForMatch.matchPair.Add(matchCallback, currentPlayer);
                AddPlayerToMatch(searchForMatch, currentPlayer);
            }
            MatchmakingCallback.GetMatchmakingResult(result);
        }

        public void AddPlayerToMatch(Match currentMatch, Dominio.Jugador currentPlayer)
        {
            currentMatch.Add(currentPlayer,)

        }

        public void LeaveMatch(Match gameMatch, Jugador currentPlayer)
        {
            throw new NotImplementedException();
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
        private readonly Dictionary<string, IChatManagerCallback> playersInChat = new Dictionary<string, IChatManagerCallback>();

        public void GetChatCallback()
        {
            playersInChat.Add(currentlyQueuedPlayer.Apodo, ChatCallback);
        }

        public void SendText(string destination, string message)
        {
            playersInChat[destination].ReceiveText(GetSender(), message);
        }

        private string GetSender()
        {
            string sender = "";

            foreach (var player in playersInChat)
            {
                if (player.Value == ChatCallback)
                {
                    sender = player.Key;
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