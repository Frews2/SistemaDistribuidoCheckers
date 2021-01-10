func @_CheckersCliente.CallbackHandlers.RankingCallbackHandler.GetRankingResult$CheckersCliente.MainService.RankingResult$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :15 :8) {
^entry (%_result : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :15 :37)
cbde.store %_result, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :15 :37)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :17 :16) // Not a variable of known type: result
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :17 :26) // Not a variable of known type: RankingResult
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :17 :26) // RankingResult.RANKING_EXISTS (SimpleMemberAccessExpression)
%4 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :17 :16) // comparison of unknown type: result == RankingResult.RANKING_EXISTS
cond_br %4, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :17 :16)

^1: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :19 :32) // Resources.LoadMessage (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :19 :16) // MessageBox.Show(Resources.LoadMessage) (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :21 :21) // Not a variable of known type: result
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :21 :31) // Not a variable of known type: RankingResult
%9 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :21 :31) // RankingResult.NO_RANKING (SimpleMemberAccessExpression)
%10 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :21 :21) // comparison of unknown type: result == RankingResult.NO_RANKING
cond_br %10, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :21 :21)

^4: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :23 :32) // Resources.NoInfoMessage (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :23 :16) // MessageBox.Show(Resources.NoInfoMessage) (InvocationExpression)
br ^3

^5: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :27 :32) // Resources.NoConnectionMessage (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :27 :16) // MessageBox.Show(Resources.NoConnectionMessage) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.CallbackHandlers.RankingCallbackHandler.ReceiveRankingData$CheckersCliente.MainService.Ranking$$$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :31 :8) {
^entry (%_rankingList : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :31 :39)
cbde.store %_rankingList, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :31 :39)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :33 :37) // Not a variable of known type: rankingList
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :33 :37) // rankingList.ToList() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :34 :24) // App.Current (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :34 :24) // App.Current.Windows (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :34 :24) // App.Current.Windows.OfType<Menu>() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :34 :24) // App.Current.Windows.OfType<Menu>().FirstOrDefault() (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :35 :12) // Not a variable of known type: menu
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :35 :42) // Not a variable of known type: rankings
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :35 :26) // new RankingList(rankings) (ObjectCreationExpression)
%12 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\RankingCallbackHandler.cs" :35 :12) // menu.Navigate(new RankingList(rankings)) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
