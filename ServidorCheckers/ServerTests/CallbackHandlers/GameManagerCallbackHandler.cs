/*
 Date: 02/01/2021
 Author(s): Ricardo Moguel Sanchez
*/
using Contratos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServerTests.CallbackHandlers
{
    class GameManagerCallbackHandler : IGameManagerCallback
    {
        public int playerOneCheckers;
        public int playerTwoCheckers;
        public MatchmakingResult matchmakingResult;
        public string receivedMessage;
        public ReportSaveResult reportSaveResult;
        public int newMatchNumber;
        public Checker[][] updateBoardMatrix;

        public void EndAbandonedGame()
        {
            throw new NotImplementedException();
        }

        public void FinishGame(int playerTwoCheckers, int playerOneCheckers)
        {
            this.playerOneCheckers = playerOneCheckers;
            this.playerTwoCheckers = playerTwoCheckers;
        }

        public void GetMatchmakingResult(MatchmakingResult result, Match match, int playerNumber)
        {
            matchmakingResult = result;
        }

        public void RecieveGameMessage(string message, int playerNumber)
        {
            receivedMessage = message;
        }

        public void ReportResult(ReportSaveResult reportSaveResult)
        {
            this.reportSaveResult = reportSaveResult;
        }

        public void UpdateGameGUI(Checker[][] updateBoardMatrix, int playerTwoCheckers, int playerOneCheckers)
        {
            this.updateBoardMatrix = updateBoardMatrix;
        }

        public void UpdateMatchNumber(int newMatchNumber)
        {
            this.newMatchNumber = newMatchNumber;
        }
    }
}
