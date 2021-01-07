func @_CheckersCliente.CallbackHandlers.GameMatchManagerCallbackHandler.GetMatchmakingResult$CheckersCliente.MainService.MatchmakingResult.CheckersCliente.MainService.Match.int$(none, none, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :15 :8) {
^entry (%_result : none, %_newMatch : none, %_playerNumber : i32):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :15 :41)
cbde.store %_result, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :15 :41)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :15 :67)
cbde.store %_newMatch, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :15 :67)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :15 :83)
cbde.store %_playerNumber, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :15 :83)
br ^0

^0: // BinaryBranchBlock
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :17 :16) // Not a variable of known type: result
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :17 :26) // Not a variable of known type: MatchmakingResult
%5 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :17 :26) // MatchmakingResult.MATCH_FOUND (SimpleMemberAccessExpression)
%6 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :17 :16) // comparison of unknown type: result == MatchmakingResult.MATCH_FOUND
cond_br %6, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :17 :16)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :19 :43) // Not a variable of known type: newMatch
%8 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :19 :53)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :19 :34) // new Game(newMatch, playerNumber) (ObjectCreationExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :20 :16) // Not a variable of known type: gameWindow
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :20 :16) // gameWindow.Show() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :21 :28) // App.Current (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :21 :28) // App.Current.Windows (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :21 :28) // App.Current.Windows.OfType<Menu>() (InvocationExpression)
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :21 :28) // App.Current.Windows.OfType<Menu>().FirstOrDefault() (InvocationExpression)
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :22 :16) // Not a variable of known type: menu
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :22 :16) // menu.Close() (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :26 :20) // Not a variable of known type: result
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :26 :30) // Not a variable of known type: MatchmakingResult
%22 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :26 :30) // MatchmakingResult.MATCH_NOT_FOUND (SimpleMemberAccessExpression)
%23 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :26 :20) // comparison of unknown type: result == MatchmakingResult.MATCH_NOT_FOUND
cond_br %23, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :26 :20)

^4: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :28 :32) // App.Current (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :28 :32) // App.Current.Windows (SimpleMemberAccessExpression)
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :28 :32) // App.Current.Windows.OfType<Menu>() (InvocationExpression)
%27 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :28 :32) // App.Current.Windows.OfType<Menu>().FirstOrDefault() (InvocationExpression)
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :29 :20) // Not a variable of known type: menu
%30 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :29 :20) // menu.NavigationService (SimpleMemberAccessExpression)
%31 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :29 :52) // new GameStandBy() (ObjectCreationExpression)
%32 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :29 :20) // menu.NavigationService.Navigate(new GameStandBy()) (InvocationExpression)
br ^3

^5: // SimpleBlock
// Entity from another assembly: MessageBox
%33 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :33 :36) // "Error. No se logro buscar partida. Intente de nuevo" (StringLiteralExpression)
%34 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :33 :20) // MessageBox.Show("Error. No se logro buscar partida. Intente de nuevo") (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.CallbackHandlers.GameMatchManagerCallbackHandler.UpdateGameGUI$CheckersCliente.MainService.Checker$$$$.int.int$(none, i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :39 :8) {
^entry (%_updateBoardMatrix : none, %_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :39 :34)
cbde.store %_updateBoardMatrix, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :39 :34)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :39 :65)
cbde.store %_playerTwoCheckers, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :39 :65)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :39 :88)
cbde.store %_playerOneCheckers, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :39 :88)
br ^0

^0: // ForInitializerBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :41 :24) // App.Current (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :41 :24) // App.Current.Windows (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :41 :24) // App.Current.Windows.OfType<Game>() (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :41 :24) // App.Current.Windows.OfType<Game>().FirstOrDefault() (InvocationExpression)
%8 = constant 8 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :42 :57)
%9 = constant 8 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :42 :59)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :42 :49) // Checker[8,8] (ArrayType)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :42 :45) // new Checker[8,8] (ArrayCreationExpression)
%13 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :44 :16) // rowNumber
%14 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :45 :16) // columnNumber
%15 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :47 :29)
cbde.store %15, %13 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :47 :17)
br ^1

^1: // BinaryBranchBlock
%16 = cbde.load %13 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :47 :32)
%17 = constant 8 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :47 :42)
%18 = cmpi "slt", %16, %17 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :47 :32)
cond_br %18, ^2, ^3 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :47 :32)

^2: // ForInitializerBlock
%19 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :49 :36)
cbde.store %19, %14 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :49 :21)
br ^4

^4: // BinaryBranchBlock
%20 = cbde.load %14 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :49 :39)
%21 = constant 8 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :49 :52)
%22 = cmpi "slt", %20, %21 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :49 :39)
cond_br %22, ^5, ^6 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :49 :39)

^5: // SimpleBlock
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :51 :20) // Not a variable of known type: newChekcersPosition
%24 = cbde.load %13 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :51 :40)
%25 = cbde.load %14 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :51 :51)
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :51 :20) // newChekcersPosition[rowNumber, columnNumber] (ElementAccessExpression)
%27 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :51 :67) // Not a variable of known type: updateBoardMatrix
%28 = cbde.load %13 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :51 :85)
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :51 :67) // updateBoardMatrix[rowNumber] (ElementAccessExpression)
%30 = cbde.load %14 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :51 :96)
%31 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :51 :67) // updateBoardMatrix[rowNumber][columnNumber] (ElementAccessExpression)
br ^7

^7: // SimpleBlock
%32 = cbde.load %14 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :49 :55)
%33 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :49 :55)
%34 = addi %32, %33 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :49 :55)
cbde.store %34, %14 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :49 :55)
br ^4

^6: // SimpleBlock
%35 = cbde.load %13 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :47 :44)
%36 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :47 :44)
%37 = addi %35, %36 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :47 :44)
cbde.store %37, %13 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :47 :44)
br ^1

^3: // SimpleBlock
%38 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :54 :12) // Not a variable of known type: game
%39 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :54 :43) // Not a variable of known type: newChekcersPosition
%40 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :54 :12) // game.UpdateCheckersGuiPosition(newChekcersPosition) (InvocationExpression)
%41 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :55 :12) // Not a variable of known type: game
%42 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :55 :37)
%43 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :55 :55)
%44 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :55 :12) // game.UpdateCheckersCount(playerTwoCheckers,playerOneCheckers) (InvocationExpression)
%45 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :56 :12) // Not a variable of known type: game
%46 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :56 :12) // game.EndSecondPlayerTurn() (InvocationExpression)
br ^8

^8: // ExitBlock
return

}
func @_CheckersCliente.CallbackHandlers.GameMatchManagerCallbackHandler.UpdateMatchNumber$int$(i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :59 :8) {
^entry (%_newMatchNumber : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :59 :38)
cbde.store %_newMatchNumber, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :59 :38)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :61 :24) // App.Current (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :61 :24) // App.Current.Windows (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :61 :24) // App.Current.Windows.OfType<Game>() (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :61 :24) // App.Current.Windows.OfType<Game>().FirstOrDefault() (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :62 :12) // Not a variable of known type: game
%7 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :62 :35)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :62 :12) // game.UpdateMatchNumber(newMatchNumber) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.CallbackHandlers.GameMatchManagerCallbackHandler.FinishGame$int.int$(i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :66 :8) {
^entry (%_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :66 :31)
cbde.store %_playerTwoCheckers, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :66 :31)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :66 :54)
cbde.store %_playerOneCheckers, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :66 :54)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :68 :24) // App.Current (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :68 :24) // App.Current.Windows (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :68 :24) // App.Current.Windows.OfType<Game>() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :68 :24) // App.Current.Windows.OfType<Game>().FirstOrDefault() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :69 :12) // Not a variable of known type: game
%8 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :69 :28)
%9 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :69 :46)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\GameMatchManagerCallbackHandler.cs" :69 :12) // game.FinishGame(playerTwoCheckers,playerOneCheckers) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
