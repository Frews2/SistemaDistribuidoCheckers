using CheckersCliente.MainService;
using CheckersCliente.Managers;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CheckersCliente.AdminPages
{
    /// <summary>
    /// Interaction logic for AdminMenu.xaml
    /// </summary>
    public partial class AdminMenu : Page
    {
        public AdminMenu(Jugador admin)
        {
            InitializeComponent();
            DataContext = admin;
        }

        private void DisplayReports(object sender, RoutedEventArgs e)
        {
            BanManager.GetReportedList();
        }

        private void CloseMenu(object sender, RoutedEventArgs e)
        {
            AdminPage actualMenu = App.Current.Windows.OfType<AdminPage>().FirstOrDefault();
            actualMenu.Close();
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
