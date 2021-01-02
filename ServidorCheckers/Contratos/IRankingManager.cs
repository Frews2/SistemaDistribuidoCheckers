/*
 Date: 21/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using Dominio;
using System.Collections.Generic;
using System.ServiceModel;

namespace Contratos
{
    [ServiceContract(CallbackContract = typeof(IRankingManagerCallback))]
    public interface IRankingManager
    {
        [OperationContract(IsOneWay = true)]
        void GetRankingData();
    }

    [ServiceContract]
    public interface IRankingManagerCallback
    {
        [OperationContract(IsOneWay = true)]
        void GetRankingResult(RankingResult resultado);

        [OperationContract(IsOneWay = true)]
        void ReceiveRankingData(List<Dominio.Ranking> rankingList);
    }
}