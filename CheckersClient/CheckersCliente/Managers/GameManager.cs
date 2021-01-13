/*
 Date: 30/12/2020
 Author(s): Cesar Sergio Martinez Palacios
*/

using CheckersCliente.CallbackHandlers;
using CheckersCliente.MainService;
using System.ServiceModel;
using System.Windows;

namespace CheckersCliente.Managers
{
    /// <summary>
    /// Crea un cliente para crear solicitudes al servidor con respecto a servicios de partidas de juego checkers
    /// </summary>
    public static class GameManager
    {

        /// <summary>
        /// Crea una solicitud para que un <c>Jugador</c> se una a una partida de juego checkers
        /// </summary>
        /// <param name="player"></param>
        /// <param name="gameMode"></param>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo EndpointNotFoundException
        /// </exception>
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

        /// <summary>
        /// Crea una solicitud para que el <c>Jugador</c> cliente salga de una partida de juego checkers
        /// </summary>
        /// <param name="matchNumber"></param>
        /// <param name="playerNumberLeaving"></param>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo EndpointNotFoundException
        /// </exception>
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

        /// <summary>
        /// Crea una solicitud al servidor para actualiza el tablero de la partida
        /// despues de una accion por el jugador 1 de la partida
        /// </summary>
        /// <param name="updateBoardMatrix"></param>
        /// <param name="matchNumber"></param>
        /// <param name="playerTwoCheckers"></param>
        /// <param name="playerOneCheckers"></param>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo EndpointNotFoundException
        /// </exception>
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

        /// <summary>
        /// Crea una solicitud al servidor para actualiza el tablero de la partida
        /// despues de una accion por el jugador 2 de la partida
        /// </summary>
        /// <param name="updateBoardMatrix"></param>
        /// <param name="matchNumber"></param>
        /// <param name="playerTwoCheckers"></param>
        /// <param name="playerOneCheckers"></param>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo EndpointNotFoundException
        /// </exception>
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

        /// <summary>
        /// Crea una solicitud al servidor para terminar la partida despues de un juego exitoso de checkers
        /// </summary>
        /// <param name="matchNumber"></param>
        /// <param name="localPlayer"></param>
        /// <param name="playerTwoCheckers"></param>
        /// <param name="playerOneCheckers"></param>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo EndpointNotFoundException
        /// </exception>
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

        /// <summary>
        /// Crea una solicitud al servidor para enviar un mensaje del jugador local a su oponente
        /// </summary>
        /// <param name="matchNumber"></param>
        /// <param name="localPlayer"></param>
        /// <param name="message"></param>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo EndpointNotFoundException
        /// </exception>
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

        /// <summary>
        /// Crea una solicitud al servidor para crear un <c>Reporte</c> para acusar al oponente por mal comportamiento
        /// </summary>
        /// <param name="playerReporting"></param>
        /// <param name="matchNumber"></param>
        /// <param name="reportText"></param>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo EndpointNotFoundException
        /// </exception>
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
