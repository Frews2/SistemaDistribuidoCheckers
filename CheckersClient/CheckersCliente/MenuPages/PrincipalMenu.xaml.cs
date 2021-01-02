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

        public PrincipalMenu(Jugador player)
        {
            InitializeComponent();
            DataContext = player;
        }

        private void UserConfiguration(object sender, RoutedEventArgs e)
        {
            JugadorManager.GetActualPlayer(DataContext as Jugador);
        }

        private void DisplayRanking(object sender, RoutedEventArgs e)
        {
            RankingManager.AddRankingPetitionCallback();
        }
        private void ShowRules(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new RulesPage());
        }

        private void ChooseGameMode(object sender, RoutedEventArgs e)
        {
            MatchmakingManager.EnterMatchmaking(DataContext as Jugador);
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
            actualMenu.Close();
            NavigationService.Navigate(new GameMode(currentPlayer));
        }

    }
}
