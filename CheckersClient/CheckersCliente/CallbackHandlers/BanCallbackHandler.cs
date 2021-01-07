/*
 Date: 02/01/2020
 Author(s): Ricardo Moguel Sanchez
*/
using CheckersCliente.AdminPages;
using CheckersCliente.MainService;
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
                MessageBox.Show("Se ha dado de baja al jugador.");
            }
            else if (result == BanResult.ERROR_BANNING)
            {
                MessageBox.Show("ERROR: No se logro dar de baja al jugador reportado.");
            }
            else
            {
                MessageBox.Show("No se pudo conectarse a la base de datos. Intente de nuevo mas tarde.");
            }
        }

        public void GetReportDataQueryResult(AdminReportResult result)
        {
            if (result == AdminReportResult.REPORT_EXISTS)
            {
                MessageBox.Show("Espere mientras se obtienen reportes.");
            }
            else if (result == AdminReportResult.NO_REPORTS_EXIST)
            {
                MessageBox.Show("No se encuentran reportes de mala conducta para jugadores.");
            }
            else
            {
                MessageBox.Show("No se pudo conectarse a la base de datos. Intente de nuevo mas tarde.");
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
