using CheckersCliente.MainService;
using CheckersCliente.Managers;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace CheckersCliente.CallbackHandlers
{
    class MatchmakingHandler : IMatchmakingManagerCallback
    {
        public void GetMatchmakingResult(MatchmakingResult result)
        {
            if (result == MatchmakingResult.MATCH_FOUND)
            {
                Menu matchedGame = App.Current.Windows.OfType<Menu>().FirstOrDefault();
                ChatManager.AddMessageCallback();

            }
            else if (result == MatchmakingResult.MATCH_NOT_FOUND)
            {
                MessageBox.Show("Espere mientras se encuentra una partida");
            }
            else
            {
                MessageBox.Show("Error. No se logro buscar partida. Intente de nuevo");
            }
        }

        public void GetUsersOnline(string[] connectedUsers)
        {
            Game gameWindow = App.Current.Windows.OfType<Game>().FirstOrDefault();

            ObservableCollection<string> usersLoggedIn = new ObservableCollection<string>(connectedUsers);

            gameWindow.listUsersLoggedIn.ItemsSource = usersLoggedIn;
        }
    }
}
