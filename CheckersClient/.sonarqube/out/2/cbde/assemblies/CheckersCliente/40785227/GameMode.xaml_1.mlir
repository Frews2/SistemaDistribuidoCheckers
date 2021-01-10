func @_CheckersCliente.MenuPages.GameMode.EnterClassicGame$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :28 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :28 :38)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :28 :38)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :28 :53)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :28 :53)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :30 :31) // Not a variable of known type: CheckersGameMode
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :30 :31) // CheckersGameMode.ClassicCheckers (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GameManager
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :31 :41) // Not a variable of known type: currentPlayer
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :31 :56) // Not a variable of known type: selectedGameMode
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :31 :12) // GameManager.EnterMatchmaking(currentPlayer, selectedGameMode) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MenuPages.GameMode.EnterSuicideGame$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :33 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :33 :38)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :33 :38)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :33 :53)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :33 :53)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :35 :31) // Not a variable of known type: CheckersGameMode
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :35 :31) // CheckersGameMode.SuicidalCheckers (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GameManager
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :36 :41) // Not a variable of known type: currentPlayer
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :36 :56) // Not a variable of known type: selectedGameMode
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :36 :12) // GameManager.EnterMatchmaking(currentPlayer, selectedGameMode) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MenuPages.GameMode.Return$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :38 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :38 :28)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :38 :28)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :38 :43)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :38 :43)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :40 :30) // App.Current (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :40 :30) // App.Current.Windows (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :40 :30) // App.Current.Windows.OfType<Menu>() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :40 :30) // App.Current.Windows.OfType<Menu>().FirstOrDefault() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :41 :12) // Not a variable of known type: actualMenu
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :41 :12) // actualMenu.EnableNavigation() (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :42 :12) // Identifier from another assembly: NavigationService
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\GameMode.xaml.cs" :42 :12) // NavigationService.GoBack() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
