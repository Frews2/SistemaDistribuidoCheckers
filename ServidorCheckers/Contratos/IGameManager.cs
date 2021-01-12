using System.ServiceModel;

namespace Contratos
{
    /// <summary>
    /// Interface para servicios con respecto a jugar una partida de checkers
    /// </summary>
    [ServiceContract(CallbackContract = typeof(IGameManagerCallback))]
    public interface IGameManager
    {
        /// <summary>
        /// Contrato para crear una partida de checkers
        /// </summary>
        /// <param name="currentPlayer"></param>
        /// <param name="gameMode"></param>
        [OperationContract(IsOneWay = true)]
        void CreateMatch(Dominio.Jugador currentPlayer, CheckersGameMode gameMode);

        /// <summary>
        /// Contrato para actualizar el tablero despues del turno del jugador 1
        /// </summary>
        /// <param name="updateBoardMatrix"></param>
        /// <param name="matchNumber"></param>
        /// <param name="playerTwoCheckers"></param>
        /// <param name="playerOneCheckers"></param>
        [OperationContract(IsOneWay = true)]
        void Player1Turn(Checker[][] updateBoardMatrix, int matchNumber, int playerTwoCheckers, int playerOneCheckers);

        /// <summary>
        /// Contrato para actualizar el tablero despues del turno del jugador 2
        /// </summary>
        /// <param name="updateBoardMatrix"></param>
        /// <param name="matchNumber"></param>
        /// <param name="playerTwoCheckers"></param>
        /// <param name="playerOneCheckers"></param>
        [OperationContract(IsOneWay = true)]
        void Player2Turn(Checker[][] updateBoardMatrix, int matchNumber, int playerTwoCheckers, int playerOneCheckers);

        /// <summary>
        /// Contrato para terminar una partida de un juego de checkers
        /// </summary>
        /// <param name="matchNumber"></param>
        /// <param name="playerNumber"></param>
        /// <param name="playerTwoCheckers"></param>
        /// <param name="playerOneCheckers"></param>
        [OperationContract(IsOneWay = true)]
        void FinishPlayerGame(int matchNumber, int playerNumber,int playerTwoCheckers, int playerOneCheckers);

        /// <summary>
        /// Contrato para mandar un mensaje al oponente durante un partido 
        /// </summary>
        /// <param name="playerNumber"></param>
        /// <param name="message"></param>
        /// <param name="matchNumber"></param>
        [OperationContract(IsOneWay = true)]
        void SendGameMessage(int playerNumber, string message, int matchNumber);

        /// <summary>
        /// Contrato para crear un reporte de acuso contra el oponente durante un partido
        /// </summary>
        /// <param name="playerNumberReporting"></param>
        /// <param name="matchNumber"></param>
        /// <param name="reportText"></param>
        [OperationContract(IsOneWay = true)]
        void ReportPlayer(int playerNumberReporting, int matchNumber, string reportText);

        /// <summary>
        /// Contrato para salir de una partida de un juego de checkers
        /// </summary>
        /// <param name="matchNumber"></param>
        /// <param name="playerNumber"></param>
        [OperationContract(IsOneWay = true)]
        void LeaveMatch(int matchNumber, int playerNumber);
    }

    /// <summary>
    /// Interface para servicios de callback handlers para <c>Match</c> que debe implementar el cliente
    /// </summary>
    [ServiceContract]
    public interface IGameManagerCallback
    {
        /// <summary>
        /// Contrato para obtener el resultado de actualizar el tablero de checkers despues de un turno
        /// </summary>
        /// <param name="updateBoardMatrix"></param>
        /// <param name="playerTwoCheckers"></param>
        /// <param name="playerOneCheckers"></param>
        [OperationContract(IsOneWay = true)]
        void UpdateGameGUI(Checker[][] updateBoardMatrix, int playerTwoCheckers, int playerOneCheckers);

        /// <summary>
        /// Contrato para obtener el resultado de intentar terminar una partida de checkers
        /// </summary>
        /// <param name="playerTwoCheckers"></param>
        /// <param name="playerOneCheckers"></param>
        [OperationContract(IsOneWay = true)]
        void FinishGame(int playerTwoCheckers, int playerOneCheckers);

        /// <summary>
        /// Contrato para obtener el resultado de intentar entrar a una partida de checkers
        /// </summary>
        /// <param name="result"></param>
        /// <param name="match"></param>
        /// <param name="playerNumber"></param>
        [OperationContract(IsOneWay = true)]
        void GetMatchmakingResult(MatchmakingResult result, Match match, int playerNumber);

        /// <summary>
        /// Contrato para obtener el resultado de actualizar el numero identificador de una partida
        /// </summary>
        /// <param name="newMatchNumber"></param>
        [OperationContract(IsOneWay = true)]
        void UpdateMatchNumber(int newMatchNumber);

        /// <summary>
        /// Contrato para obtener un mensaje del oponente durante una partida
        /// </summary>
        /// <param name="message"></param>
        /// <param name="playerNumber"></param>
        [OperationContract(IsOneWay = true)]
        void RecieveGameMessage(string message,int playerNumber);

        /// <summary>
        /// Contrato para obtener el resultado de crear un reporte de acuso contra un oponente durante una partida
        /// </summary>
        /// <param name="reportSaveResult"></param>
        [OperationContract(IsOneWay = true)]
        void ReportResult(ReportSaveResult reportSaveResult);

        /// <summary>
        /// Contrato para obtener el resultado de terminar una partido por abandono de un jugador
        /// </summary>
        [OperationContract(IsOneWay = true)]
        void EndAbandonedGame();
    }
}
