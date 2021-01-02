/*
    Date: 23/11/2020
    Author(s): César Sergio Martinez Palacios
*/
using CheckersCliente.MainService;
using CheckersCliente.MenuPages;
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

namespace CheckersCliente
{
    /// <summary>
    /// Lógica de interacción para Menu.xaml
    /// </summary>
    public partial class Menu : NavigationWindow
    {

        public Menu(Jugador player)
        {
            InitializeComponent();
            lookLanguage(player.IdLenguaje);
            NavigationService.Navigate(new PrincipalMenu(player));

        }

        public string LangSwitch { get; private set; } = null;

        private void lookLanguage(int idLanguage)
        {
            switch(idLanguage)
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
        }
    }
}
