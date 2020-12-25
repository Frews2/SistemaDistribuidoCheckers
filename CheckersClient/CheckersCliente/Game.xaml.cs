/*
 Date: 25/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using CheckersCliente.MainService;
using CheckersCliente.Managers;
using CheckersCliente.MenuPages;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Navigation;

namespace CheckersCliente
{
    /// <summary>
    /// Interaction logic for Game.xaml
    /// </summary>
    public partial class Game : Window
    {
        private Jugador localPlayer;
        private Jugador remotePayer;
        private Match gameMatch;
        public Game()
        {
            InitializeComponent();
        }

        public void RefreshMessageList()
        {
            chatFrame.Navigate(new GameChat());
        }

        private void RegresarAMenu(object sender, RoutedEventArgs e)
        {
            MatchmakingManager.LeaveMatchmaking(gameMatch, localPlayer);
            this.Close();
        }

    }
}
