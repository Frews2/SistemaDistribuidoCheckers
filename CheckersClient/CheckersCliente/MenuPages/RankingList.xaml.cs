/*
 Date: 25/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using CheckersCliente.MainService;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Windows.Controls;

namespace CheckersCliente.MenuPages
{
    /// <summary>
    /// Interaction logic for RankingList.xaml
    /// </summary>
    public partial class RankingList : Page
    {

        public RankingList(List<Ranking> rankings)
        {
            InitializeComponent();
            tableOfRankings.ItemsSource = rankings;
        }

        private void Return(object sender, System.Windows.RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
