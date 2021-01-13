/*
 Date: 02/01/2020
 Author(s): Ricardo Moguel Sanchez
*/
using CheckersCliente.AdminPages;
using CheckersCliente.MainService;
using CheckersCliente.Properties;
using System.Collections.Generic;
using System.Linq;
using System.Windows;

namespace CheckersCliente.CallbackHandlers
{
    /// <summary>
    /// Maneja respuestas del servidor para manejar resultados de reportes y prohibiciones 
    /// </summary>
    public class BanCallbackHandler : IBanManagerCallback
    {
        /// <summary>
        /// Maneja el resultado de una prohibición de un jugador por parte del administrador
        /// </summary>
        /// <param name="result"></param>
        public void GetBanResult(BanResult result)
        {
            if (result == BanResult.PLAYER_BANNED)
            {
                MessageBox.Show(Resources.PlayerBannedMessage);
            }
            else
            {
                if (result == BanResult.PLAYER_ALREADY_BANNED)
                {
                    MessageBox.Show(Resources.PlayerAlreadyBannedErrorMessage);
                }
                else
                {
                    if (result == BanResult.ERROR_BANNING)
                    {
                        MessageBox.Show(Resources.UnableToBanErrorMessage);
                    }
                    else
                    {
                        MessageBox.Show(Resources.NoConnectionMessage);
                    }
                }
            }
        }

        /// <summary>
        /// Maneja el resultado de una solicitud de lista de jugadores reportados
        /// </summary>
        /// <param name="result"></param>
        public void GetReportDataQueryResult(AdminReportResult result)
        {
            if (result == AdminReportResult.REPORT_EXISTS)
            {
                MessageBox.Show(Resources.LoadMessage);
            }
            else
            {
                if (result == AdminReportResult.NO_REPORTS_EXIST)
                {
                    MessageBox.Show(Resources.NoInfoMessage);
                }
                else
                {
                    MessageBox.Show(Resources.NoConnectionMessage);
                }
            } 
        }

        /// <summary>
        /// COnstruye una pagina para mostrar una lista de reportes elaborados por jugadores
        /// </summary>
        /// <param name="reportList"></param>
        public void ReceiveReportData(Reporte[] reportList)
        {
            List<Reporte> reports = reportList.ToList();

            if(reports.Count > 0)
            {
                AdminPage menu = App.Current.Windows.OfType<AdminPage>().FirstOrDefault();
                menu.Navigate(new ReportList(reports));
            }
        }
    }
}
