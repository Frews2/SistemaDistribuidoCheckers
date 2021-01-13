func @_CheckersCliente.AdminPages.ReportList.BanPlayer$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\ReportList.xaml.cs" :29 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\ReportList.xaml.cs" :29 :31)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\ReportList.xaml.cs" :29 :31)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\ReportList.xaml.cs" :29 :46)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\ReportList.xaml.cs" :29 :46)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\ReportList.xaml.cs" :31 :38) // Not a variable of known type: tableOfReports
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\ReportList.xaml.cs" :31 :38) // tableOfReports.SelectedItem (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\ReportList.xaml.cs" :31 :29) // (Reporte)tableOfReports.SelectedItem (CastExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\ReportList.xaml.cs" :32 :27) // Not a variable of known type: selectedReport
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\ReportList.xaml.cs" :32 :27) // selectedReport.Reportado (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: BanManager
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\ReportList.xaml.cs" :33 :33) // Not a variable of known type: bannedPlayer
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\ReportList.xaml.cs" :33 :33) // bannedPlayer.Apodo (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\ReportList.xaml.cs" :33 :12) // BanManager.BanPlayer(bannedPlayer.Apodo) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.AdminPages.ReportList.Exit$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\ReportList.xaml.cs" :36 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\ReportList.xaml.cs" :36 :26)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\ReportList.xaml.cs" :36 :26)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\ReportList.xaml.cs" :36 :41)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\ReportList.xaml.cs" :36 :41)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\ReportList.xaml.cs" :38 :12) // Identifier from another assembly: NavigationService
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\AdminPages\\ReportList.xaml.cs" :38 :12) // NavigationService.GoBack() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
