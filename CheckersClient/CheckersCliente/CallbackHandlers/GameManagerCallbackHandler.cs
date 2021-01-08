/*
 Date: 25/11/2020
 Author(s): Cesar Sergio Martinez Palacios
*/
using CheckersCliente.MainService;
using CheckersCliente.MenuPages;
using System.Linq;
using System.Windows;

namespace CheckersCliente.CallbackHandlers
{
    public class GameManagerCallbackHandler : IGameManagerCallback
    {

        public void GetMatchmakingResult(MatchmakingResult result, Match newMatch, int playerNumber)
        {
            if (result == MatchmakingResult.MATCH_FOUND)
            {
                Game gameWindow = new Game(newMatch, playerNumber);
                gameWindow.Show();
                Menu menu = App.Current.Windows.OfType<Menu>().FirstOrDefault();
                menu.Close();
            }
            else
            {
                if (result == MatchmakingResult.MATCH_NOT_FOUND)
                {
                    Menu menu = App.Current.Windows.OfType<Menu>().FirstOrDefault();
                    menu.NavigationService.Navigate(new GameStandBy());
                }
                else
                {
                    MessageBox.Show("Error. No se logro buscar partida. Intente de nuevo");
                }
            }
        }

        public void UpdateGameGUI(Checker[][] updateBoardMatrix, int playerTwoCheckers, int playerOneCheckers)
        {
            Game game = App.Current.Windows.OfType<Game>().FirstOrDefault();
            Checker[,] newChekcersPosition = new Checker[8,8];

            int rowNumber;
            int columnNumber;

            for (rowNumber = 0; rowNumber<8;rowNumber++)
            {
                for (columnNumber = 0; columnNumber<8; columnNumber++)
                {
                    newChekcersPosition[rowNumber, columnNumber] = updateBoardMatrix[rowNumber][columnNumber];
                }
            }
            game.UpdateCheckersGuiPosition(newChekcersPosition);
            game.UpdateCheckersCount(playerTwoCheckers,playerOneCheckers);
            game.EndSecondPlayerTurn();
        }

        public void UpdateMatchNumber(int newMatchNumber)
        {
            Game game = App.Current.Windows.OfType<Game>().FirstOrDefault();
            game.UpdateMatchNumber(newMatchNumber);
        }

        public void FinishGame(int playerTwoCheckers, int playerOneCheckers)
        {
            Game game = App.Current.Windows.OfType<Game>().FirstOrDefault();
            game.FinishGame(playerTwoCheckers,playerOneCheckers);
        }

        public void RecieveGameMessage(string message)
        {
            Game game = App.Current.Windows.OfType<Game>().FirstOrDefault();
            
        }
    }

}
