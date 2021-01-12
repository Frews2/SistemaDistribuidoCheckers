/*
 Date: 02/01/2021
 Author(s): Ricardo Moguel Sanchez
*/
using Dominio;
using System.Collections.Generic;
using System.ServiceModel;

namespace Contratos
{
    /// <summary>
    /// Interface para servicios con respecto a prohibir acceso a jugadores
    /// </summary>
    [ServiceContract(CallbackContract = typeof(IBanManagerCallback))]
    public interface IBanManager
    {
        /// <summary>
        /// Contrato para obtener datos de reportes de la base de datos
        /// </summary>
        [OperationContract(IsOneWay = true)]
        void GetReportData();

        /// <summary>
        /// Contrato para prohibir acceso al sistema a un jugador
        /// </summary>
        /// <param name="reportedPlayerName"></param>
        [OperationContract(IsOneWay = true)]
        void BanPlayer(string reportedPlayerName);
    }

    /// <summary>
    /// Interface para servicios de callback handlers para <c>Reporte</c> que debe implementar el cliente
    /// </summary>
    [ServiceContract]
    public interface IBanManagerCallback
    {
        /// <summary>
        /// Contrato para obtener el resultado de solicitar reportes de jugadores de la base de datos
        /// </summary>
        /// <param name="result"></param>
        [OperationContract(IsOneWay = true)]
        void GetReportDataQueryResult(AdminReportResult result);

        /// <summary>
        /// Contrato para obtener reportes de jugadores de la base de datos
        /// </summary>
        /// <param name="reportList"></param>
        [OperationContract(IsOneWay = true)]
        void ReceiveReportData(List<Reporte> reportList);

        /// <summary>
        /// Contrato para obtener el resultado de solicitar la operacion <c>BanPlayer</c>
        /// </summary>
        /// <param name="result"></param>
        [OperationContract(IsOneWay = true)]
        void GetBanResult(BanResult result);
    }
}
