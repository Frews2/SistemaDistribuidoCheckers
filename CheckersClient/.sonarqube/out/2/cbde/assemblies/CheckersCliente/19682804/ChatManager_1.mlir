func @_CheckersCliente.Managers.ChatManager.SendMessage$string.string$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\ChatManager.cs" :16 :8) {
^entry (%_destination : none, %_message : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\ChatManager.cs" :16 :39)
cbde.store %_destination, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\ChatManager.cs" :16 :39)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\ChatManager.cs" :16 :59)
cbde.store %_message, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\ChatManager.cs" :16 :59)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\ChatManager.cs" :18 :12) // Not a variable of known type: server
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\ChatManager.cs" :18 :28) // Not a variable of known type: destination
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\ChatManager.cs" :18 :41) // Not a variable of known type: message
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\ChatManager.cs" :18 :12) // server.SendText(destination, message) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Managers.ChatManager.AddMessageCallback$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\ChatManager.cs" :21 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\ChatManager.cs" :23 :12) // Not a variable of known type: server
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Managers\\ChatManager.cs" :23 :12) // server.GetChatCallback() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
