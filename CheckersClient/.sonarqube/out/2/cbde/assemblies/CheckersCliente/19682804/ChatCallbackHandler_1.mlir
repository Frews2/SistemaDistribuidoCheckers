func @_CheckersCliente.CallbackHandlers.ChatCallbackHandler.GetSentMessageResult$CheckersCliente.MainService.SendMessageResult$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\ChatCallbackHandler.cs" :12 :8) {
^entry (%_result : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\ChatCallbackHandler.cs" :12 :41)
cbde.store %_result, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\ChatCallbackHandler.cs" :12 :41)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\ChatCallbackHandler.cs" :14 :18) // new System.NotImplementedException() (ObjectCreationExpression)
cbde.throw %1 :  none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\ChatCallbackHandler.cs" :14 :12)

^1: // ExitBlock
return

}
func @_CheckersCliente.CallbackHandlers.ChatCallbackHandler.ReceiveText$string.string$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\ChatCallbackHandler.cs" :17 :8) {
^entry (%_source : none, %_message : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\ChatCallbackHandler.cs" :17 :32)
cbde.store %_source, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\ChatCallbackHandler.cs" :17 :32)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\ChatCallbackHandler.cs" :17 :47)
cbde.store %_message, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\ChatCallbackHandler.cs" :17 :47)
br ^0

^0: // ExitBlock
return

}
