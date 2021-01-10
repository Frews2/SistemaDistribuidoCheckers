func @_CheckersCliente.Windows.DialogWindowManager.ShowErrorWindow$string$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :12 :8) {
^entry (%_errorMessage : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :12 :43)
cbde.store %_errorMessage, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :12 :43)
br ^0

^0: // SimpleBlock
// Entity from another assembly: MessageBox
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :14 :28) // Not a variable of known type: errorMessage
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :14 :42) // "Error" (StringLiteralExpression)
// Entity from another assembly: MessageBoxButton
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :14 :51) // MessageBoxButton.OK (SimpleMemberAccessExpression)
// Entity from another assembly: MessageBoxImage
%4 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :14 :72) // MessageBoxImage.Error (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :14 :12) // MessageBox.Show(errorMessage, "Error", MessageBoxButton.OK, MessageBoxImage.Error) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Windows.DialogWindowManager.ShowConfirmationWindow$string$(none) -> i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :17 :8) {
^entry (%_confirmMessage : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :17 :50)
cbde.store %_confirmMessage, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :17 :50)
br ^0

^0: // BinaryBranchBlock
%1 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :19 :32) // false
%2 = cbde.alloca i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :19 :17) // confirmation
cbde.store %1, %2 : memref<i1> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :19 :17)
// Entity from another assembly: MessageBox
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :21 :58) // Not a variable of known type: confirmMessage
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :21 :74) // "Confirmación" (StringLiteralExpression)
// Entity from another assembly: MessageBoxButton
%5 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :22 :16) // MessageBoxButton.YesNo (SimpleMemberAccessExpression)
// Entity from another assembly: MessageBoxImage
%6 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :22 :40) // MessageBoxImage.Question (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :21 :42) // MessageBox.Show(confirmMessage, "Confirmación",                  MessageBoxButton.YesNo, MessageBoxImage.Question) (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :24 :16) // Not a variable of known type: userAnswer
// Entity from another assembly: MessageBoxResult
%10 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :24 :30) // MessageBoxResult.Yes (SimpleMemberAccessExpression)
%11 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :24 :16) // comparison of unknown type: userAnswer == MessageBoxResult.Yes
cond_br %11, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :24 :16)

^1: // SimpleBlock
%12 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :26 :31) // true
cbde.store %12, %2 : memref<i1> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :26 :16)
br ^2

^2: // JumpBlock
%13 = cbde.load %2 : memref<i1> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :29 :19)
return %13 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :29 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.Windows.DialogWindowManager.ShowSuccessWindow$string$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :32 :8) {
^entry (%_successMessage : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :32 :45)
cbde.store %_successMessage, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :32 :45)
br ^0

^0: // SimpleBlock
// Entity from another assembly: MessageBox
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :34 :28) // Not a variable of known type: successMessage
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :34 :44) // "Éxito" (StringLiteralExpression)
// Entity from another assembly: MessageBoxButton
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :35 :24) // MessageBoxButton.OK (SimpleMemberAccessExpression)
// Entity from another assembly: MessageBoxImage
%4 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :35 :45) // MessageBoxImage.Exclamation (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :34 :12) // MessageBox.Show(successMessage, "Éxito",                          MessageBoxButton.OK, MessageBoxImage.Exclamation) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Windows.DialogWindowManager.ShowEmptyFieldsErrorWindow$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :38 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: MessageBox
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :40 :28) // "Uno o varios campos están vacíos. Por favor ingresa los datos necesarios." (StringLiteralExpression)
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :40 :105) // "Error" (StringLiteralExpression)
// Entity from another assembly: MessageBoxButton
%2 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :41 :16) // MessageBoxButton.OK (SimpleMemberAccessExpression)
// Entity from another assembly: MessageBoxImage
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :41 :37) // MessageBoxImage.Error (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :40 :12) // MessageBox.Show("Uno o varios campos están vacíos. Por favor ingresa los datos necesarios.", "Error",                  MessageBoxButton.OK, MessageBoxImage.Error) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Windows.DialogWindowManager.ShowWrongFieldsErrorWindow$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :44 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: MessageBox
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :46 :28) // "La información en uno o varios campos es incorrecta. Por favor verifica la información." (StringLiteralExpression)
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :47 :16) // "Error" (StringLiteralExpression)
// Entity from another assembly: MessageBoxButton
%2 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :47 :25) // MessageBoxButton.OK (SimpleMemberAccessExpression)
// Entity from another assembly: MessageBoxImage
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :47 :46) // MessageBoxImage.Error (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :46 :12) // MessageBox.Show("La información en uno o varios campos es incorrecta. Por favor verifica la información.",                  "Error", MessageBoxButton.OK, MessageBoxImage.Error) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Windows.DialogWindowManager.ShowNoEnoughProjectSpaceWindow$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :50 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: MessageBox
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :52 :28) // "El proyecto ya no tiene cupo para asignar a otro Practicante." (StringLiteralExpression)
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :53 :16) // "No hay espacio disponible" (StringLiteralExpression)
// Entity from another assembly: MessageBoxButton
%2 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :53 :45) // MessageBoxButton.OK (SimpleMemberAccessExpression)
// Entity from another assembly: MessageBoxImage
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :53 :66) // MessageBoxImage.Error (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :52 :12) // MessageBox.Show("El proyecto ya no tiene cupo para asignar a otro Practicante.",                  "No hay espacio disponible", MessageBoxButton.OK, MessageBoxImage.Error) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Windows.DialogWindowManager.ShowEmptyListErrorWindow$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :56 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: MessageBox
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :58 :28) // "No se encuentra ninguna entrada registrada." (StringLiteralExpression)
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :59 :16) // "Error" (StringLiteralExpression)
// Entity from another assembly: MessageBoxButton
%2 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :59 :25) // MessageBoxButton.OK (SimpleMemberAccessExpression)
// Entity from another assembly: MessageBoxImage
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :59 :46) // MessageBoxImage.Error (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :58 :12) // MessageBox.Show("No se encuentra ninguna entrada registrada.",                  "Error", MessageBoxButton.OK, MessageBoxImage.Error) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Windows.DialogWindowManager.ShowConnectionErrorWindow$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :62 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: MessageBox
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :64 :28) // "Ocurrió un fallo al intentar conectarse a la base de datos. Intente de nuevo más tarde." (StringLiteralExpression)
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :65 :16) // "Error" (StringLiteralExpression)
// Entity from another assembly: MessageBoxButton
%2 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :65 :25) // MessageBoxButton.OK (SimpleMemberAccessExpression)
// Entity from another assembly: MessageBoxImage
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :65 :46) // MessageBoxImage.Error (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :64 :12) // MessageBox.Show("Ocurrió un fallo al intentar conectarse a la base de datos. Intente de nuevo más tarde.",                  "Error", MessageBoxButton.OK, MessageBoxImage.Error) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
