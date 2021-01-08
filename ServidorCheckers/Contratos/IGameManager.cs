using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ServiceModel;

namespace Contratos
{
    [ServiceContract(CallbackContract = typeof(IGameManagerCallback))]
    public interface IGameManager
    {

        [OperationContract(IsOneWay = true)]
        void CreateMatch(Dominio.Jugador currentPlayer, CheckersGameMode gameMode);

        [OperationContract(IsOneWay = true)]
        void Player1Turn(Checker[][] updateBoardMatrix, int matchNumber, int playerTwoCheckers, int playerOneCheckers);

        [OperationContract(IsOneWay = true)]
        void Player2Turn(Checker[][] updateBoardMatrix, int matchNumber, int playerTwoCheckers, int playerOneCheckers);

        [OperationContract(IsOneWay = true)]
        void FinishPlayerGame(int matchNumber, int playerNumber,int playerTwoCheckers, int playerOneCheckers);

        [OperationContract(IsOneWay = true)]
        void SendGameMessage(int playerNumber, string message, int matchNumber);
    }

    [ServiceContract]
    public interface IGameManagerCallback
    {
        [OperationContract(IsOneWay = true)]
        void UpdateGameGUI(Checker[][] updateBoardMatrix, int playerTwoCheckers, int playerOneCheckers);

        [OperationContract(IsOneWay = true)]
        void FinishGame(int playerTwoCheckers, int playerOneCheckers);

        [OperationContract(IsOneWay = true)]
        void GetMatchmakingResult(MatchmakingResult result, Match match, int playerNumber);

        [OperationContract(IsOneWay = true)]
        void UpdateMatchNumber(int newMatchNumber);

        [OperationContract(IsOneWay = true)]
        void RecieveGameMessage(string message);
    }
}
