/*
 Date: 03/01/2020
 Author(s): Ricardo Moguel Sanchez
*/
using CheckersCliente.MainService;
using CheckersCliente.Managers;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;

namespace CheckersCliente.AdminPages
{
    /// <summary>
    /// Interaction logic for ReportList.xaml
    /// </summary>
    public partial class ReportList : Page
    {
        private List<Reporte> reportList;
        private Reporte selectedReport;
        private Jugador bannedPlayer;

        /// <summary>
        /// Constructor para una pagina <c>ReportList</c> que contiene una tabla de
        /// reportes elaborados por jugadores
        /// </summary>
        /// <param name="reports"></param>
        public ReportList(List<Reporte> reports)
        {
            InitializeComponent();
            reportList = reports;
            tableOfReports.ItemsSource = reportList;
        }

        private void BanPlayer(object sender, RoutedEventArgs e)
        {
            selectedReport = (Reporte)tableOfReports.SelectedItem;
            bannedPlayer = selectedReport.Reportado;
            BanManager.BanPlayer(bannedPlayer.Apodo);
        }

        private void Exit(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
