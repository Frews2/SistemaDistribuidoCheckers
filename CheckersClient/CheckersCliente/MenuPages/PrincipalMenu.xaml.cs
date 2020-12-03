using CheckersCliente.MainService;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CheckersCliente.MenuPages
{
    /// <summary>
    /// Lógica de interacción para PrincipalMenu.xaml
    /// </summary>
    public partial class PrincipalMenu : Page
    {
        public PrincipalMenu(Jugador jugadorActual)
        {
            InitializeComponent();
            userBox.Text = jugadorActual.Apodo;
        }

        private void UserConfiguration(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new UserConfiguration());
        }
    }
}
