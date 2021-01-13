func @_CheckersCliente.AdminPages.AdminMenu.DisplayReports$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\AdminMenu.xaml.cs" :21 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\AdminMenu.xaml.cs" :21 :36)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\AdminMenu.xaml.cs" :21 :36)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\AdminMenu.xaml.cs" :21 :51)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\AdminMenu.xaml.cs" :21 :51)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: BanManager
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\AdminMenu.xaml.cs" :23 :12) // BanManager.GetReportedList() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.AdminPages.AdminMenu.CloseMenu$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\AdminMenu.xaml.cs" :26 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\AdminMenu.xaml.cs" :26 :31)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\AdminMenu.xaml.cs" :26 :31)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\AdminMenu.xaml.cs" :26 :46)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\AdminMenu.xaml.cs" :26 :46)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\AdminMenu.xaml.cs" :28 :35) // App.Current (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\AdminMenu.xaml.cs" :28 :35) // App.Current.Windows (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\AdminMenu.xaml.cs" :28 :35) // App.Current.Windows.OfType<AdminPage>() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\AdminMenu.xaml.cs" :28 :35) // App.Current.Windows.OfType<AdminPage>().FirstOrDefault() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\AdminMenu.xaml.cs" :29 :12) // Not a variable of known type: actualMenu
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\AdminMenu.xaml.cs" :29 :12) // actualMenu.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function LanguageSelect(none, none), it contains poisonous unsupported syntaxes

