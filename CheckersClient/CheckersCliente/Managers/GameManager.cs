/*
 Date: 25/11/2020
 Author(s): Ricardo Moguel Sanchez
*/

using CheckersCliente.CallbackHandlers;
using CheckersCliente.MainService;
using System.ServiceModel;
using System.Windows;

namespace CheckersCliente.Managers
{
    public static class GameManager
    {


        public static void EnterMatchmaking(Jugador player, CheckersGameMode gameMode)
        {
            try
            {
                InstanceContext instanceContext = new InstanceContext(new GameManagerCallbackHandler());
                GameManagerClient server = new GameManagerClient(instanceContext);
                server.CreateMatch(player, gameMode);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Resources.NoConnectionMessage);
            }
        }

        public static void LeaveMatchmaking(int matchNumber, int playerNumberLeaving)
        {
            try
            {
                InstanceContext instanceContext = new InstanceContext(new GameManagerCallbackHandler());
                GameManagerClient server = new GameManagerClient(instanceContext);
                server.LeaveMatch(matchNumber,playerNumberLeaving);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Resources.NoConnectionMessage);
            }
        }

        public static void Player1TurnResult(Checker [,]updateBoardMatrix, int matchNumber, int playerTwoCheckers, int playerOneCheckers)
        {
            Checker[][] checkersNewMatrix = new Checker[updateBoardMatrix.GetLength(0)][];
            int rowNumber = 0;
            int columnNumber = 0;

            for (rowNumber = 0; rowNumber < 8; rowNumber++)
            {
                checkersNewMatrix[rowNumber] = new Checker[updateBoardMatrix.GetLength(1)];
                for (columnNumber = 0; columnNumber < 8; columnNumber++)
                {

                    checkersNewMatrix[rowNumber][columnNumber] = updateBoardMatrix[rowNumber, columnNumber];
                }
            }
            try
            {
                InstanceContext instanceContext = new InstanceContext(new GameManagerCallbackHandler());
                GameManagerClient server = new GameManagerClient(instanceContext);
                server.Player1Turn(checkersNewMatrix, matchNumber, playerTwoCheckers, playerOneCheckers);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Resources.NoConnectionMessage);
            }

        }

        public static void Player2TurnResult(Checker[,] updateBoardMatrix, int matchNumber,int playerTwoCheckers, int playerOneCheckers)
        {

            try
            {
                InstanceContext instanceContext = new InstanceContext(new GameManagerCallbackHandler());
                GameManagerClient server = new GameManagerClient(instanceContext);
                Checker[][] checkersNewMatrix = new Checker[updateBoardMatrix.GetLength(0)][];
                int rowNumber;
                int columnNumber;

                for (rowNumber = 0; rowNumber < 8; rowNumber++)
                {
                    checkersNewMatrix[rowNumber] = new Checker[updateBoardMatrix.GetLength(1)];
                    for (columnNumber = 0; columnNumber < 8; columnNumber++)
                    {

                        checkersNewMatrix[rowNumber][columnNumber] = updateBoardMatrix[rowNumber, columnNumber];
                    }
                }
                server.Player2Turn(checkersNewMatrix, matchNumber, playerTwoCheckers, playerOneCheckers);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Resources.NoConnectionMessage);
            }
            
        }
    
        public static void EndPlayerGame(int matchNumber, int localPlayer, int playerTwoCheckers, int playerOneCheckers)
        {
            InstanceContext instanceContext = new InstanceContext(new GameManagerCallbackHandler());
            GameManagerClient server = new GameManagerClient(instanceContext);
            try
            {
                server.FinishPlayerGame(matchNumber, localPlayer, playerTwoCheckers, playerOneCheckers);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Resources.NoConnectionMessage);
            }
        }

        public static void SendMessage(int matchNumber, int localPlayer, string message)
        {
            InstanceContext instanceContext = new InstanceContext(new GameManagerCallbackHandler());
            GameManagerClient server = new GameManagerClient(instanceContext);
            try
            {
                server.SendGameMessage(localPlayer, message, matchNumber);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Resources.NoConnectionMessage);
            }
        }

        public static void ReportPlayer(int playerReporting, int matchNumber, string reportText)
        {
            InstanceContext instanceContext = new InstanceContext(new GameManagerCallbackHandler());
            GameManagerClient server = new GameManagerClient(instanceContext);
            try
            {
                server.ReportPlayer(playerReporting, matchNumber, reportText);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Resources.NoConnectionMessage);
            }
        }
    }
}
