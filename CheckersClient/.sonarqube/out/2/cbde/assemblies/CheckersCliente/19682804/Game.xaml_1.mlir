func @_CheckersCliente.Game.RefreshMessageList$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :70 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :72 :12) // Not a variable of known type: chatFrame
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :72 :31) // new GameChat() (ObjectCreationExpression)
%2 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :72 :12) // chatFrame.Navigate(new GameChat()) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Game.RegresarAMenu$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :75 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :75 :35)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :75 :35)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :75 :50)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :75 :50)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GameMatchManager
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :77 :46) // Not a variable of known type: actualMatch
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :77 :59) // Not a variable of known type: localPlayer
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :77 :12) // GameMatchManager.LeaveMatchmaking(actualMatch, localPlayer) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Game.EndTurnNoMovement$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :80 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :80 :39)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :80 :39)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :80 :54)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :80 :54)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :82 :12) // this (ThisExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :82 :12) // this.EndTurn() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function Movement(none, none), it contains poisonous unsupported syntaxes

// Skipping function GenerateGame(), it contains poisonous unsupported syntaxes

func @_CheckersCliente.Game.RemarkClickedButton$System.Windows.Controls.Button$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :497 :8) {
^entry (%_buttonSelected : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :497 :41)
cbde.store %_buttonSelected, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :497 :41)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :499 :12) // Not a variable of known type: buttonSelected
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :499 :12) // buttonSelected.BorderThickness (SimpleMemberAccessExpression)
%3 = constant 3 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :499 :59)
%4 = constant 3 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :499 :62)
%5 = constant 3 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :499 :65)
%6 = constant 3 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :499 :68)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :499 :45) // new Thickness(3, 3, 3, 3) (ObjectCreationExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :500 :12) // Not a variable of known type: buttonSelected
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :500 :12) // buttonSelected.BorderBrush (SimpleMemberAccessExpression)
// Entity from another assembly: Brushes
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :500 :41) // Brushes.Snow (SimpleMemberAccessExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Game.DismissButtonClick$System.Windows.Controls.Button$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :503 :8) {
^entry (%_buttonSelected : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :503 :40)
cbde.store %_buttonSelected, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :503 :40)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :505 :12) // Not a variable of known type: buttonSelected
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :505 :12) // buttonSelected.BorderThickness (SimpleMemberAccessExpression)
%3 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :505 :59)
%4 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :505 :62)
%5 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :505 :65)
%6 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :505 :68)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :505 :45) // new Thickness(1, 1, 1, 1) (ObjectCreationExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :506 :12) // Not a variable of known type: buttonSelected
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :506 :12) // buttonSelected.BorderBrush (SimpleMemberAccessExpression)
// Entity from another assembly: Brushes
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :506 :41) // Brushes.SlateGray (SimpleMemberAccessExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function UpdateCheckersGuiPosition(none), it contains poisonous unsupported syntaxes

// Skipping function Player1MoreJumpCheck(), it contains poisonous unsupported syntaxes

// Skipping function Player2MoreJumpCheck(), it contains poisonous unsupported syntaxes

// Skipping function KingMoreJumpAvaliable(), it contains poisonous unsupported syntaxes

// Skipping function IsKingChecker(), it contains poisonous unsupported syntaxes

// Skipping function KingMove(), it contains poisonous unsupported syntaxes

// Skipping function ValidateKingJump(), it contains poisonous unsupported syntaxes

// Skipping function EndTurn(), it contains poisonous unsupported syntaxes

// Skipping function EndSecondPlayerTurn(), it contains poisonous unsupported syntaxes

func @_CheckersCliente.Game.InvalidClick$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :912 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :914 :37) // false
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DismissButtonClick
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :915 :31) // Not a variable of known type: previousButton
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :915 :12) // DismissButtonClick(previousButton) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Game.FinishGame$int.int$(i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :918 :8) {
^entry (%_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :918 :31)
cbde.store %_playerTwoCheckers, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :918 :31)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :918 :54)
cbde.store %_playerOneCheckers, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :918 :54)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :920 :20)
%3 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :920 :41)
%4 = cmpi "eq", %2, %3 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :920 :20)
cond_br %4, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :920 :20)

^1: // SimpleBlock
// Entity from another assembly: MessageBox
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :922 :62) // "PLAYER TWO WINS!" (StringLiteralExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :922 :82) // "GAME OVER" (StringLiteralExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :922 :46) // MessageBox.Show("PLAYER TWO WINS!", "GAME OVER") (InvocationExpression)
br ^3

^2: // SimpleBlock
// Entity from another assembly: MessageBox
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :928 :62) // "PLAYER ONE WINS!" (StringLiteralExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :928 :82) // "GAME OVER" (StringLiteralExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :928 :46) // MessageBox.Show("PLAYER ONE WINS!", "GAME OVER") (InvocationExpression)
br ^3

^3: // SimpleBlock
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :931 :37) // Not a variable of known type: localPlayer
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :931 :28) // new Menu(localPlayer) (ObjectCreationExpression)
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :932 :16) // Not a variable of known type: menu
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :932 :16) // menu.Show() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :933 :28) // App.Current (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :933 :28) // App.Current.Windows (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :933 :28) // App.Current.Windows.OfType<Game>() (InvocationExpression)
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :933 :28) // App.Current.Windows.OfType<Game>().FirstOrDefault() (InvocationExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :934 :16) // Not a variable of known type: game
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :934 :16) // game.Close() (InvocationExpression)
br ^4

^4: // ExitBlock
return

}
func @_CheckersCliente.Game.UpdateCheckersCount$int.int$(i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :937 :8) {
^entry (%_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :937 :40)
cbde.store %_playerTwoCheckers, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :937 :40)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :937 :63)
cbde.store %_playerOneCheckers, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :937 :63)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :939 :12) // this (ThisExpression)
%3 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :939 :12) // this.player2CheckerCount (SimpleMemberAccessExpression)
%4 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :939 :39)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :940 :12) // this (ThisExpression)
%6 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :940 :12) // this.player1CheckerCount (SimpleMemberAccessExpression)
%7 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :940 :39)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.Game.UpdateMatchNumber$int$(i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :944 :8) {
^entry (%_newActiveNumber : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :944 :38)
cbde.store %_newActiveNumber, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :944 :38)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :946 :12) // Not a variable of known type: actualMatch
%2 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :946 :12) // actualMatch.matchActiveNumber (SimpleMemberAccessExpression)
%3 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Game.xaml.cs" :946 :44)
br ^1

^1: // ExitBlock
return

}
