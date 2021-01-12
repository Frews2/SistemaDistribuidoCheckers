/*
 Date: 23/12/2020
 Author(s): Ricardo Moguel Sanchez
*/
using CheckersCliente.MainService;
using CheckersCliente.Managers;
using System.Linq;
using System.Windows;
using System.Windows.Controls;


namespace CheckersCliente.MenuPages
{
    /// <summary>
    /// Interaction logic for GameMode.xaml
    /// </summary>
    public partial class GameMode : Page
    {
        private Jugador currentPlayer;
        private CheckersGameMode selectedGameMode;

        /// <summary>
        /// Constructor para la pagina <c>GameMode</c> con funcionalidad para seleccion de modo de juego
        /// </summary>
        /// <param name="player"></param>
        public GameMode(Jugador player)
        {
            InitializeComponent();
            currentPlayer = player;
        }

        private void EnterClassicGame(object sender, RoutedEventArgs e)
        {
            selectedGameMode = CheckersGameMode.ClassicCheckers;
            GameManager.EnterMatchmaking(currentPlayer, selectedGameMode);
        }

        private void Return(object sender, System.Windows.RoutedEventArgs e)
        {
            Menu actualMenu = App.Current.Windows.OfType<Menu>().FirstOrDefault();
            actualMenu.EnableNavigation();
            NavigationService.GoBack();
        }
    }
}
