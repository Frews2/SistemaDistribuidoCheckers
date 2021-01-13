func @_CheckersCliente.Windows.ReportWindow.ReportPlayer$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :23 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :23 :34)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :23 :34)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :23 :49)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :23 :49)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GameManager
%2 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :25 :37) // Not a variable of known type: playerReportingNumber
%3 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :25 :59) // Not a variable of known type: actualMatchNumber
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :25 :78) // Not a variable of known type: reportText
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :25 :78) // reportText.Text (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :25 :12) // GameManager.ReportPlayer(playerReportingNumber,actualMatchNumber, reportText.Text) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Windows.ReportWindow.CloseWindow$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :28 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :28 :33)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :28 :33)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :28 :48)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :28 :48)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :30 :12) // this (ThisExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :30 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function EnableReportButton(none, none), it contains poisonous unsupported syntaxes

func @_CheckersCliente.Windows.ReportWindow.ReportedPlayer$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :42 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :44 :29) // true
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :45 :12) // this (ThisExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :45 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Windows.ReportWindow.WindowClose$object.System.ComponentModel.CancelEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :48 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :48 :33)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :48 :33)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :48 :48)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :48 :48)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :50 :16) // Not a variable of known type: playerReported
cond_br %2, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :50 :16)

^1: // SimpleBlock
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :52 :16) // Not a variable of known type: e
%4 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :52 :16) // e.Cancel (SimpleMemberAccessExpression)
%5 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :52 :27) // false
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :53 :34) // App.Current (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :53 :34) // App.Current.Windows (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :53 :34) // App.Current.Windows.OfType<Game>() (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :53 :34) // App.Current.Windows.OfType<Game>().FirstOrDefault() (InvocationExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :54 :16) // Not a variable of known type: gameWindow
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :54 :16) // gameWindow.CloseReportWindow() (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :58 :72) // Properties.Resources (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :58 :72) // Properties.Resources.CancelQuestion (SimpleMemberAccessExpression)
%15 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :58 :29) // DialogWindowManager.ShowConfirmationWindow(Properties.Resources.CancelQuestion) (InvocationExpression)
%16 = cbde.alloca i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :58 :21) // close
cbde.store %15, %16 : memref<i1> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :58 :21)
%17 = cbde.load %16 : memref<i1> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :59 :20)
cond_br %17, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :59 :20)

^4: // SimpleBlock
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :61 :20) // Not a variable of known type: e
%19 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :61 :20) // e.Cancel (SimpleMemberAccessExpression)
%20 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :61 :31) // false
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :62 :38) // App.Current (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :62 :38) // App.Current.Windows (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :62 :38) // App.Current.Windows.OfType<Game>() (InvocationExpression)
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :62 :38) // App.Current.Windows.OfType<Game>().FirstOrDefault() (InvocationExpression)
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :63 :20) // Not a variable of known type: gameWindow
%27 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :63 :20) // gameWindow.ReportWindowOpen (SimpleMemberAccessExpression)
%28 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :63 :50) // false
br ^3

^5: // SimpleBlock
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :67 :20) // Not a variable of known type: e
%30 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :67 :20) // e.Cancel (SimpleMemberAccessExpression)
%31 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Windows\\ReportWindow.xaml.cs" :67 :31) // true
br ^3

^3: // ExitBlock
return

}
