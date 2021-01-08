/*
 Date: 02/01/2020
 Author(s): Ricardo Moguel Sanchez
*/
using CheckersCliente.AdminPages;
using CheckersCliente.MainService;
using CheckersCliente.Properties;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace CheckersCliente.CallbackHandlers
{
    class BanCallbackHandler : IBanManagerCallback
    {
        public void GetBanResult(BanResult result)
        {
            if (result == BanResult.PLAYER_BANNED)
            {
                MessageBox.Show(Resources.PlayerBannedMessage);
            }
            else if (result == BanResult.PLAYER_ALREADY_BANNED)
            {
                MessageBox.Show(Resources.PlayerAlreadyBannedErrorMessage);
            }
            else if (result == BanResult.ERROR_BANNING)
            {
                MessageBox.Show(Resources.UnableToBanErrorMessage);
            }
            else
            {
                MessageBox.Show(Resources.NoConnectionMessage);
            }
        }

        public void GetReportDataQueryResult(AdminReportResult result)
        {
            if (result == AdminReportResult.REPORT_EXISTS)
            {
                MessageBox.Show(Resources.LoadMessage);
            }
            else if (result == AdminReportResult.NO_REPORTS_EXIST)
            {
                MessageBox.Show(Resources.NoInfoMessage);
            }
            else
            {
                MessageBox.Show(Resources.NoConnectionMessage);
            }
        }

        public void ReceiveReportData(Reporte[] reportList)
        {
            List<Reporte> reports = reportList.ToList();
            AdminPage menu = App.Current.Windows.OfType<AdminPage>().FirstOrDefault();
            menu.Navigate(new ReportList(reports));
        }
    }
}
