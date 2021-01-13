func @_CheckersCliente.Game.RegresarAMenu$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :70 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :70 :35)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :70 :35)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :70 :50)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :70 :50)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GameManager
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :72 :41) // Not a variable of known type: actualMatch
%3 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :72 :41) // actualMatch.matchActiveNumber (SimpleMemberAccessExpression)
%4 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :72 :72) // Not a variable of known type: localPlayerNumber
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :72 :12) // GameManager.LeaveMatchmaking(actualMatch.matchActiveNumber, localPlayerNumber) (InvocationExpression)
%6 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :73 :23) // true
%7 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :74 :16) // Not a variable of known type: localPlayerNumber
%8 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :74 :37)
%9 = cmpi "eq", %7, %8 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :74 :16)
cond_br %9, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :74 :16)

^1: // SimpleBlock
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :76 :37) // Not a variable of known type: actualMatch
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :76 :37) // actualMatch.playerOneData (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :76 :28) // new Menu(actualMatch.playerOneData) (ObjectCreationExpression)
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :77 :16) // Not a variable of known type: menu
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :77 :16) // menu.Show() (InvocationExpression)
br ^3

^2: // SimpleBlock
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :81 :37) // Not a variable of known type: actualMatch
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :81 :37) // actualMatch.playerTwoData (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :81 :28) // new Menu(actualMatch.playerTwoData) (ObjectCreationExpression)
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :82 :16) // Not a variable of known type: menu
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :82 :16) // menu.Show() (InvocationExpression)
br ^3

^3: // SimpleBlock
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :85 :12) // this (ThisExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :85 :12) // this.Close() (InvocationExpression)
br ^4

^4: // ExitBlock
return

}
func @_CheckersCliente.Game.EndTurnNoMovement$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :88 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :88 :39)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :88 :39)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :88 :54)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :88 :54)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :90 :12) // this (ThisExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :90 :12) // this.EndTurn() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function Movement(none, none), it contains poisonous unsupported syntaxes

// Skipping function FirstMovementCheck(none), it contains poisonous unsupported syntaxes

// Skipping function SecondMovementCheck(none), it contains poisonous unsupported syntaxes

// Skipping function ThirdMovementCheck(none), it contains poisonous unsupported syntaxes

func @_CheckersCliente.Game.KingMoveCheck$System.Windows.Controls.Button$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :240 :8) {
^entry (%_button : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :240 :35)
cbde.store %_button, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :240 :35)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: KingMove
%1 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :242 :16) // KingMove() (InvocationExpression)
cond_br %1, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :242 :16)

^1: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :244 :16) // Not a variable of known type: button
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :244 :16) // button.Content (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :244 :33) // "♛" (StringLiteralExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :245 :16) // Not a variable of known type: button
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :245 :16) // button.FontSize (SimpleMemberAccessExpression)
%7 = constant 20 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :245 :34)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :246 :16) // Not a variable of known type: button
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :246 :16) // button.Foreground (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :246 :36) // Not a variable of known type: player1Color
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :247 :16) // Not a variable of known type: previousButton
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :247 :16) // previousButton.Content (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :247 :41) // "" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DismissButtonClick
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :249 :35) // Not a variable of known type: previousButton
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :249 :16) // DismissButtonClick(previousButton) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: EndTurn
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :250 :16) // EndTurn() (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidateKingJump
%17 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :254 :20) // ValidateKingJump() (InvocationExpression)
cond_br %17, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :254 :20)

^4: // BinaryBranchBlock
%18 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :256 :20) // Not a variable of known type: player2CheckerCount
%19 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :256 :20) // Inc/Decrement of field or property player2CheckerCount
%20 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :258 :42) // Not a variable of known type: rowNumber
%21 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :258 :56) // Not a variable of known type: rowNumber
%22 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :258 :68) // Not a variable of known type: previousRow
%23 = subi %21, %22 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :258 :56)
%24 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :258 :84) // .5 (NumericLiteralExpression)
%25 = cbde.neg %24 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :258 :83)
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :258 :55) // Binary expression on unsupported types (rowNumber - previousRow) * -.5
%27 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :258 :42) // Binary expression on unsupported types rowNumber + ((rowNumber - previousRow) * -.5)
%28 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :258 :36) // (int)(rowNumber + ((rowNumber - previousRow) * -.5)) (CastExpression)
%29 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :258 :24) // jumpedRow
cbde.store %28, %29 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :258 :24)
%30 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :259 :45) // Not a variable of known type: columnNumber
%31 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :259 :62) // Not a variable of known type: columnNumber
%32 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :259 :77) // Not a variable of known type: previousColumn
%33 = subi %31, %32 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :259 :62)
%34 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :259 :96) // .5 (NumericLiteralExpression)
%35 = cbde.neg %34 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :259 :95)
%36 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :259 :61) // Binary expression on unsupported types (columnNumber - previousColumn) * -.5
%37 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :259 :45) // Binary expression on unsupported types columnNumber + ((columnNumber - previousColumn) * -.5)
%38 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :259 :39) // (int)(columnNumber + ((columnNumber - previousColumn) * -.5)) (CastExpression)
%39 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :259 :24) // jumpedColumn
cbde.store %38, %39 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :259 :24)
%40 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :261 :20) // Not a variable of known type: boardMatrix
%41 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :261 :32) // Not a variable of known type: rowNumber
%42 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :261 :43) // Not a variable of known type: columnNumber
%43 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :261 :20) // boardMatrix[rowNumber, columnNumber] (ElementAccessExpression)
%44 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :261 :59) // Not a variable of known type: Checker
%45 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :261 :59) // Checker.player1King (SimpleMemberAccessExpression)
%46 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :262 :20) // Not a variable of known type: boardMatrix
%47 = cbde.load %29 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :262 :32)
%48 = cbde.load %39 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :262 :43)
%49 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :262 :20) // boardMatrix[jumpedRow, jumpedColumn] (ElementAccessExpression)
%50 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :262 :59) // Not a variable of known type: Checker
%51 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :262 :59) // Checker.freeSpace (SimpleMemberAccessExpression)
%52 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :263 :20) // Not a variable of known type: boardMatrix
%53 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :263 :32) // Not a variable of known type: previousRow
%54 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :263 :45) // Not a variable of known type: previousColumn
%55 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :263 :20) // boardMatrix[previousRow, previousColumn] (ElementAccessExpression)
%56 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :263 :63) // Not a variable of known type: Checker
%57 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :263 :63) // Checker.freeSpace (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DismissButtonClick
%58 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :265 :39) // Not a variable of known type: previousButton
%59 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :265 :20) // DismissButtonClick(previousButton) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: UpdateCheckersGuiPosition
%60 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :266 :46) // Not a variable of known type: boardMatrix
%61 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :266 :20) // UpdateCheckersGuiPosition(boardMatrix) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: KingJumpsAvaliable
%62 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :268 :24) // KingJumpsAvaliable() (InvocationExpression)
cond_br %62, ^6, ^7 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :268 :24)

^6: // SimpleBlock
%63 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :270 :41) // Not a variable of known type: button
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: RemarkClickedButton
%64 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :271 :44) // Not a variable of known type: button
%65 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :271 :24) // RemarkClickedButton(button) (InvocationExpression)
br ^3

^7: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DismissButtonClick
%66 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :275 :43) // Not a variable of known type: previousButton
%67 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :275 :24) // DismissButtonClick(previousButton) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: EndTurn
%68 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :276 :24) // EndTurn() (InvocationExpression)
br ^3

^5: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: InvalidClick
%69 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :281 :20) // InvalidClick() (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
// Skipping function playerTwoMovement(none, none), it contains poisonous unsupported syntaxes

// Skipping function PlayerTwoFirstMovementCheck(none), it contains poisonous unsupported syntaxes

// Skipping function PlayerTwoSecondMovementCheck(none), it contains poisonous unsupported syntaxes

// Skipping function PlayerTwoThirdMovementCheck(none), it contains poisonous unsupported syntaxes

func @_CheckersCliente.Game.PlayerTwoKingCheck$System.Windows.Controls.Button$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :425 :8) {
^entry (%_button : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :425 :40)
cbde.store %_button, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :425 :40)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: KingMove
%1 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :427 :16) // KingMove() (InvocationExpression)
cond_br %1, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :427 :16)

^1: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :429 :16) // Not a variable of known type: button
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :429 :16) // button.Content (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :429 :33) // "♚" (StringLiteralExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :430 :16) // Not a variable of known type: button
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :430 :16) // button.FontSize (SimpleMemberAccessExpression)
%7 = constant 20 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :430 :34)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :431 :16) // Not a variable of known type: button
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :431 :16) // button.Foreground (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :431 :36) // Not a variable of known type: player2Color
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :432 :16) // Not a variable of known type: previousButton
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :432 :16) // previousButton.Content (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :432 :41) // "" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DismissButtonClick
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :434 :35) // Not a variable of known type: previousButton
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :434 :16) // DismissButtonClick(previousButton) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: EndTurn
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :435 :16) // EndTurn() (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidateKingJump
%17 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :439 :20) // ValidateKingJump() (InvocationExpression)
cond_br %17, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :439 :20)

^4: // BinaryBranchBlock
%18 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :441 :20) // Not a variable of known type: player1CheckerCount
%19 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :441 :20) // Inc/Decrement of field or property player1CheckerCount
%20 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :443 :42) // Not a variable of known type: rowNumber
%21 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :443 :56) // Not a variable of known type: rowNumber
%22 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :443 :68) // Not a variable of known type: previousRow
%23 = subi %21, %22 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :443 :56)
%24 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :443 :84) // .5 (NumericLiteralExpression)
%25 = cbde.neg %24 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :443 :83)
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :443 :55) // Binary expression on unsupported types (rowNumber - previousRow) * -.5
%27 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :443 :42) // Binary expression on unsupported types rowNumber + ((rowNumber - previousRow) * -.5)
%28 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :443 :36) // (int)(rowNumber + ((rowNumber - previousRow) * -.5)) (CastExpression)
%29 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :443 :24) // jumpedRow
cbde.store %28, %29 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :443 :24)
%30 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :444 :42) // Not a variable of known type: columnNumber
%31 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :444 :59) // Not a variable of known type: columnNumber
%32 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :444 :74) // Not a variable of known type: previousColumn
%33 = subi %31, %32 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :444 :59)
%34 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :444 :93) // .5 (NumericLiteralExpression)
%35 = cbde.neg %34 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :444 :92)
%36 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :444 :58) // Binary expression on unsupported types (columnNumber - previousColumn) * -.5
%37 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :444 :42) // Binary expression on unsupported types columnNumber + ((columnNumber - previousColumn) * -.5)
%38 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :444 :36) // (int)(columnNumber + ((columnNumber - previousColumn) * -.5)) (CastExpression)
%39 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :444 :24) // jumpedCol
cbde.store %38, %39 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :444 :24)
%40 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :446 :20) // Not a variable of known type: boardMatrix
%41 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :446 :32) // Not a variable of known type: rowNumber
%42 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :446 :43) // Not a variable of known type: columnNumber
%43 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :446 :20) // boardMatrix[rowNumber, columnNumber] (ElementAccessExpression)
%44 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :446 :59) // Not a variable of known type: Checker
%45 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :446 :59) // Checker.player2King (SimpleMemberAccessExpression)
%46 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :447 :20) // Not a variable of known type: boardMatrix
%47 = cbde.load %29 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :447 :32)
%48 = cbde.load %39 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :447 :43)
%49 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :447 :20) // boardMatrix[jumpedRow, jumpedCol] (ElementAccessExpression)
%50 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :447 :56) // Not a variable of known type: Checker
%51 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :447 :56) // Checker.freeSpace (SimpleMemberAccessExpression)
%52 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :448 :20) // Not a variable of known type: boardMatrix
%53 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :448 :32) // Not a variable of known type: previousRow
%54 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :448 :45) // Not a variable of known type: previousColumn
%55 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :448 :20) // boardMatrix[previousRow, previousColumn] (ElementAccessExpression)
%56 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :448 :63) // Not a variable of known type: Checker
%57 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :448 :63) // Checker.freeSpace (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DismissButtonClick
%58 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :450 :39) // Not a variable of known type: previousButton
%59 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :450 :20) // DismissButtonClick(previousButton) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: UpdateCheckersGuiPosition
%60 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :451 :46) // Not a variable of known type: boardMatrix
%61 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :451 :20) // UpdateCheckersGuiPosition(boardMatrix) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: KingJumpsAvaliable
%62 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :453 :24) // KingJumpsAvaliable() (InvocationExpression)
cond_br %62, ^6, ^7 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :453 :24)

^6: // SimpleBlock
%63 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :455 :41) // Not a variable of known type: button
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: RemarkClickedButton
%64 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :456 :44) // Not a variable of known type: button
%65 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :456 :24) // RemarkClickedButton(button) (InvocationExpression)
br ^3

^7: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DismissButtonClick
%66 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :460 :43) // Not a variable of known type: previousButton
%67 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :460 :24) // DismissButtonClick(previousButton) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: EndTurn
%68 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :461 :24) // EndTurn() (InvocationExpression)
br ^3

^5: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: InvalidClick
%69 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :466 :20) // InvalidClick() (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
// Skipping function GenerateGame(), it contains poisonous unsupported syntaxes

// Skipping function GeneratingGameProcess(i32), it contains poisonous unsupported syntaxes

// Skipping function GenerateCheckers(), it contains poisonous unsupported syntaxes

func @_CheckersCliente.Game.RemarkClickedButton$System.Windows.Controls.Button$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :561 :8) {
^entry (%_buttonSelected : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :561 :41)
cbde.store %_buttonSelected, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :561 :41)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :563 :12) // Not a variable of known type: buttonSelected
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :563 :12) // buttonSelected.BorderThickness (SimpleMemberAccessExpression)
%3 = constant 3 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :563 :59)
%4 = constant 3 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :563 :62)
%5 = constant 3 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :563 :65)
%6 = constant 3 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :563 :68)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :563 :45) // new Thickness(3, 3, 3, 3) (ObjectCreationExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :564 :12) // Not a variable of known type: buttonSelected
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :564 :12) // buttonSelected.BorderBrush (SimpleMemberAccessExpression)
// Entity from another assembly: Brushes
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :564 :41) // Brushes.Snow (SimpleMemberAccessExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Game.DismissButtonClick$System.Windows.Controls.Button$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :567 :8) {
^entry (%_buttonSelected : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :567 :40)
cbde.store %_buttonSelected, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :567 :40)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :569 :12) // Not a variable of known type: buttonSelected
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :569 :12) // buttonSelected.BorderThickness (SimpleMemberAccessExpression)
%3 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :569 :59)
%4 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :569 :62)
%5 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :569 :65)
%6 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :569 :68)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :569 :45) // new Thickness(1, 1, 1, 1) (ObjectCreationExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :570 :12) // Not a variable of known type: buttonSelected
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :570 :12) // buttonSelected.BorderBrush (SimpleMemberAccessExpression)
// Entity from another assembly: Brushes
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :570 :41) // Brushes.SlateGray (SimpleMemberAccessExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function UpdateCheckersGuiPosition(none), it contains poisonous unsupported syntaxes

func @_CheckersCliente.Game.PlayerTwoCheckersUpdate$CheckersCliente.MainService.Checker$$.$$.System.Windows.Controls.Button$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :604 :8) {
^entry (%_boardMatrixUpdate : none, %_button : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :604 :45)
cbde.store %_boardMatrixUpdate, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :604 :45)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :604 :74)
cbde.store %_button, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :604 :74)
br ^0

^0: // BinaryBranchBlock
// Entity from another assembly: Grid
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :606 :34) // Not a variable of known type: button
%3 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :606 :22) // Grid.GetRow(button) (InvocationExpression)
%4 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :606 :16) // row
cbde.store %3, %4 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :606 :16)
// Entity from another assembly: Grid
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :607 :37) // Not a variable of known type: button
%6 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :607 :22) // Grid.GetColumn(button) (InvocationExpression)
%7 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :607 :16) // col
cbde.store %6, %7 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :607 :16)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :609 :16) // Not a variable of known type: boardMatrixUpdate
%9 = cbde.load %4 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :609 :34)
%10 = cbde.load %7 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :609 :39)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :609 :16) // boardMatrixUpdate[row, col] (ElementAccessExpression)
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :609 :47) // Not a variable of known type: Checker
%13 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :609 :47) // Checker.player2Checker (SimpleMemberAccessExpression)
%14 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :609 :16) // comparison of unknown type: boardMatrixUpdate[row, col] == Checker.player2Checker
cond_br %14, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :609 :16)

^1: // SimpleBlock
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :611 :16) // Not a variable of known type: button
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :611 :16) // button.Content (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :611 :33) // "•" (StringLiteralExpression)
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :612 :16) // Not a variable of known type: button
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :612 :16) // button.FontSize (SimpleMemberAccessExpression)
%20 = constant 20 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :612 :34)
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :613 :16) // Not a variable of known type: button
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :613 :16) // button.Foreground (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :613 :36) // Not a variable of known type: player2Color
br ^3

^2: // BinaryBranchBlock
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :617 :20) // Not a variable of known type: boardMatrixUpdate
%25 = cbde.load %4 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :617 :38)
%26 = cbde.load %7 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :617 :43)
%27 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :617 :20) // boardMatrixUpdate[row, col] (ElementAccessExpression)
%28 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :617 :51) // Not a variable of known type: Checker
%29 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :617 :51) // Checker.player2King (SimpleMemberAccessExpression)
%30 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :617 :20) // comparison of unknown type: boardMatrixUpdate[row, col] == Checker.player2King
cond_br %30, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :617 :20)

^4: // SimpleBlock
%31 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :619 :20) // Not a variable of known type: button
%32 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :619 :20) // button.Content (SimpleMemberAccessExpression)
%33 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :619 :37) // "♚" (StringLiteralExpression)
%34 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :620 :20) // Not a variable of known type: button
%35 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :620 :20) // button.FontSize (SimpleMemberAccessExpression)
%36 = constant 20 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :620 :38)
%37 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :621 :20) // Not a variable of known type: button
%38 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :621 :20) // button.Foreground (SimpleMemberAccessExpression)
%39 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :621 :40) // Not a variable of known type: player2Color
br ^3

^5: // SimpleBlock
%40 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :625 :20) // Not a variable of known type: button
%41 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :625 :20) // button.Content (SimpleMemberAccessExpression)
%42 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :625 :37) // "" (StringLiteralExpression)
br ^3

^3: // ExitBlock
return

}
// Skipping function Player1MoreJumpCheck(), it contains poisonous unsupported syntaxes

// Skipping function Player2MoreJumpCheck(), it contains poisonous unsupported syntaxes

// Skipping function KingJumpsAvaliable(), it contains poisonous unsupported syntaxes

// Skipping function KingSecondCheckJump(), it contains poisonous unsupported syntaxes

// Skipping function KingThirdCheckJump(), it contains poisonous unsupported syntaxes

// Skipping function KingFourthCheckJump(), it contains poisonous unsupported syntaxes

// Skipping function KingFifthCheckJump(), it contains poisonous unsupported syntaxes

// Skipping function IsKingChecker(), it contains poisonous unsupported syntaxes

// Skipping function KingMove(), it contains poisonous unsupported syntaxes

// Skipping function ValidateKingJump(), it contains poisonous unsupported syntaxes

// Skipping function SecondValidateKingJump(), it contains poisonous unsupported syntaxes

// Skipping function ThirdValidateKingJump(), it contains poisonous unsupported syntaxes

// Skipping function FourthValidateKingJump(), it contains poisonous unsupported syntaxes

// Skipping function ValidateSecondPlayerKingJump(), it contains poisonous unsupported syntaxes

// Skipping function SecondValidateSecondPlayerKing(), it contains poisonous unsupported syntaxes

// Skipping function ThirdValidateSecondPlayerKing(), it contains poisonous unsupported syntaxes

// Skipping function FourthValidateSecondPlayerKing(), it contains poisonous unsupported syntaxes

// Skipping function EndTurn(), it contains poisonous unsupported syntaxes

func @_CheckersCliente.Game.EndSecondPlayerTurn$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1017 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1019 :16) // Not a variable of known type: player1Turn
cond_br %0, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1019 :16)

^1: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1021 :16) // Not a variable of known type: Board
%2 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1021 :16) // Board.IsEnabled (SimpleMemberAccessExpression)
%3 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1021 :34) // true
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1022 :16) // Not a variable of known type: passButton
%5 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1022 :16) // passButton.IsEnabled (SimpleMemberAccessExpression)
%6 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1022 :39) // true
%7 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1023 :31) // Not a variable of known type: player1Turn
%8 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1023 :30) // !player1Turn (LogicalNotExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1024 :16) // Not a variable of known type: currentPlayer
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1024 :16) // currentPlayer.Text (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1024 :37) // "Player 2 Turn" (StringLiteralExpression)
br ^3

^2: // SimpleBlock
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1028 :16) // Not a variable of known type: Board
%13 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1028 :16) // Board.IsEnabled (SimpleMemberAccessExpression)
%14 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1028 :34) // true
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1029 :16) // Not a variable of known type: passButton
%16 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1029 :16) // passButton.IsEnabled (SimpleMemberAccessExpression)
%17 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1029 :39) // true
%18 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1030 :30) // true
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1031 :16) // Not a variable of known type: currentPlayer
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1031 :16) // currentPlayer.Text (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1031 :37) // "Player 1 Turn" (StringLiteralExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.Game.InvalidClick$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1037 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1039 :37) // false
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DismissButtonClick
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1040 :31) // Not a variable of known type: previousButton
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1040 :12) // DismissButtonClick(previousButton) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Game.FinishGame$int.int$(i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1043 :8) {
^entry (%_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1043 :31)
cbde.store %_playerTwoCheckers, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1043 :31)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1043 :54)
cbde.store %_playerOneCheckers, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1043 :54)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1045 :16)
%3 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1045 :37)
%4 = cmpi "eq", %2, %3 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1045 :16)
cond_br %4, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1045 :16)

^1: // SimpleBlock
// Entity from another assembly: MessageBox
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1047 :32) // "PLAYER TWO WINS!" (StringLiteralExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1047 :52) // "GAME OVER" (StringLiteralExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1047 :16) // MessageBox.Show("PLAYER TWO WINS!", "GAME OVER") (InvocationExpression)
%8 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1048 :27) // true
br ^3

^2: // SimpleBlock
// Entity from another assembly: MessageBox
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1053 :32) // "PLAYER ONE WINS!" (StringLiteralExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1053 :52) // "GAME OVER" (StringLiteralExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1053 :16) // MessageBox.Show("PLAYER ONE WINS!", "GAME OVER") (InvocationExpression)
%12 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1054 :27) // true
br ^3

^3: // SimpleBlock
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1057 :33) // Not a variable of known type: localPlayer
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1057 :24) // new Menu(localPlayer) (ObjectCreationExpression)
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1058 :12) // Not a variable of known type: menu
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1058 :12) // menu.Show() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1059 :24) // App.Current (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1059 :24) // App.Current.Windows (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1059 :24) // App.Current.Windows.OfType<Game>() (InvocationExpression)
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1059 :24) // App.Current.Windows.OfType<Game>().FirstOrDefault() (InvocationExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1060 :12) // Not a variable of known type: game
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1060 :12) // game.Close() (InvocationExpression)
br ^4

^4: // ExitBlock
return

}
func @_CheckersCliente.Game.UpdateCheckersCount$int.int$(i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1063 :8) {
^entry (%_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1063 :40)
cbde.store %_playerTwoCheckers, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1063 :40)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1063 :63)
cbde.store %_playerOneCheckers, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1063 :63)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1065 :12) // this (ThisExpression)
%3 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1065 :12) // this.player2CheckerCount (SimpleMemberAccessExpression)
%4 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1065 :39)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1066 :12) // this (ThisExpression)
%6 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1066 :12) // this.player1CheckerCount (SimpleMemberAccessExpression)
%7 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1066 :39)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Game.UpdateMatchNumber$int$(i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1070 :8) {
^entry (%_newActiveNumber : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1070 :38)
cbde.store %_newActiveNumber, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1070 :38)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1072 :12) // Not a variable of known type: actualMatch
%2 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1072 :12) // actualMatch.matchActiveNumber (SimpleMemberAccessExpression)
%3 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1072 :44)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Game.SendMessage$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1075 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1075 :32)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1075 :32)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1075 :47)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1075 :47)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GameManager
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1077 :36) // Not a variable of known type: actualMatch
%3 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1077 :36) // actualMatch.matchActiveNumber (SimpleMemberAccessExpression)
%4 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1077 :67) // Not a variable of known type: localPlayerNumber
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1077 :86) // Not a variable of known type: message
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1077 :86) // message.Text (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1077 :12) // GameManager.SendMessage(actualMatch.matchActiveNumber, localPlayerNumber, message.Text) (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1078 :12) // Not a variable of known type: messagesList
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1078 :29) // "Player " (StringLiteralExpression)
%10 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1078 :41) // Not a variable of known type: localPlayerNumber
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1078 :29) // Binary expression on unsupported types "Player " + localPlayerNumber
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1078 :61) // ": " (StringLiteralExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1078 :29) // Binary expression on unsupported types "Player " + localPlayerNumber + ": "
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1078 :68) // Not a variable of known type: message
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1078 :68) // message.Text (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1078 :29) // Binary expression on unsupported types "Player " + localPlayerNumber + ": " + message.Text
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1078 :12) // messagesList.Add("Player " + localPlayerNumber + ": " + message.Text) (InvocationExpression)
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1079 :12) // Not a variable of known type: message
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1079 :12) // message.Clear() (InvocationExpression)
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1080 :12) // Not a variable of known type: messageButton
%21 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1080 :12) // messageButton.IsEnabled (SimpleMemberAccessExpression)
%22 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1080 :38) // false
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Game.RecieveMessage$string.string$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1083 :8) {
^entry (%_newMesage : none, %_playerSource : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1083 :35)
cbde.store %_newMesage, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1083 :35)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1083 :53)
cbde.store %_playerSource, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1083 :53)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1085 :12) // Not a variable of known type: messagesList
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1085 :29) // Not a variable of known type: playerSource
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1085 :44) // Not a variable of known type: newMesage
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1085 :29) // Binary expression on unsupported types playerSource + newMesage
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1085 :12) // messagesList.Add(playerSource + newMesage) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Game.ReportPlayer$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1088 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1088 :34)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1088 :34)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1088 :49)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1088 :49)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1090 :17) // Not a variable of known type: ReportWindowOpen
%3 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1090 :16) // !ReportWindowOpen (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1090 :16)

^1: // SimpleBlock
%4 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1092 :77) // Not a variable of known type: localPlayerNumber
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1092 :96) // Not a variable of known type: actualMatch
%6 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1092 :96) // actualMatch.matchActiveNumber (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1092 :52) // new Windows.ReportWindow(localPlayerNumber, actualMatch.matchActiveNumber) (ObjectCreationExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1093 :16) // Not a variable of known type: reportWindow
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1093 :16) // reportWindow.Show() (InvocationExpression)
%11 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1094 :35) // true
br ^2

^2: // ExitBlock
return

}
func @_CheckersCliente.Game.EnableMessageButton$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1098 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1098 :41)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1098 :41)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1098 :56)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1098 :56)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1100 :17) // string (PredefinedType)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1100 :43) // Not a variable of known type: message
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1100 :43) // message.Text (SimpleMemberAccessExpression)
%5 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1100 :17) // string.IsNullOrWhiteSpace(message.Text) (InvocationExpression)
%6 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1100 :16) // !string.IsNullOrWhiteSpace(message.Text) (LogicalNotExpression)
cond_br %6, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1100 :16)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1102 :16) // Not a variable of known type: messageButton
%8 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1102 :16) // messageButton.IsEnabled (SimpleMemberAccessExpression)
%9 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1102 :42) // true
br ^2

^2: // ExitBlock
return

}
func @_CheckersCliente.Game.CloseReportWindow$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1106 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1108 :12) // Not a variable of known type: reportButton
%1 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1108 :12) // reportButton.IsEnabled (SimpleMemberAccessExpression)
%2 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1108 :37) // false
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1109 :12) // Not a variable of known type: reportButton
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1109 :12) // reportButton.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: Visibility
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1109 :38) // Visibility.Hidden (SimpleMemberAccessExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Game.WindowClose$object.System.ComponentModel.CancelEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1112 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1112 :33)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1112 :33)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1112 :48)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1112 :48)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1114 :16) // Not a variable of known type: matchEnd
cond_br %2, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1114 :16)

^1: // SimpleBlock
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1116 :16) // Not a variable of known type: e
%4 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1116 :16) // e.Cancel (SimpleMemberAccessExpression)
%5 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1116 :27) // false
br ^3

^2: // SimpleBlock
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1120 :16) // Not a variable of known type: e
%7 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1120 :16) // e.Cancel (SimpleMemberAccessExpression)
%8 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1120 :27) // true
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.Game.AbandonedGame$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1124 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1126 :23) // true
%1 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1128 :16) // Not a variable of known type: localPlayerNumber
%2 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1128 :37)
%3 = cmpi "eq", %1, %2 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1128 :16)
cond_br %3, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1128 :16)

^1: // SimpleBlock
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1130 :37) // Not a variable of known type: actualMatch
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1130 :37) // actualMatch.playerOneData (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1130 :28) // new Menu(actualMatch.playerOneData) (ObjectCreationExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1131 :16) // Not a variable of known type: menu
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1131 :16) // menu.Show() (InvocationExpression)
br ^3

^2: // SimpleBlock
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1135 :37) // Not a variable of known type: actualMatch
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1135 :37) // actualMatch.playerTwoData (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1135 :28) // new Menu(actualMatch.playerTwoData) (ObjectCreationExpression)
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1136 :16) // Not a variable of known type: menu
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1136 :16) // menu.Show() (InvocationExpression)
br ^3

^3: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Windows
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1138 :12) // Windows.DialogWindowManager (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1138 :56) // "El otro jugador se ha desconectado" (StringLiteralExpression)
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1138 :12) // Windows.DialogWindowManager.ShowErrorWindow("El otro jugador se ha desconectado") (InvocationExpression)
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1139 :12) // this (ThisExpression)
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :1139 :12) // this.Close() (InvocationExpression)
br ^4

^4: // ExitBlock
return

}
