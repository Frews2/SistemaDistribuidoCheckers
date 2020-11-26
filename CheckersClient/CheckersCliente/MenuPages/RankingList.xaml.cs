using CheckersCliente.MainService;
using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;

namespace CheckersCliente.MenuPages
{
    /// <summary>
    /// Interaction logic for RankingList.xaml
    /// </summary>
    public partial class RankingList : Page
    {
        private readonly ObservableCollection<Jugador> players = null;
        private Jugador selectedPlayer;

        public RankingList()
        {
            InitializeComponent();
        }
    }
}
