func @_CheckersCliente.MenuPages.RankingList.Return$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\RankingList.xaml.cs" :27 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\RankingList.xaml.cs" :27 :28)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\RankingList.xaml.cs" :27 :28)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\RankingList.xaml.cs" :27 :43)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\RankingList.xaml.cs" :27 :43)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\RankingList.xaml.cs" :29 :12) // Identifier from another assembly: NavigationService
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\RankingList.xaml.cs" :29 :12) // NavigationService.GoBack() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
