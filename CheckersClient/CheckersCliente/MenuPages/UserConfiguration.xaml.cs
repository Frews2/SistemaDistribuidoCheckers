/*
    Date: 23/11/2020
    Author(s): César Sergio Martinez Palacios
*/
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
    /// Lógica de interacción para UserConfiguration.xaml
    /// </summary>
    public partial class UserConfiguration : Page
    {
        public UserConfiguration(Jugador actualPlayer)
        {
            InitializeComponent();
            DataContext = actualPlayer;

            switch (actualPlayer.IdLenguaje)
            {
                case 0:
                    LanguageTextBlock.Text = "English";
                    break;
                case 1:
                    LanguageTextBlock.Text = "Español";
                    break;
                case 2:
                    LanguageTextBlock.Text = "Italiano";
                    break;
            }
        }
        private void CancelClick(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
