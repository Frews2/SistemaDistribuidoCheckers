﻿using CheckersCliente.MainService;
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
    /// Lógica de interacción para PrincipalMenu.xaml
    /// </summary>
    public partial class PrincipalMenu : Page
    {
        private Jugador currentPlayer;

        public PrincipalMenu(Jugador player)
        {
            InitializeComponent();
            currentPlayer = player;
        }

        private void UserConfiguration(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new UserConfiguration());
        }

        private void DisplayRanking(object sender, RoutedEventArgs e)
        {
            RankingManager.AddRankingPetitionCallback();
        }

        private void EnterGameLobby(object sender, RoutedEventArgs e)
        {
            MatchmakingManager.EnterMatchmaking(currentPlayer);
        }
    }
}
