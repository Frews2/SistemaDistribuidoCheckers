using Contratos;
using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServerTests.CallbackHandlers
{
    class BanCallbackHandler : IBanManagerCallback
    {
        public List<Reporte> reportedPlayerList;
        public BanResult banResult;
        public AdminReportResult adminReportResult;

        public void GetBanResult(BanResult result)
        {
            if (result == BanResult.PLAYER_BANNED)
            {
                banResult = BanResult.PLAYER_BANNED;
            }
            else if (result == BanResult.PLAYER_ALREADY_BANNED)
            {
                banResult = BanResult.PLAYER_ALREADY_BANNED;
            }
            else if (result == BanResult.ERROR_BANNING)
            {
                banResult = BanResult.ERROR_BANNING;
            }
        }

        public void GetReportDataQueryResult(AdminReportResult result)
        {
            if (result == AdminReportResult.REPORT_EXISTS)
            {
                adminReportResult = AdminReportResult.REPORT_EXISTS;
            }
            else if (result == AdminReportResult.NO_REPORTS_EXIST)
            {
                adminReportResult = AdminReportResult.NO_REPORTS_EXIST;
            }
        }

        public void ReceiveReportData(List<Reporte> reportList)
        {
            reportedPlayerList = reportList;
        }
    }
}
