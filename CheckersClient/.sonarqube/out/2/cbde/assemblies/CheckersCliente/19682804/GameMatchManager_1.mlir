// Skipping function EnterMatchmaking(none, none), it contains poisonous unsupported syntaxes

// Skipping function LeaveMatchmaking(none, none), it contains poisonous unsupported syntaxes

// Skipping function Player1TurnResult(none, i32, i32, i32), it contains poisonous unsupported syntaxes

// Skipping function Player2TurnResult(none, i32, i32, i32), it contains poisonous unsupported syntaxes

func @_CheckersCliente.Managers.GameMatchManager.EndPlayerGame$int.int.int.int$(i32, i32, i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\GameMatchManager.cs" :99 :8) {
^entry (%_matchNumber : i32, %_localPlayer : i32, %_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\GameMatchManager.cs" :99 :41)
cbde.store %_matchNumber, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\GameMatchManager.cs" :99 :41)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\GameMatchManager.cs" :99 :58)
cbde.store %_localPlayer, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\GameMatchManager.cs" :99 :58)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\GameMatchManager.cs" :99 :75)
cbde.store %_playerTwoCheckers, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\GameMatchManager.cs" :99 :75)
%3 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\GameMatchManager.cs" :99 :98)
cbde.store %_playerOneCheckers, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\GameMatchManager.cs" :99 :98)
br ^0

^0: // SimpleBlock
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\GameMatchManager.cs" :101 :66) // new GameMatchManagerCallbackHandler() (ObjectCreationExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\GameMatchManager.cs" :101 :46) // new InstanceContext(new GameMatchManagerCallbackHandler()) (ObjectCreationExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\GameMatchManager.cs" :102 :71) // Not a variable of known type: instanceContext
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\GameMatchManager.cs" :102 :44) // new GameMatchManagerClient(instanceContext) (ObjectCreationExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\GameMatchManager.cs" :103 :12) // Not a variable of known type: server
%11 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\GameMatchManager.cs" :103 :36)
%12 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\GameMatchManager.cs" :103 :49)
%13 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\GameMatchManager.cs" :103 :62)
%14 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\GameMatchManager.cs" :103 :81)
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\GameMatchManager.cs" :103 :12) // server.FinishPlayerGame(matchNumber, localPlayer, playerTwoCheckers, playerOneCheckers) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
