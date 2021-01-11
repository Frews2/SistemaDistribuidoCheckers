/*
 Date: 25/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using CheckersCliente.MainService;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace CheckersCliente.MenuPages
{
    /// <summary>
    /// Interaction logic for RankingList.xaml
    /// </summary>
    public partial class RankingList : Page
    {
        private List<Ranking> rankingList;

        /// <summary>
        /// Constructor para la pagina <c>RankingList</c> que muestra una tabla de 
        /// <c>Ranking</c> de los jugadores registrados al sistema
        /// </summary>
        /// <param name="rankings"></param>
        public RankingList(List<Ranking> rankings)
        {
            
            InitializeComponent();
            rankingList = rankings;
            tableOfRankings.ItemsSource = rankingList;

        }

        private void Return(object sender, RoutedEventArgs e)
        {
            Menu actualMenu = App.Current.Windows.OfType<Menu>().FirstOrDefault();
            actualMenu.EnableNavigation();
            NavigationService.GoBack();
        }
    }
}
