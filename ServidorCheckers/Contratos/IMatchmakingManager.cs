/*
 Date: 25/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using Dominio;
using System.Collections.Generic;
using System.ServiceModel;

namespace Contratos
{
    [ServiceContract(CallbackContract = typeof(IMatchmakingManagerCallback))]
    public interface IMatchmakingManager
    {
        [OperationContract(IsOneWay = true)]
        void HostMatch(Dominio.Jugador currentPlayer);

        [OperationContract(IsOneWay = true)]
        void EnterMatch(Match gameMatch, Dominio.Jugador currentPlayer);

        [OperationContract(IsOneWay = true)]
        void LeaveMatch(Match gameMatch, Dominio.Jugador currentPlayer);
    }

    [ServiceContract]
    public interface IMatchmakingManagerCallback
    {
        [OperationContract(IsOneWay = true)]
        void GetMatchmakingResult(MatchmakingResult result);

        [OperationContract(IsOneWay = true)]
        void GetUsersOnline(List<string> connectedUsers);

        [OperationContract(IsOneWay = true)]
        void NotifyMatchReady(MatchmakingResult result);

        [OperationContract(IsOneWay = true)]
        void AddPlayerToMatch(Dominio.Jugador player);
    }
}
