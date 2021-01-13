func @_CheckersCliente.LogIn.EnableNavigation$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogIn.xaml.cs" :22 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogIn.xaml.cs" :24 :23) // true
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.LogIn.NavigationWindowNavigating$object.System.Windows.Navigation.NavigatingCancelEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogIn.xaml.cs" :27 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogIn.xaml.cs" :27 :48)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogIn.xaml.cs" :27 :48)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogIn.xaml.cs" :27 :63)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogIn.xaml.cs" :27 :63)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogIn.xaml.cs" :29 :17) // Not a variable of known type: navigate
%3 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogIn.xaml.cs" :29 :16) // !navigate (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogIn.xaml.cs" :29 :16)

^1: // SimpleBlock
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogIn.xaml.cs" :31 :16) // Not a variable of known type: e
%5 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogIn.xaml.cs" :31 :16) // e.Cancel (SimpleMemberAccessExpression)
%6 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogIn.xaml.cs" :31 :27) // true
br ^3

^2: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogIn.xaml.cs" :35 :16) // Not a variable of known type: e
%8 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogIn.xaml.cs" :35 :16) // e.Cancel (SimpleMemberAccessExpression)
%9 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogIn.xaml.cs" :35 :27) // false
%10 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogIn.xaml.cs" :36 :27) // false
br ^3

^3: // ExitBlock
return

}
