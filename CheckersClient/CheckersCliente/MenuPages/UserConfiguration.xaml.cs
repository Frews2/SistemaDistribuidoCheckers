/*
    Date: 23/11/2020
    Author(s): César Sergio Martinez Palacios
*/
using CheckersCliente.MainService;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;

namespace CheckersCliente.MenuPages
{
    /// <summary>
    /// Lógica de interacción para UserConfiguration.xaml
    /// </summary>
    public partial class UserConfiguration : Page
    {
        /// <summary>
        /// Constructor para la pagina <c>UserConfiguration</c> que muestra los datos del jugador que incio sesión
        /// </summary>
        /// <param name="actualPlayer"></param>
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
            Menu actualMenu = App.Current.Windows.OfType<Menu>().FirstOrDefault();
            actualMenu.EnableNavigation();
            NavigationService.GoBack();
        }
    }
}
