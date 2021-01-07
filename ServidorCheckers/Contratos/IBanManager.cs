/*
 Date: 02/01/2021
 Author(s): Ricardo Moguel Sanchez
*/
using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace Contratos
{
    [ServiceContract(CallbackContract = typeof(IBanManagerCallback))]
    public interface IBanManager
    {
        [OperationContract(IsOneWay = true)]
        void GetReportData();

        [OperationContract(IsOneWay = true)]
        void BanPlayer(string reportedPlayerName);
    }

    [ServiceContract]
    public interface IBanManagerCallback
    {
        [OperationContract(IsOneWay = true)]
        void GetReportDataQueryResult(AdminReportResult result);

        [OperationContract(IsOneWay = true)]
        void ReceiveReportData(List<Reporte> reportList);

        [OperationContract(IsOneWay = true)]
        void GetBanResult(BanResult result);
    }
}
