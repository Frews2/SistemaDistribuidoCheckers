/*
 Date: 21/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using Dominio;
using System.ServiceModel;

namespace Contratos
{
    [ServiceContract(CallbackContract = typeof(IRankingManagerCallback))]
    public interface IRankingManager
    {
        [OperationContract(IsOneWay = true)]
        void GetRankingData(Jugador interestedPlayer);
    }

    [ServiceContract]
    public interface IRankingManagerCallback
    {
        [OperationContract(IsOneWay = true)]
        void GetRankingResult(RankingResult resultado);
    }
}