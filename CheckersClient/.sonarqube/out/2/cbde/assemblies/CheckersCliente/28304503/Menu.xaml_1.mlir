// Skipping function lookLanguage(i32), it contains poisonous unsupported syntaxes

func @_CheckersCliente.Menu.ChangeLanguage$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :47 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :49 :29) // true
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Menu.WindowClose$object.System.ComponentModel.CancelEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :52 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :52 :33)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :52 :33)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :52 :48)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :52 :48)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :54 :16) // Not a variable of known type: changeLanguage
cond_br %2, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :54 :16)

^1: // SimpleBlock
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :56 :16) // Not a variable of known type: e
%4 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :56 :16) // e.Cancel (SimpleMemberAccessExpression)
%5 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :56 :27) // false
br ^3

^2: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Windows
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :60 :29) // Windows.DialogWindowManager (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :60 :80) // Properties.Resources (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :60 :80) // Properties.Resources.LogOutQuestion (SimpleMemberAccessExpression)
%9 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :60 :29) // Windows.DialogWindowManager.ShowConfirmationWindow(Properties.Resources.LogOutQuestion) (InvocationExpression)
%10 = cbde.alloca i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :60 :21) // close
cbde.store %9, %10 : memref<i1> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :60 :21)
%11 = cbde.load %10 : memref<i1> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :61 :20)
cond_br %11, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :61 :20)

^4: // SimpleBlock
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :63 :20) // Not a variable of known type: e
%13 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :63 :20) // e.Cancel (SimpleMemberAccessExpression)
%14 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :63 :31) // false
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: JugadorManager
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :64 :46) // Not a variable of known type: playerNickname
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :64 :20) // JugadorManager.EndSession(playerNickname) (InvocationExpression)
br ^3

^5: // SimpleBlock
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :68 :20) // Not a variable of known type: e
%18 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :68 :20) // e.Cancel (SimpleMemberAccessExpression)
%19 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :68 :31) // true
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.Menu.EnableNavigation$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :73 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :75 :23) // true
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Menu.NavigationWindowNavigating$object.System.Windows.Navigation.NavigatingCancelEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :79 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :79 :48)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :79 :48)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :79 :63)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :79 :63)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :81 :17) // Not a variable of known type: navigate
%3 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :81 :16) // !navigate (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :81 :16)

^1: // SimpleBlock
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :83 :16) // Not a variable of known type: e
%5 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :83 :16) // e.Cancel (SimpleMemberAccessExpression)
%6 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :83 :27) // true
br ^3

^2: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :87 :16) // Not a variable of known type: e
%8 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :87 :16) // e.Cancel (SimpleMemberAccessExpression)
%9 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :87 :27) // false
%10 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Menu.xaml.cs" :88 :27) // false
br ^3

^3: // ExitBlock
return

}
