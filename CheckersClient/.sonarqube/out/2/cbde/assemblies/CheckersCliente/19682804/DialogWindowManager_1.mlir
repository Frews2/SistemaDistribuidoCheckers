func @_CheckersCliente.Windows.DialogWindowManager.ShowErrorWindow$string$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :19 :8) {
^entry (%_errorMessage : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :19 :43)
cbde.store %_errorMessage, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :19 :43)
br ^0

^0: // SimpleBlock
// Entity from another assembly: MessageBox
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :21 :28) // Not a variable of known type: errorMessage
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :21 :42) // "Error" (StringLiteralExpression)
// Entity from another assembly: MessageBoxButton
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :21 :51) // MessageBoxButton.OK (SimpleMemberAccessExpression)
// Entity from another assembly: MessageBoxImage
%4 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :21 :72) // MessageBoxImage.Error (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :21 :12) // MessageBox.Show(errorMessage, "Error", MessageBoxButton.OK, MessageBoxImage.Error) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Windows.DialogWindowManager.ShowConfirmationWindow$string$(none) -> i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :24 :8) {
^entry (%_confirmMessage : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :24 :50)
cbde.store %_confirmMessage, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :24 :50)
br ^0

^0: // BinaryBranchBlock
%1 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :26 :32) // false
%2 = cbde.alloca i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :26 :17) // confirmation
cbde.store %1, %2 : memref<i1> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :26 :17)
// Entity from another assembly: MessageBox
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :28 :58) // Not a variable of known type: confirmMessage
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :28 :74) // "Confirmación" (StringLiteralExpression)
// Entity from another assembly: MessageBoxButton
%5 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :29 :16) // MessageBoxButton.YesNo (SimpleMemberAccessExpression)
// Entity from another assembly: MessageBoxImage
%6 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :29 :40) // MessageBoxImage.Question (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :28 :42) // MessageBox.Show(confirmMessage, "Confirmación",                  MessageBoxButton.YesNo, MessageBoxImage.Question) (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :31 :16) // Not a variable of known type: userAnswer
// Entity from another assembly: MessageBoxResult
%10 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :31 :30) // MessageBoxResult.Yes (SimpleMemberAccessExpression)
%11 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :31 :16) // comparison of unknown type: userAnswer == MessageBoxResult.Yes
cond_br %11, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :31 :16)

^1: // SimpleBlock
%12 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :33 :31) // true
cbde.store %12, %2 : memref<i1> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :33 :16)
br ^2

^2: // JumpBlock
%13 = cbde.load %2 : memref<i1> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :36 :19)
return %13 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :36 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.Windows.DialogWindowManager.ShowSuccessWindow$string$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :39 :8) {
^entry (%_successMessage : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :39 :45)
cbde.store %_successMessage, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :39 :45)
br ^0

^0: // SimpleBlock
// Entity from another assembly: MessageBox
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :41 :28) // Not a variable of known type: successMessage
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :41 :44) // "Éxito" (StringLiteralExpression)
// Entity from another assembly: MessageBoxButton
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :42 :24) // MessageBoxButton.OK (SimpleMemberAccessExpression)
// Entity from another assembly: MessageBoxImage
%4 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :42 :45) // MessageBoxImage.Exclamation (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :41 :12) // MessageBox.Show(successMessage, "Éxito",                          MessageBoxButton.OK, MessageBoxImage.Exclamation) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Windows.DialogWindowManager.ShowEmptyFieldsErrorWindow$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :45 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: MessageBox
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :47 :28) // "Uno o varios campos están vacíos. Por favor ingresa los datos necesarios." (StringLiteralExpression)
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :47 :105) // "Error" (StringLiteralExpression)
// Entity from another assembly: MessageBoxButton
%2 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :48 :16) // MessageBoxButton.OK (SimpleMemberAccessExpression)
// Entity from another assembly: MessageBoxImage
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :48 :37) // MessageBoxImage.Error (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :47 :12) // MessageBox.Show("Uno o varios campos están vacíos. Por favor ingresa los datos necesarios.", "Error",                  MessageBoxButton.OK, MessageBoxImage.Error) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Windows.DialogWindowManager.ShowWrongFieldsErrorWindow$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :51 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: MessageBox
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :53 :28) // "La información en uno o varios campos es incorrecta. Por favor verifica la información." (StringLiteralExpression)
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :54 :16) // "Error" (StringLiteralExpression)
// Entity from another assembly: MessageBoxButton
%2 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :54 :25) // MessageBoxButton.OK (SimpleMemberAccessExpression)
// Entity from another assembly: MessageBoxImage
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :54 :46) // MessageBoxImage.Error (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :53 :12) // MessageBox.Show("La información en uno o varios campos es incorrecta. Por favor verifica la información.",                  "Error", MessageBoxButton.OK, MessageBoxImage.Error) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Windows.DialogWindowManager.ShowNoEnoughProjectSpaceWindow$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :57 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: MessageBox
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :59 :28) // "El proyecto ya no tiene cupo para asignar a otro Practicante." (StringLiteralExpression)
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :60 :16) // "No hay espacio disponible" (StringLiteralExpression)
// Entity from another assembly: MessageBoxButton
%2 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :60 :45) // MessageBoxButton.OK (SimpleMemberAccessExpression)
// Entity from another assembly: MessageBoxImage
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :60 :66) // MessageBoxImage.Error (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :59 :12) // MessageBox.Show("El proyecto ya no tiene cupo para asignar a otro Practicante.",                  "No hay espacio disponible", MessageBoxButton.OK, MessageBoxImage.Error) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Windows.DialogWindowManager.ShowEmptyListErrorWindow$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :63 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: MessageBox
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :65 :28) // "No se encuentra ninguna entrada registrada." (StringLiteralExpression)
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :66 :16) // "Error" (StringLiteralExpression)
// Entity from another assembly: MessageBoxButton
%2 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :66 :25) // MessageBoxButton.OK (SimpleMemberAccessExpression)
// Entity from another assembly: MessageBoxImage
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :66 :46) // MessageBoxImage.Error (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :65 :12) // MessageBox.Show("No se encuentra ninguna entrada registrada.",                  "Error", MessageBoxButton.OK, MessageBoxImage.Error) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Windows.DialogWindowManager.ShowConnectionErrorWindow$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :69 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: MessageBox
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :71 :28) // "Ocurrió un fallo al intentar conectarse a la base de datos. Intente de nuevo más tarde." (StringLiteralExpression)
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :72 :16) // "Error" (StringLiteralExpression)
// Entity from another assembly: MessageBoxButton
%2 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :72 :25) // MessageBoxButton.OK (SimpleMemberAccessExpression)
// Entity from another assembly: MessageBoxImage
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :72 :46) // MessageBoxImage.Error (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\DialogWindowManager.cs" :71 :12) // MessageBox.Show("Ocurrió un fallo al intentar conectarse a la base de datos. Intente de nuevo más tarde.",                  "Error", MessageBoxButton.OK, MessageBoxImage.Error) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
