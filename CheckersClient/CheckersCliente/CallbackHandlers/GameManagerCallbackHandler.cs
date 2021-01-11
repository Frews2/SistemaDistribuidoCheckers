/*
 Date: 25/11/2020
 Author(s): Cesar Sergio Martinez Palacios
*/
using CheckersCliente.MainService;
using CheckersCliente.MenuPages;
using CheckersCliente.Properties;
using System.Linq;
using System.Windows;

namespace CheckersCliente.CallbackHandlers
{
    /// <summary>
    /// Maneja respuestas del servidor para crear y gestionar una partida de juego checkers
    /// </summary>
    public class GameManagerCallbackHandler : IGameManagerCallback
    {
        /// <summary>
        /// Maneja el resultado de un intento a entrar a una partida de juego checkers
        /// </summary>
        /// <param name="result"></param>
        /// <param name="match"></param>
        /// <param name="playerNumber"></param>
        public void GetMatchmakingResult(MatchmakingResult result, Match match, int playerNumber)
        {
            if (result == MatchmakingResult.MATCH_FOUND)
            {
                Game gameWindow = new Game(match, playerNumber);
                gameWindow.Show();
                Menu menu = App.Current.Windows.OfType<Menu>().FirstOrDefault();
                menu.ChangeLanguage();
                menu.Close();
            }
            else
            {
                if (result == MatchmakingResult.MATCH_NOT_FOUND)
                {
                    Menu menu = App.Current.Windows.OfType<Menu>().FirstOrDefault();
                    menu.EnableNavigation();
                    menu.NavigationService.Navigate(new GameStandBy());
                }
                else
                {
                    MessageBox.Show(Resources.NoMatchFoundErrorMessage);
                }
            }
        }

        /// <summary>
        /// Actualiza las posiciones de fichas en el tablero durante un juego de checkers
        /// </summary>
        /// <param name="updateBoardMatrix"></param>
        /// <param name="playerTwoCheckers"></param>
        /// <param name="playerOneCheckers"></param>
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

        /// <summary>
        /// Actualiza el numero de identificacion de una partida de juego checkers
        /// </summary>
        /// <param name="newMatchNumber"></param>
        public void UpdateMatchNumber(int newMatchNumber)
        {
            Game game = App.Current.Windows.OfType<Game>().FirstOrDefault();
            game.UpdateMatchNumber(newMatchNumber);
        }

        /// <summary>
        /// Termina el juego de checkers cuando uno de los dos jugadores gana la partida
        /// </summary>
        /// <param name="playerTwoCheckers"></param>
        /// <param name="playerOneCheckers"></param>
        public void FinishGame(int playerTwoCheckers, int playerOneCheckers)
        {
            Game game = App.Current.Windows.OfType<Game>().FirstOrDefault();
            game.FinishGame(playerTwoCheckers,playerOneCheckers);
        }

        /// <summary>
        /// Recibe un mensaje enviado por el jugador oponente durante una partida de checkers
        /// </summary>
        /// <param name="message"></param>
        /// <param name="playerNumber"></param>
        public void RecieveGameMessage(string message, int playerNumber)
        {
            Game game = App.Current.Windows.OfType<Game>().FirstOrDefault();
            string playerNumberText;

            if (playerNumber == 1)
            {
                playerNumberText = Resources.Player1 + " ";
            }
            else
            {
                playerNumberText = Resources.Player2 + " ";
            }

            game.RecieveMessage(message,playerNumberText);
            
        }

        /// <summary>
        /// Maneja el resultado de una solicitud al servidor para reportar a un jugador por mal comportamiento
        /// </summary>
        /// <param name="reportSaveResult"></param>
        public void ReportResult(ReportSaveResult reportSaveResult)
        {
            if(reportSaveResult == ReportSaveResult.SAVED_REPORT)
            {
                Windows.DialogWindowManager.ShowSuccessWindow(Resources.ReportSuccess);
                Windows.ReportWindow reportWindow = App.Current.Windows.OfType<Windows.ReportWindow>().FirstOrDefault();
                reportWindow.ReportedPlayer();
            }
            else
            {
                Windows.DialogWindowManager.ShowErrorWindow(Resources.NoConnectionMessage);
            }
        }

        /// <summary>
        /// Termina la partida de un juego de checkers cuando un jugador abandona la partida 
        /// </summary>
        public void EndAbandonedGame()
        {
            Game game = App.Current.Windows.OfType<Game>().FirstOrDefault();
            game.AbandonedGame();
        }
    }

}
