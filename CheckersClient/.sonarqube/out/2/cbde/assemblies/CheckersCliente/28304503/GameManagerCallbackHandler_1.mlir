func @_CheckersCliente.CallbackHandlers.GameManagerCallbackHandler.GetMatchmakingResult$CheckersCliente.MainService.MatchmakingResult.CheckersCliente.MainService.Match.int$(none, none, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :15 :8) {
^entry (%_result : none, %_match : none, %_playerNumber : i32):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :15 :41)
cbde.store %_result, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :15 :41)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :15 :67)
cbde.store %_match, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :15 :67)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :15 :80)
cbde.store %_playerNumber, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :15 :80)
br ^0

^0: // BinaryBranchBlock
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :17 :16) // Not a variable of known type: result
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :17 :26) // Not a variable of known type: MatchmakingResult
%5 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :17 :26) // MatchmakingResult.MATCH_FOUND (SimpleMemberAccessExpression)
%6 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :17 :16) // comparison of unknown type: result == MatchmakingResult.MATCH_FOUND
cond_br %6, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :17 :16)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :19 :43) // Not a variable of known type: match
%8 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :19 :50)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :19 :34) // new Game(match, playerNumber) (ObjectCreationExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :20 :16) // Not a variable of known type: gameWindow
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :20 :16) // gameWindow.Show() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :21 :28) // App.Current (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :21 :28) // App.Current.Windows (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :21 :28) // App.Current.Windows.OfType<Menu>() (InvocationExpression)
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :21 :28) // App.Current.Windows.OfType<Menu>().FirstOrDefault() (InvocationExpression)
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :22 :16) // Not a variable of known type: menu
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :22 :16) // menu.ChangeLanguage() (InvocationExpression)
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :23 :16) // Not a variable of known type: menu
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :23 :16) // menu.Close() (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :27 :20) // Not a variable of known type: result
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :27 :30) // Not a variable of known type: MatchmakingResult
%24 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :27 :30) // MatchmakingResult.MATCH_NOT_FOUND (SimpleMemberAccessExpression)
%25 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :27 :20) // comparison of unknown type: result == MatchmakingResult.MATCH_NOT_FOUND
cond_br %25, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :27 :20)

^4: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :29 :32) // App.Current (SimpleMemberAccessExpression)
%27 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :29 :32) // App.Current.Windows (SimpleMemberAccessExpression)
%28 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :29 :32) // App.Current.Windows.OfType<Menu>() (InvocationExpression)
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :29 :32) // App.Current.Windows.OfType<Menu>().FirstOrDefault() (InvocationExpression)
%31 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :30 :20) // Not a variable of known type: menu
%32 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :30 :20) // menu.EnableNavigation() (InvocationExpression)
%33 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :31 :20) // Not a variable of known type: menu
%34 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :31 :20) // menu.NavigationService (SimpleMemberAccessExpression)
%35 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :31 :52) // new GameStandBy() (ObjectCreationExpression)
%36 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :31 :20) // menu.NavigationService.Navigate(new GameStandBy()) (InvocationExpression)
br ^3

^5: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%37 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :35 :36) // Resources.NoMatchFoundErrorMessage (SimpleMemberAccessExpression)
%38 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :35 :20) // MessageBox.Show(Resources.NoMatchFoundErrorMessage) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.CallbackHandlers.GameManagerCallbackHandler.UpdateGameGUI$CheckersCliente.MainService.Checker$$$$.int.int$(none, i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :40 :8) {
^entry (%_updateBoardMatrix : none, %_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :40 :34)
cbde.store %_updateBoardMatrix, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :40 :34)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :40 :65)
cbde.store %_playerTwoCheckers, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :40 :65)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :40 :88)
cbde.store %_playerOneCheckers, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :40 :88)
br ^0

^0: // ForInitializerBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :42 :24) // App.Current (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :42 :24) // App.Current.Windows (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :42 :24) // App.Current.Windows.OfType<Game>() (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :42 :24) // App.Current.Windows.OfType<Game>().FirstOrDefault() (InvocationExpression)
%8 = constant 8 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :43 :57)
%9 = constant 8 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :43 :59)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :43 :49) // Checker[8,8] (ArrayType)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :43 :45) // new Checker[8,8] (ArrayCreationExpression)
%13 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :45 :16) // rowNumber
%14 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :46 :16) // columnNumber
%15 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :48 :29)
cbde.store %15, %13 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :48 :17)
br ^1

^1: // BinaryBranchBlock
%16 = cbde.load %13 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :48 :32)
%17 = constant 8 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :48 :42)
%18 = cmpi "slt", %16, %17 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :48 :32)
cond_br %18, ^2, ^3 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :48 :32)

^2: // ForInitializerBlock
%19 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :50 :36)
cbde.store %19, %14 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :50 :21)
br ^4

^4: // BinaryBranchBlock
%20 = cbde.load %14 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :50 :39)
%21 = constant 8 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :50 :52)
%22 = cmpi "slt", %20, %21 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :50 :39)
cond_br %22, ^5, ^6 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :50 :39)

^5: // SimpleBlock
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :52 :20) // Not a variable of known type: newChekcersPosition
%24 = cbde.load %13 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :52 :40)
%25 = cbde.load %14 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :52 :51)
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :52 :20) // newChekcersPosition[rowNumber, columnNumber] (ElementAccessExpression)
%27 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :52 :67) // Not a variable of known type: updateBoardMatrix
%28 = cbde.load %13 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :52 :85)
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :52 :67) // updateBoardMatrix[rowNumber] (ElementAccessExpression)
%30 = cbde.load %14 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :52 :96)
%31 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :52 :67) // updateBoardMatrix[rowNumber][columnNumber] (ElementAccessExpression)
br ^7

^7: // SimpleBlock
%32 = cbde.load %14 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :50 :55)
%33 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :50 :55)
%34 = addi %32, %33 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :50 :55)
cbde.store %34, %14 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :50 :55)
br ^4

^6: // SimpleBlock
%35 = cbde.load %13 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :48 :44)
%36 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :48 :44)
%37 = addi %35, %36 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :48 :44)
cbde.store %37, %13 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :48 :44)
br ^1

^3: // SimpleBlock
%38 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :55 :12) // Not a variable of known type: game
%39 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :55 :43) // Not a variable of known type: newChekcersPosition
%40 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :55 :12) // game.UpdateCheckersGuiPosition(newChekcersPosition) (InvocationExpression)
%41 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :56 :12) // Not a variable of known type: game
%42 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :56 :37)
%43 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :56 :55)
%44 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :56 :12) // game.UpdateCheckersCount(playerTwoCheckers,playerOneCheckers) (InvocationExpression)
%45 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :57 :12) // Not a variable of known type: game
%46 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :57 :12) // game.EndSecondPlayerTurn() (InvocationExpression)
br ^8

^8: // ExitBlock
return

}
func @_CheckersCliente.CallbackHandlers.GameManagerCallbackHandler.UpdateMatchNumber$int$(i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :60 :8) {
^entry (%_newMatchNumber : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :60 :38)
cbde.store %_newMatchNumber, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :60 :38)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :62 :24) // App.Current (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :62 :24) // App.Current.Windows (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :62 :24) // App.Current.Windows.OfType<Game>() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :62 :24) // App.Current.Windows.OfType<Game>().FirstOrDefault() (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :63 :12) // Not a variable of known type: game
%7 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :63 :35)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :63 :12) // game.UpdateMatchNumber(newMatchNumber) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.CallbackHandlers.GameManagerCallbackHandler.FinishGame$int.int$(i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :66 :8) {
^entry (%_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :66 :31)
cbde.store %_playerTwoCheckers, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :66 :31)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :66 :54)
cbde.store %_playerOneCheckers, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :66 :54)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :68 :24) // App.Current (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :68 :24) // App.Current.Windows (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :68 :24) // App.Current.Windows.OfType<Game>() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :68 :24) // App.Current.Windows.OfType<Game>().FirstOrDefault() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :69 :12) // Not a variable of known type: game
%8 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :69 :28)
%9 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :69 :46)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :69 :12) // game.FinishGame(playerTwoCheckers,playerOneCheckers) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.CallbackHandlers.GameManagerCallbackHandler.RecieveGameMessage$string.int$(none, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :72 :8) {
^entry (%_message : none, %_playerNumber : i32):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :72 :39)
cbde.store %_message, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :72 :39)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :72 :55)
cbde.store %_playerNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :72 :55)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :74 :24) // App.Current (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :74 :24) // App.Current.Windows (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :74 :24) // App.Current.Windows.OfType<Game>() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :74 :24) // App.Current.Windows.OfType<Game>().FirstOrDefault() (InvocationExpression)
%8 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :77 :16)
%9 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :77 :32)
%10 = cmpi "eq", %8, %9 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :77 :16)
cond_br %10, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :77 :16)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :79 :35) // Resources.Player1 (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :79 :55) // " " (StringLiteralExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :79 :35) // Binary expression on unsupported types Resources.Player1 + " "
br ^3

^2: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :83 :35) // Resources.Player2 (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :83 :55) // " " (StringLiteralExpression)
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :83 :35) // Binary expression on unsupported types Resources.Player2 + " "
br ^3

^3: // SimpleBlock
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :86 :12) // Not a variable of known type: game
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :86 :32) // Not a variable of known type: message
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :86 :40) // Not a variable of known type: playerNumberText
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :86 :12) // game.RecieveMessage(message,playerNumberText) (InvocationExpression)
br ^4

^4: // ExitBlock
return

}
func @_CheckersCliente.CallbackHandlers.GameManagerCallbackHandler.ReportResult$CheckersCliente.MainService.ReportSaveResult$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :90 :8) {
^entry (%_reportSaveResult : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :90 :33)
cbde.store %_reportSaveResult, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :90 :33)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :92 :15) // Not a variable of known type: reportSaveResult
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :92 :35) // Not a variable of known type: ReportSaveResult
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :92 :35) // ReportSaveResult.SAVED_REPORT (SimpleMemberAccessExpression)
%4 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :92 :15) // comparison of unknown type: reportSaveResult == ReportSaveResult.SAVED_REPORT
cond_br %4, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :92 :15)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Windows
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :94 :16) // Windows.DialogWindowManager (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :94 :62) // Resources.ReportSuccess (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :94 :16) // Windows.DialogWindowManager.ShowSuccessWindow(Resources.ReportSuccess) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :95 :52) // App.Current (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :95 :52) // App.Current.Windows (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :95 :52) // App.Current.Windows.OfType<Windows.ReportWindow>() (InvocationExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :95 :52) // App.Current.Windows.OfType<Windows.ReportWindow>().FirstOrDefault() (InvocationExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :96 :16) // Not a variable of known type: reportWindow
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :96 :16) // reportWindow.ReportedPlayer() (InvocationExpression)
br ^3

^2: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Windows
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :100 :16) // Windows.DialogWindowManager (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :100 :60) // Resources.NoConnectionMessage (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :100 :16) // Windows.DialogWindowManager.ShowErrorWindow(Resources.NoConnectionMessage) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.CallbackHandlers.GameManagerCallbackHandler.EndAbandonedGame$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :104 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :106 :24) // App.Current (SimpleMemberAccessExpression)
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :106 :24) // App.Current.Windows (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :106 :24) // App.Current.Windows.OfType<Game>() (InvocationExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :106 :24) // App.Current.Windows.OfType<Game>().FirstOrDefault() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :107 :12) // Not a variable of known type: game
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameManagerCallbackHandler.cs" :107 :12) // game.AbandonedGame() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
