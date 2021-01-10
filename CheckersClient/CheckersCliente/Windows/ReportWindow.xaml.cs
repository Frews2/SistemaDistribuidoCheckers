using CheckersCliente.Managers;
using System.Linq;
using System.Windows;

namespace CheckersCliente.Windows
{
    /// <summary>
    /// Lógica de interacción para ReportWindow.xaml
    /// </summary>
    public partial class ReportWindow : Window
    {
        int playerReportingNumber;
        int actualMatchNumber;
        private bool playerReported = false;


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
                bool close = DialogWindowManager.ShowConfirmationWindow(Properties.Resources.CancelQuestion);
                if (close)
                {
                    e.Cancel = false;
                    Game gameWindow = App.Current.Windows.OfType<Game>().FirstOrDefault();
                    gameWindow.ReportWindowOpen = false;
                }
                else
                {
                    e.Cancel = true;
                }
            }
            
        }
    }
}
