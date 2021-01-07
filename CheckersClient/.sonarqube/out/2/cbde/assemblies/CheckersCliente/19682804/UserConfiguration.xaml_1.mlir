func @_CheckersCliente.MenuPages.UserConfiguration.CancelClick$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\UserConfiguration.xaml.cs" :45 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\UserConfiguration.xaml.cs" :45 :33)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\UserConfiguration.xaml.cs" :45 :33)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\UserConfiguration.xaml.cs" :45 :48)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\UserConfiguration.xaml.cs" :45 :48)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\UserConfiguration.xaml.cs" :47 :12) // Identifier from another assembly: NavigationService
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\UserConfiguration.xaml.cs" :47 :12) // NavigationService.GoBack() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
