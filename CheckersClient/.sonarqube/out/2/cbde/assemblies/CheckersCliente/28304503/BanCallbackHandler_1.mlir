func @_CheckersCliente.CallbackHandlers.BanCallbackHandler.GetBanResult$CheckersCliente.MainService.BanResult$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :15 :8) {
^entry (%_result : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :15 :33)
cbde.store %_result, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :15 :33)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :17 :16) // Not a variable of known type: result
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :17 :26) // Not a variable of known type: BanResult
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :17 :26) // BanResult.PLAYER_BANNED (SimpleMemberAccessExpression)
%4 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :17 :16) // comparison of unknown type: result == BanResult.PLAYER_BANNED
cond_br %4, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :17 :16)

^1: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :19 :32) // Resources.PlayerBannedMessage (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :19 :16) // MessageBox.Show(Resources.PlayerBannedMessage) (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :21 :21) // Not a variable of known type: result
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :21 :31) // Not a variable of known type: BanResult
%9 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :21 :31) // BanResult.PLAYER_ALREADY_BANNED (SimpleMemberAccessExpression)
%10 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :21 :21) // comparison of unknown type: result == BanResult.PLAYER_ALREADY_BANNED
cond_br %10, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :21 :21)

^4: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :23 :32) // Resources.PlayerAlreadyBannedErrorMessage (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :23 :16) // MessageBox.Show(Resources.PlayerAlreadyBannedErrorMessage) (InvocationExpression)
br ^3

^5: // BinaryBranchBlock
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :25 :21) // Not a variable of known type: result
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :25 :31) // Not a variable of known type: BanResult
%15 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :25 :31) // BanResult.ERROR_BANNING (SimpleMemberAccessExpression)
%16 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :25 :21) // comparison of unknown type: result == BanResult.ERROR_BANNING
cond_br %16, ^6, ^7 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :25 :21)

^6: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :27 :32) // Resources.UnableToBanErrorMessage (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :27 :16) // MessageBox.Show(Resources.UnableToBanErrorMessage) (InvocationExpression)
br ^3

^7: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :31 :32) // Resources.NoConnectionMessage (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :31 :16) // MessageBox.Show(Resources.NoConnectionMessage) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.CallbackHandlers.BanCallbackHandler.GetReportDataQueryResult$CheckersCliente.MainService.AdminReportResult$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :35 :8) {
^entry (%_result : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :35 :45)
cbde.store %_result, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :35 :45)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :37 :16) // Not a variable of known type: result
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :37 :26) // Not a variable of known type: AdminReportResult
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :37 :26) // AdminReportResult.REPORT_EXISTS (SimpleMemberAccessExpression)
%4 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :37 :16) // comparison of unknown type: result == AdminReportResult.REPORT_EXISTS
cond_br %4, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :37 :16)

^1: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :39 :32) // Resources.LoadMessage (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :39 :16) // MessageBox.Show(Resources.LoadMessage) (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :41 :21) // Not a variable of known type: result
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :41 :31) // Not a variable of known type: AdminReportResult
%9 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :41 :31) // AdminReportResult.NO_REPORTS_EXIST (SimpleMemberAccessExpression)
%10 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :41 :21) // comparison of unknown type: result == AdminReportResult.NO_REPORTS_EXIST
cond_br %10, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :41 :21)

^4: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :43 :32) // Resources.NoInfoMessage (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :43 :16) // MessageBox.Show(Resources.NoInfoMessage) (InvocationExpression)
br ^3

^5: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :47 :32) // Resources.NoConnectionMessage (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :47 :16) // MessageBox.Show(Resources.NoConnectionMessage) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.CallbackHandlers.BanCallbackHandler.ReceiveReportData$CheckersCliente.MainService.Reporte$$$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :51 :8) {
^entry (%_reportList : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :51 :38)
cbde.store %_reportList, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :51 :38)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :53 :36) // Not a variable of known type: reportList
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :53 :36) // reportList.ToList() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :54 :29) // App.Current (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :54 :29) // App.Current.Windows (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :54 :29) // App.Current.Windows.OfType<AdminPage>() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :54 :29) // App.Current.Windows.OfType<AdminPage>().FirstOrDefault() (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :55 :12) // Not a variable of known type: menu
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :55 :41) // Not a variable of known type: reports
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :55 :26) // new ReportList(reports) (ObjectCreationExpression)
%12 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\BanCallbackHandler.cs" :55 :12) // menu.Navigate(new ReportList(reports)) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
