﻿/*
 Date: 23/12/2020
 Author(s): Ricardo Moguel Sanchez
*/
using CheckersCliente.MainService;
using CheckersCliente.Managers;
using CheckersCliente.Windows;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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

        public GameMode(Jugador player)
        {
            InitializeComponent();
            currentPlayer = player;
        }

        private void EnterClassicGame(object sender, RoutedEventArgs e)
        {
            MatchmakingManager.EnterMatchmaking(currentPlayer, "classic");
        }

        private void EnterCanadianGame(object sender, RoutedEventArgs e)
        {
            MatchmakingManager.EnterMatchmaking(currentPlayer, "canadian");
        }

        private void EnterItalianGame(object sender, RoutedEventArgs e)
        {
            MatchmakingManager.EnterMatchmaking(currentPlayer, "italian");
        }

        private void EnterSuicideGame(object sender, RoutedEventArgs e)
        {
            MatchmakingManager.EnterMatchmaking(currentPlayer, "suicide");
        }
        private void Return(object sender, System.Windows.RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}