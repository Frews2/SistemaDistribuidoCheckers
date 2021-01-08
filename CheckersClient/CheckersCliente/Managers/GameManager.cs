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
    public class GameManager
    {
        public Checker[][] checkersUpdatedMatrix;
        

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
                MessageBox.Show("No se ha podido conectar a la Base de datos, intentar mas tarde");
            }
        }

        public static void LeaveMatchmaking(Match game, Jugador player)
        {
            try
            {
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show("No se ha podido conectar a la Base de datos, intentar mas tarde");
            }
        }

        public static void Player1TurnResult(Checker [,]updateBoardMatrix, int matchNumber, int playerTwoCheckers, int playerOneCheckers)
        {
            Checker[][] checkersUpdatedMatrix = new Checker[updateBoardMatrix.GetLength(0)][];
            int rowNumber = 0;
            int columnNumber = 0;

            for (rowNumber = 0; rowNumber < 8; rowNumber++)
            {
                checkersUpdatedMatrix[rowNumber] = new Checker[updateBoardMatrix.GetLength(1)];
                for (columnNumber = 0; columnNumber < 8; columnNumber++)
                {

                    checkersUpdatedMatrix[rowNumber][columnNumber] = updateBoardMatrix[rowNumber, columnNumber];
                }
            }
            try
            {
                InstanceContext instanceContext = new InstanceContext(new GameManagerCallbackHandler());
                GameManagerClient server = new GameManagerClient(instanceContext);
                server.Player1Turn(checkersUpdatedMatrix, matchNumber, playerTwoCheckers, playerOneCheckers);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show("No se ha podido conectar a la Base de datos, intentar mas tarde");
            }

        }

        public static void Player2TurnResult(Checker[,] updateBoardMatrix, int matchNumber,int playerTwoCheckers, int playerOneCheckers)
        {

            try
            {
                InstanceContext instanceContext = new InstanceContext(new GameManagerCallbackHandler());
                GameManagerClient server = new GameManagerClient(instanceContext);
                Checker[][] checkersUpdatedMatrix = new Checker[updateBoardMatrix.GetLength(0)][];
                int rowNumber;
                int columnNumber;

                for (rowNumber = 0; rowNumber < 8; rowNumber++)
                {
                    checkersUpdatedMatrix[rowNumber] = new Checker[updateBoardMatrix.GetLength(1)];
                    for (columnNumber = 0; columnNumber < 8; columnNumber++)
                    {

                        checkersUpdatedMatrix[rowNumber][columnNumber] = updateBoardMatrix[rowNumber, columnNumber];
                    }
                }
                server.Player2Turn(checkersUpdatedMatrix, matchNumber, playerTwoCheckers, playerOneCheckers);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show("No se ha podido conectar a la Base de datos, intentar mas tarde");
            }
            
        }
    
        public static void EndPlayerGame(int matchNumber, int localPlayer, int playerTwoCheckers, int playerOneCheckers)
        {
            InstanceContext instanceContext = new InstanceContext(new GameManagerCallbackHandler());
            GameManagerClient server = new GameManagerClient(instanceContext);
            server.FinishPlayerGame(matchNumber, localPlayer, playerTwoCheckers, playerOneCheckers);
        }
    }
}
