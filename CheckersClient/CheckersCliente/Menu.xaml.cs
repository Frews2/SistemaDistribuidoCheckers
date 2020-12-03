using CheckersCliente.MainService;
using CheckersCliente.MenuPages;
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

namespace CheckersCliente
{
    /// <summary>
    /// Lógica de interacción para Menu.xaml
    /// </summary>
    public partial class Menu : NavigationWindow
    {
        public Jugador currentPlayer;
        public Menu(Jugador player)
        {
            InitializeComponent();
            currentPlayer = player;
            NavigationService.Navigate(new PrincipalMenu(currentPlayer));
        }
    }
}
