/*
 Date: 20/11/2020
 Author(s): Cesar Sergio Martinez Palacios
*/
using CheckersCliente.MainService;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using CheckersCliente.Managers;
using System.Threading;
using System.Globalization;

namespace CheckersCliente.MenuPages
{
    /// <summary>
    /// Lógica de interacción para PrincipalMenu.xaml
    /// </summary>
    public partial class PrincipalMenu : Page
    {
        Jugador actualPlayer;

        /// <summary>
        /// Constructor para la pagina <c>PrincipalMenu</c> con la funcionalidad
        /// mostrar servicios disponibles a un jugador durante una sesión abierta en el sistema
        /// </summary>
        /// <param name="player"></param>
        public PrincipalMenu(Jugador player)
        {
            InitializeComponent();
            DataContext = player;
            this.actualPlayer = player;
        }

        private void UserConfiguration(object sender, RoutedEventArgs e)
        {
            Menu actualMenu = App.Current.Windows.OfType<Menu>().FirstOrDefault();
            actualMenu.EnableNavigation();
            PlayerManager.GetActualPlayer(DataContext as Jugador);
        }

        private void DisplayRanking(object sender, RoutedEventArgs e)
        {
            Menu actualMenu = App.Current.Windows.OfType<Menu>().FirstOrDefault();
            actualMenu.EnableNavigation();
            RankingManager.AddRankingPetitionCallback();
        }

        private void ShowRules(object sender, RoutedEventArgs e)
        {
            Menu actualMenu = App.Current.Windows.OfType<Menu>().FirstOrDefault();
            actualMenu.EnableNavigation();
            NavigationService.Navigate(new RulesPage());
        }

        private void ChooseGameMode(object sender, RoutedEventArgs e)
        {
            Menu actualMenu = App.Current.Windows.OfType<Menu>().FirstOrDefault();
            actualMenu.EnableNavigation();
            NavigationService.Navigate(new GameMode(actualPlayer));
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
            Menu menu = new Menu(DataContext as Jugador);
            menu.Show();
            Menu actualMenu = App.Current.Windows.OfType<Menu>().FirstOrDefault();
            actualMenu.ChangeLanguage();
            actualMenu.Close();
        }

    }
}
