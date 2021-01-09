using CheckersCliente.Managers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace CheckersCliente.Windows
{
    /// <summary>
    /// Lógica de interacción para ReportWindow.xaml
    /// </summary>
    public partial class ReportWindow : Window
    {
        int playerReportingNumber;
        int actualMatchNumber;
        public bool playerReported = false;

        public ReportWindow(int playerReporting,int matchNumber)
        {
            InitializeComponent();
            playerReportingNumber = playerReporting;
            actualMatchNumber = matchNumber;
        }

        private void ReportPlayer(object sender, RoutedEventArgs e)
        {
            GameManager.ReportPlayer(playerReportingNumber,actualMatchNumber, reportText.Text);
        }

        private void CloseWindow(object sender, RoutedEventArgs e)
        {
            this.Close();
        }


        private void EnableReportButton(object sender, RoutedEventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(reportText.Text) && reportText.Text.Length > 10)
            {
                reportButton.IsEnabled = true;
            }
        }

        public void ReportedPlayer()
        {
            playerReported = true;
            this.Close();
        }

        private void WindowClose(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if (playerReported)
            {
                e.Cancel = false;
                Game gameWindow = App.Current.Windows.OfType<Game>().FirstOrDefault();
                gameWindow.CloseReportWindow();
            }
            else
            {
                bool close = Windows.DialogWindowManager.ShowConfirmationWindow("Seguro que desea cancelar?");
                if (close)
                {
                    e.Cancel = false;
                    Game gameWindow = App.Current.Windows.OfType<Game>().FirstOrDefault();
                    gameWindow.reportWindowOpen = false;
                }
                else
                {
                    e.Cancel = true;
                }
            }
            
        }
    }
}
