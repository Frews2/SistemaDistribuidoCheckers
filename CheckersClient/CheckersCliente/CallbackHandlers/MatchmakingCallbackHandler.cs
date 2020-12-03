﻿/*
 Date: 25/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using CheckersCliente.MainService;
using CheckersCliente.MenuPages;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;

namespace CheckersCliente.CallbackHandlers
{
    class MatchmakingCallbackHandler : IMatchmakingManagerCallback
    {
        public void GetMatchmakingResult(MatchmakingResult result)
        {
            if (result == MatchmakingResult.MATCH_FOUND)
            {
                Game gameWindow = new Game();
                gameWindow.Show();
                Menu menu = App.Current.Windows.OfType<Menu>().FirstOrDefault();
                menu.Close();

            }
            else if (result == MatchmakingResult.MATCH_NOT_FOUND)
            {
                // MessageBox.Show("Espere mientras se encuentra una partida");
                Game gameWindow = new Game();
                gameWindow.Show();
                Menu menu = App.Current.Windows.OfType<Menu>().FirstOrDefault();
                menu.Close();
                
            }
            else
            {
                MessageBox.Show("Error. No se logro buscar partida. Intente de nuevo");
            }
        }

        public void GetUsersOnline(string[] connectedUsers)
        {
            GameChat gameWindow = new GameChat();

            ObservableCollection<string> usersLoggedIn = new ObservableCollection<string>(connectedUsers);

            gameWindow.listUsersLoggedIn.ItemsSource = usersLoggedIn;
        }
    }
}
