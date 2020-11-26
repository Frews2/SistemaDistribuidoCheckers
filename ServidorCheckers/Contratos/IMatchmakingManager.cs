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
        void EnterMatchmaking();
    }

    [ServiceContract]
    public interface IMatchmakingManagerCallback
    {
        [OperationContract(IsOneWay = true)]
        void GetMatchmakingResult(MatchmakingResult result);

        [OperationContract(IsOneWay = true)]
        void GetUsersOnline(List<string> connectedUsers);
    }
}
