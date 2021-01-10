func @_CheckersCliente.MenuPages.PrincipalMenu.UserConfiguration$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :24 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :24 :39)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :24 :39)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :24 :54)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :24 :54)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :26 :30) // App.Current (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :26 :30) // App.Current.Windows (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :26 :30) // App.Current.Windows.OfType<Menu>() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :26 :30) // App.Current.Windows.OfType<Menu>().FirstOrDefault() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :27 :12) // Not a variable of known type: actualMenu
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :27 :12) // actualMenu.EnableNavigation() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: JugadorManager
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :28 :43) // Identifier from another assembly: DataContext
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :28 :43) // DataContext as Jugador (AsExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :28 :12) // JugadorManager.GetActualPlayer(DataContext as Jugador) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MenuPages.PrincipalMenu.DisplayRanking$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :31 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :31 :36)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :31 :36)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :31 :51)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :31 :51)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :33 :30) // App.Current (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :33 :30) // App.Current.Windows (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :33 :30) // App.Current.Windows.OfType<Menu>() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :33 :30) // App.Current.Windows.OfType<Menu>().FirstOrDefault() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :34 :12) // Not a variable of known type: actualMenu
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :34 :12) // actualMenu.EnableNavigation() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: RankingManager
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :35 :12) // RankingManager.AddRankingPetitionCallback() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MenuPages.PrincipalMenu.ShowRules$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :38 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :38 :31)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :38 :31)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :38 :46)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :38 :46)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :40 :30) // App.Current (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :40 :30) // App.Current.Windows (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :40 :30) // App.Current.Windows.OfType<Menu>() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :40 :30) // App.Current.Windows.OfType<Menu>().FirstOrDefault() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :41 :12) // Not a variable of known type: actualMenu
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :41 :12) // actualMenu.EnableNavigation() (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :42 :12) // Identifier from another assembly: NavigationService
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :42 :39) // new RulesPage() (ObjectCreationExpression)
%11 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :42 :12) // NavigationService.Navigate(new RulesPage()) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MenuPages.PrincipalMenu.ChooseGameMode$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :45 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :45 :36)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :45 :36)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :45 :51)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :45 :51)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :47 :30) // App.Current (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :47 :30) // App.Current.Windows (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :47 :30) // App.Current.Windows.OfType<Menu>() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :47 :30) // App.Current.Windows.OfType<Menu>().FirstOrDefault() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :48 :12) // Not a variable of known type: actualMenu
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :48 :12) // actualMenu.EnableNavigation() (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :49 :12) // Identifier from another assembly: NavigationService
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :49 :52) // Not a variable of known type: actualPlayer
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :49 :39) // new GameMode(actualPlayer) (ObjectCreationExpression)
%12 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\MenuPages\\PrincipalMenu.xaml.cs" :49 :12) // NavigationService.Navigate(new GameMode(actualPlayer)) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function LanguageSelect(none, none), it contains poisonous unsupported syntaxes

