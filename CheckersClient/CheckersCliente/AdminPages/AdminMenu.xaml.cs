/*
 Date: 03/01/2020
 Author(s): Ricardo Moguel Sanchez
*/
using CheckersCliente.MainService;
using CheckersCliente.Managers;
using CheckersCliente.Windows;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Windows;
using System.Windows.Controls;

namespace CheckersCliente.AdminPages
{
    /// <summary>
    /// Interaction logic for AdminMenu.xaml
    /// </summary>
    public partial class AdminMenu : Page
    {
        private Jugador administrador;

        /// <summary>
        /// Constructor para una pagina <c>AdminMenu</c> que muestra las opciones 
        /// disponibles al administrador
        /// </summary>
        /// <param name="admin"></param>
        public AdminMenu(Jugador admin)
        {
            InitializeComponent();
            administrador = admin;
            DataContext = administrador;
        }

        private void DisplayReports(object sender, RoutedEventArgs e)
        {
            BanManager.GetReportedList();
        }

        private void CloseMenu(object sender, RoutedEventArgs e)
        {
            bool isYes = false;
            isYes = DialogWindowManager.ShowConfirmationWindow(Properties.Resources.LogOutQuestion);
            if (isYes)
            {
                AdminPage actualMenu = App.Current.Windows.OfType<AdminPage>().FirstOrDefault();
                actualMenu.Close();
                PlayerManager.EndSession(administrador.Apodo);
            }

        }

        private void LanguageSelect(object sender, RoutedEventArgs e)
        {
            (DataContext as Jugador).IdLenguaje = LanguageBox.SelectedIndex;
            switch (LanguageBox.SelectedIndex)
            {
                case 0:
                    Thread.CurrentThread.CurrentUICulture = new CultureInfo("en");
                    break;
                case 1:
                    Thread.CurrentThread.CurrentUICulture = new CultureInfo("es-MX");
                    break;
                case 2:
                    Thread.CurrentThread.CurrentUICulture = new CultureInfo("it");
                    break;
            }
            AdminPage menu = new AdminPage(DataContext as Jugador);
            menu.Show();
            AdminPage actualMenu = App.Current.Windows.OfType<AdminPage>().FirstOrDefault();
            actualMenu.Close();
        }
    }
}
