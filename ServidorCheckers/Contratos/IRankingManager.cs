/*
 Date: 21/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using Dominio;
using System.Collections.Generic;
using System.ServiceModel;

namespace Contratos
{
    /// <summary>
    /// Interface para servicios con respecto a datos de ranking de jugadores
    /// </summary>
    [ServiceContract(CallbackContract = typeof(IRankingManagerCallback))]
    public interface IRankingManager
    {
        /// <summary>
        /// Contrato para obtener datos de rankings de la base de datos
        /// </summary>
        [OperationContract(IsOneWay = true)]
        void GetRankingData();
    }

    /// <summary>
    /// Interface para servicios de callback handlers para <c>Ranking</c> que debe implementar el cliente
    /// </summary>
    [ServiceContract]
    public interface IRankingManagerCallback
    {
        /// <summary>
        /// Contrato para obtener el resultado de solicitar rankings de jugadores de la base de datos
        /// </summary>
        /// <param name="result"></param>
        [OperationContract(IsOneWay = true)]
        void GetRankingResult(RankingResult result);

        /// <summary>
        /// Contrato para obtener una lista de rankings de jugadores de la base de datos
        /// </summary>
        /// <param name="rankingList"></param>
        [OperationContract(IsOneWay = true)]
        void ReceiveRankingData(List<Dominio.Ranking> rankingList);
    }
}