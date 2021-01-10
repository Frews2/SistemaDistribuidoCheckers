func @_CheckersCliente.PlayerCallbackHandler.GetAdminLoginResult$CheckersCliente.MainService.LoginResult.CheckersCliente.MainService.Jugador$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :23 :8) {
^entry (%_resultadoLogin : none, %_playerLoged : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :23 :40)
cbde.store %_resultadoLogin, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :23 :40)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :23 :68)
cbde.store %_playerLoged, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :23 :68)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :25 :16) // Not a variable of known type: resultadoLogin
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :25 :34) // Not a variable of known type: LoginResult
%4 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :25 :34) // LoginResult.EsAdmin (SimpleMemberAccessExpression)
%5 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :25 :16) // comparison of unknown type: resultadoLogin == LoginResult.EsAdmin
cond_br %5, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :25 :16)

^1: // SimpleBlock
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :27 :52) // Not a variable of known type: playerLoged
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :27 :38) // new AdminPage(playerLoged) (ObjectCreationExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :28 :16) // Not a variable of known type: adminPage
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :28 :16) // adminPage.Show() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :29 :30) // App.Current (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :29 :30) // App.Current.Windows (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :29 :30) // App.Current.Windows.OfType<LogIn>() (InvocationExpression)
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :29 :30) // App.Current.Windows.OfType<LogIn>().FirstOrDefault() (InvocationExpression)
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :30 :16) // Not a variable of known type: logIn
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :30 :16) // logIn.Close() (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :34 :20) // Not a variable of known type: resultadoLogin
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :34 :38) // Not a variable of known type: LoginResult
%20 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :34 :38) // LoginResult.PasswordIncorrecto (SimpleMemberAccessExpression)
%21 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :34 :20) // comparison of unknown type: resultadoLogin == LoginResult.PasswordIncorrecto
cond_br %21, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :34 :20)

^4: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :36 :56) // Resources.IncorrectPasswordMessage (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :36 :20) // DialogWindowManager.ShowErrorWindow(Resources.IncorrectPasswordMessage) (InvocationExpression)
br ^3

^5: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :40 :56) // Resources.LoggedPlayer (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :40 :20) // DialogWindowManager.ShowErrorWindow(Resources.LoggedPlayer) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.PlayerCallbackHandler.GetPlayerLoginResult$CheckersCliente.MainService.LoginResult.CheckersCliente.MainService.Jugador$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :51 :8) {
^entry (%_resultadoLogin : none, %_playerLoged : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :51 :41)
cbde.store %_resultadoLogin, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :51 :41)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :51 :69)
cbde.store %_playerLoged, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :51 :69)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :53 :16) // Not a variable of known type: resultadoLogin
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :53 :34) // Not a variable of known type: LoginResult
%4 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :53 :34) // LoginResult.ExisteJugadorVerificado (SimpleMemberAccessExpression)
%5 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :53 :16) // comparison of unknown type: resultadoLogin == LoginResult.ExisteJugadorVerificado
cond_br %5, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :53 :16)

^1: // SimpleBlock
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :55 :37) // Not a variable of known type: playerLoged
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :55 :28) // new Menu(playerLoged) (ObjectCreationExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :56 :16) // Not a variable of known type: menu
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :56 :16) // menu.Show() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :57 :30) // App.Current (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :57 :30) // App.Current.Windows (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :57 :30) // App.Current.Windows.OfType<LogIn>() (InvocationExpression)
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :57 :30) // App.Current.Windows.OfType<LogIn>().FirstOrDefault() (InvocationExpression)
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :58 :16) // Not a variable of known type: logIn
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :58 :16) // logIn.Close() (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :62 :20) // Not a variable of known type: resultadoLogin
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :62 :38) // Not a variable of known type: LoginResult
%20 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :62 :38) // LoginResult.ExisteJugadorNoVerificado (SimpleMemberAccessExpression)
%21 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :62 :20) // comparison of unknown type: resultadoLogin == LoginResult.ExisteJugadorNoVerificado
cond_br %21, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :62 :20)

^4: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :64 :56) // Resources.NotVerifiedMessage (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :64 :20) // DialogWindowManager.ShowErrorWindow(Resources.NotVerifiedMessage) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :65 :34) // App.Current (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :65 :34) // App.Current.Windows (SimpleMemberAccessExpression)
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :65 :34) // App.Current.Windows.OfType<LogIn>() (InvocationExpression)
%27 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :65 :34) // App.Current.Windows.OfType<LogIn>().FirstOrDefault() (InvocationExpression)
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :66 :20) // Not a variable of known type: login
%30 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :66 :20) // login.NavigationService (SimpleMemberAccessExpression)
%31 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :66 :74) // Not a variable of known type: playerLoged
%32 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :66 :53) // new FinalizeRegister(playerLoged) (ObjectCreationExpression)
%33 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :66 :20) // login.NavigationService.Navigate(new FinalizeRegister(playerLoged)) (InvocationExpression)
br ^3

^5: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: LoginBanCheck
%34 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :70 :34) // Not a variable of known type: resultadoLogin
%35 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :70 :20) // LoginBanCheck(resultadoLogin) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.PlayerCallbackHandler.LoginBanCheck$CheckersCliente.MainService.LoginResult$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :75 :8) {
^entry (%_resultadoLogin : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :75 :35)
cbde.store %_resultadoLogin, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :75 :35)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :77 :16) // Not a variable of known type: resultadoLogin
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :77 :34) // Not a variable of known type: LoginResult
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :77 :34) // LoginResult.EsBaneado (SimpleMemberAccessExpression)
%4 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :77 :16) // comparison of unknown type: resultadoLogin == LoginResult.EsBaneado
cond_br %4, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :77 :16)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :79 :52) // Resources.BannedLoginMessage (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :79 :16) // DialogWindowManager.ShowErrorWindow(Resources.BannedLoginMessage) (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :83 :20) // Not a variable of known type: resultadoLogin
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :83 :38) // Not a variable of known type: LoginResult
%9 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :83 :38) // LoginResult.NoExisteJugador (SimpleMemberAccessExpression)
%10 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :83 :20) // comparison of unknown type: resultadoLogin == LoginResult.NoExisteJugador
cond_br %10, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :83 :20)

^4: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :85 :56) // Resources.DoesNotExistLoginMessage (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :85 :20) // DialogWindowManager.ShowErrorWindow(Resources.DoesNotExistLoginMessage) (InvocationExpression)
br ^3

^5: // BinaryBranchBlock
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :89 :24) // Not a variable of known type: resultadoLogin
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :89 :42) // Not a variable of known type: LoginResult
%15 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :89 :42) // LoginResult.LOGGED_PLAYER (SimpleMemberAccessExpression)
%16 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :89 :24) // comparison of unknown type: resultadoLogin == LoginResult.LOGGED_PLAYER
cond_br %16, ^6, ^7 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :89 :24)

^6: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :91 :60) // Resources.LoggedPlayer (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :91 :24) // DialogWindowManager.ShowErrorWindow(Resources.LoggedPlayer) (InvocationExpression)
br ^3

^7: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :95 :60) // Resources.IncorrectPasswordMessage (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :95 :24) // DialogWindowManager.ShowErrorWindow(Resources.IncorrectPasswordMessage) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.PlayerCallbackHandler.GetSaveResult$CheckersCliente.MainService.SaveResult.CheckersCliente.MainService.Jugador$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :106 :8) {
^entry (%_saveResult : none, %_newPlayer : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :106 :34)
cbde.store %_saveResult, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :106 :34)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :106 :57)
cbde.store %_newPlayer, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :106 :57)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :108 :15) // Not a variable of known type: saveResult
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :108 :29) // Not a variable of known type: SaveResult
%4 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :108 :29) // SaveResult.JugadorGuardado (SimpleMemberAccessExpression)
%5 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :108 :15) // comparison of unknown type: saveResult == SaveResult.JugadorGuardado
cond_br %5, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :108 :15)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :110 :54) // Resources.SuccessfulRegisterMessage (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :110 :16) // DialogWindowManager.ShowSuccessWindow(Resources.SuccessfulRegisterMessage) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :111 :30) // App.Current (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :111 :30) // App.Current.Windows (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :111 :30) // App.Current.Windows.OfType<LogIn>() (InvocationExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :111 :30) // App.Current.Windows.OfType<LogIn>().FirstOrDefault() (InvocationExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :112 :16) // Not a variable of known type: login
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :112 :16) // login.NavigationService (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :112 :70) // Not a variable of known type: newPlayer
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :112 :49) // new FinalizeRegister(newPlayer) (ObjectCreationExpression)
%17 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :112 :16) // login.NavigationService.Navigate(new FinalizeRegister(newPlayer)) (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :116 :20) // Not a variable of known type: saveResult
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :116 :34) // Not a variable of known type: SaveResult
%20 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :116 :34) // SaveResult.NicknameExistente (SimpleMemberAccessExpression)
%21 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :116 :20) // comparison of unknown type: saveResult == SaveResult.NicknameExistente
cond_br %21, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :116 :20)

^4: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :118 :56) // Resources.DuplicateNicknameMessage (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :118 :20) // DialogWindowManager.ShowErrorWindow(Resources.DuplicateNicknameMessage) (InvocationExpression)
br ^3

^5: // BinaryBranchBlock
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :122 :24) // Not a variable of known type: saveResult
%25 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :122 :38) // Not a variable of known type: SaveResult
%26 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :122 :38) // SaveResult.CorreoExistente (SimpleMemberAccessExpression)
%27 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :122 :24) // comparison of unknown type: saveResult == SaveResult.CorreoExistente
cond_br %27, ^6, ^7 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :122 :24)

^6: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%28 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :124 :60) // Resources.DuplicateEmailMessage (SimpleMemberAccessExpression)
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :124 :24) // DialogWindowManager.ShowErrorWindow(Resources.DuplicateEmailMessage) (InvocationExpression)
br ^3

^7: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%30 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :128 :60) // Resources.UnexplainedErrorMessage (SimpleMemberAccessExpression)
%31 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :128 :24) // DialogWindowManager.ShowErrorWindow(Resources.UnexplainedErrorMessage) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.PlayerCallbackHandler.GetVerifyResult$CheckersCliente.MainService.VerificationResult$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :134 :8) {
^entry (%_resultadoVerificacion : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :134 :36)
cbde.store %_resultadoVerificacion, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :134 :36)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :136 :15) // Not a variable of known type: resultadoVerificacion
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :136 :40) // Not a variable of known type: VerificationResult
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :136 :40) // VerificationResult.VerificacionExistosa (SimpleMemberAccessExpression)
%4 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :136 :15) // comparison of unknown type: resultadoVerificacion == VerificationResult.VerificacionExistosa
cond_br %4, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :136 :15)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :138 :54) // Resources.SuccessfulVerificationMessage (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :138 :16) // DialogWindowManager.ShowSuccessWindow(Resources.SuccessfulVerificationMessage) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :139 :30) // App.Current (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :139 :30) // App.Current.Windows (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :139 :30) // App.Current.Windows.OfType<LogIn>() (InvocationExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :139 :30) // App.Current.Windows.OfType<LogIn>().FirstOrDefault() (InvocationExpression)
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :140 :16) // Not a variable of known type: logIn
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :140 :16) // logIn.NavigationService (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :140 :49) // new LogInPage() (ObjectCreationExpression)
%15 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :140 :16) // logIn.NavigationService.Navigate(new LogInPage()) (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :142 :21) // Not a variable of known type: resultadoVerificacion
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :142 :46) // Not a variable of known type: VerificationResult
%18 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :142 :46) // VerificationResult.NoExisteJugador (SimpleMemberAccessExpression)
%19 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :142 :21) // comparison of unknown type: resultadoVerificacion == VerificationResult.NoExisteJugador
cond_br %19, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :142 :21)

^4: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :144 :52) // Resources.DoesNotExistLoginMessage (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :144 :16) // DialogWindowManager.ShowErrorWindow(Resources.DoesNotExistLoginMessage) (InvocationExpression)
br ^3

^5: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :148 :52) // Resources.WrongPINMessage (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :148 :16) // DialogWindowManager.ShowErrorWindow(Resources.WrongPINMessage) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.PlayerCallbackHandler.GetResendMailResult$CheckersCliente.MainService.MailResult.string$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :152 :8) {
^entry (%_emailResult : none, %_playerNickname : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :152 :40)
cbde.store %_emailResult, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :152 :40)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :152 :64)
cbde.store %_playerNickname, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :152 :64)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :154 :16) // Not a variable of known type: emailResult
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :154 :31) // Not a variable of known type: MailResult
%4 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :154 :31) // MailResult.MailSend (SimpleMemberAccessExpression)
%5 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :154 :16) // comparison of unknown type: emailResult == MailResult.MailSend
cond_br %5, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :154 :16)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :156 :54) // Resources.EmailSentMessage (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :156 :16) // DialogWindowManager.ShowSuccessWindow(Resources.EmailSentMessage) (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :160 :20) // Not a variable of known type: emailResult
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :160 :35) // Not a variable of known type: MailResult
%10 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :160 :35) // MailResult.UnknownPlayer (SimpleMemberAccessExpression)
%11 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :160 :20) // comparison of unknown type: emailResult == MailResult.UnknownPlayer
cond_br %11, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :160 :20)

^4: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :162 :56) // Resources.DoesNotExistLoginMessage (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :162 :20) // DialogWindowManager.ShowErrorWindow(Resources.DoesNotExistLoginMessage) (InvocationExpression)
br ^3

^5: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :166 :56) // Resources.EmailNotSentMessage (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :166 :20) // DialogWindowManager.ShowErrorWindow(Resources.EmailNotSentMessage) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.PlayerCallbackHandler.GetMailResult$CheckersCliente.MainService.MailResult.string.string$(none, none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :172 :8) {
^entry (%_emailResult : none, %_playerNickname : none, %_securityQuestion : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :172 :34)
cbde.store %_emailResult, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :172 :34)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :172 :58)
cbde.store %_playerNickname, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :172 :58)
%2 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :172 :81)
cbde.store %_securityQuestion, %2 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :172 :81)
br ^0

^0: // BinaryBranchBlock
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :174 :15) // Not a variable of known type: emailResult
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :174 :30) // Not a variable of known type: MailResult
%5 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :174 :30) // MailResult.MailSend (SimpleMemberAccessExpression)
%6 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :174 :15) // comparison of unknown type: emailResult == MailResult.MailSend
cond_br %6, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :174 :15)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :176 :54) // Resources.EmailSentMessage (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :176 :16) // DialogWindowManager.ShowSuccessWindow(Resources.EmailSentMessage) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :177 :30) // App.Current (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :177 :30) // App.Current.Windows (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :177 :30) // App.Current.Windows.OfType<LogIn>() (InvocationExpression)
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :177 :30) // App.Current.Windows.OfType<LogIn>().FirstOrDefault() (InvocationExpression)
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :178 :16) // Not a variable of known type: login
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :178 :16) // login.EnableNavigation() (InvocationExpression)
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :179 :16) // Not a variable of known type: login
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :179 :16) // login.NavigationService (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :179 :75) // Not a variable of known type: playerNickname
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :179 :90) // Not a variable of known type: securityQuestion
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :179 :49) // new VerificatePasswordPin(playerNickname,securityQuestion) (ObjectCreationExpression)
%21 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :179 :16) // login.NavigationService.Navigate(new VerificatePasswordPin(playerNickname,securityQuestion)) (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :183 :20) // Not a variable of known type: emailResult
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :183 :35) // Not a variable of known type: MailResult
%24 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :183 :35) // MailResult.UnknownPlayer (SimpleMemberAccessExpression)
%25 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :183 :20) // comparison of unknown type: emailResult == MailResult.UnknownPlayer
cond_br %25, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :183 :20)

^4: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :185 :56) // Resources.DoesNotExistLoginMessage (SimpleMemberAccessExpression)
%27 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :185 :20) // DialogWindowManager.ShowErrorWindow(Resources.DoesNotExistLoginMessage) (InvocationExpression)
br ^3

^5: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%28 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :189 :56) // Resources.EmailNotSentMessage (SimpleMemberAccessExpression)
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :189 :20) // DialogWindowManager.ShowErrorWindow(Resources.EmailNotSentMessage) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.PlayerCallbackHandler.GetPinResult$CheckersCliente.MainService.PinResult.string$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :194 :8) {
^entry (%_pinResult : none, %_playerNickname : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :194 :33)
cbde.store %_pinResult, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :194 :33)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :194 :54)
cbde.store %_playerNickname, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :194 :54)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :196 :15) // Not a variable of known type: pinResult
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :196 :28) // Not a variable of known type: PinResult
%4 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :196 :28) // PinResult.VerifiedPin (SimpleMemberAccessExpression)
%5 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :196 :15) // comparison of unknown type: pinResult == PinResult.VerifiedPin
cond_br %5, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :196 :15)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :198 :30) // App.Current (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :198 :30) // App.Current.Windows (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :198 :30) // App.Current.Windows.OfType<LogIn>() (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :198 :30) // App.Current.Windows.OfType<LogIn>().FirstOrDefault() (InvocationExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :199 :16) // Not a variable of known type: login
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :199 :16) // login.EnableNavigation() (InvocationExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :200 :16) // Not a variable of known type: login
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :200 :16) // login.NavigationService (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :200 :68) // Not a variable of known type: playerNickname
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :200 :49) // new ChangePassword(playerNickname) (ObjectCreationExpression)
%17 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :200 :16) // login.NavigationService.Navigate(new ChangePassword(playerNickname)) (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :204 :20) // Not a variable of known type: pinResult
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :204 :33) // Not a variable of known type: PinResult
%20 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :204 :33) // PinResult.WrongAnswer (SimpleMemberAccessExpression)
%21 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :204 :20) // comparison of unknown type: pinResult == PinResult.WrongAnswer
cond_br %21, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :204 :20)

^4: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :206 :56) // Resources.WrongAnswerMessage (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :206 :20) // DialogWindowManager.ShowErrorWindow(Resources.WrongAnswerMessage) (InvocationExpression)
br ^3

^5: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :210 :56) // Resources.WrongPINMessage (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :210 :20) // DialogWindowManager.ShowErrorWindow(Resources.WrongPINMessage) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.PlayerCallbackHandler.GetPasswordChangeResult$CheckersCliente.MainService.PasswordChangeResult$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :215 :8) {
^entry (%_passwordChangeResult : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :215 :44)
cbde.store %_passwordChangeResult, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :215 :44)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :217 :16) // Not a variable of known type: passwordChangeResult
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :217 :40) // Not a variable of known type: PasswordChangeResult
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :217 :40) // PasswordChangeResult.ChangedPassword (SimpleMemberAccessExpression)
%4 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :217 :16) // comparison of unknown type: passwordChangeResult == PasswordChangeResult.ChangedPassword
cond_br %4, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :217 :16)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :219 :54) // Resources.SuccessfulPasswordChangeMessage (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :219 :16) // DialogWindowManager.ShowSuccessWindow(Resources.SuccessfulPasswordChangeMessage) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :220 :30) // App.Current (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :220 :30) // App.Current.Windows (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :220 :30) // App.Current.Windows.OfType<LogIn>() (InvocationExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :220 :30) // App.Current.Windows.OfType<LogIn>().FirstOrDefault() (InvocationExpression)
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :221 :16) // Not a variable of known type: login
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :221 :16) // login.NavigationService (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :221 :49) // new LogInPage() (ObjectCreationExpression)
%15 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :221 :16) // login.NavigationService.Navigate(new LogInPage()) (InvocationExpression)
br ^3

^2: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :226 :52) // Resources.PasswordChangeErrorMessage (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :226 :16) // DialogWindowManager.ShowErrorWindow(Resources.PasswordChangeErrorMessage) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.PlayerCallbackHandler.SendActualPlayer$CheckersCliente.MainService.DataObtainedResult.CheckersCliente.MainService.Jugador$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :231 :8) {
^entry (%_dataObtainedResult : none, %_actualPlayer : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :231 :37)
cbde.store %_dataObtainedResult, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :231 :37)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :231 :76)
cbde.store %_actualPlayer, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :231 :76)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :233 :16) // Not a variable of known type: dataObtainedResult
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :233 :38) // Not a variable of known type: DataObtainedResult
%4 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :233 :38) // DataObtainedResult.DataObtained (SimpleMemberAccessExpression)
%5 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :233 :16) // comparison of unknown type: dataObtainedResult == DataObtainedResult.DataObtained
cond_br %5, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :233 :16)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :235 :28) // App.Current (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :235 :28) // App.Current.Windows (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :235 :28) // App.Current.Windows.OfType<Menu>() (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :235 :28) // App.Current.Windows.OfType<Menu>().FirstOrDefault() (InvocationExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :236 :16) // Not a variable of known type: menu
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :236 :16) // menu.EnableNavigation() (InvocationExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :237 :16) // Not a variable of known type: menu
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :237 :16) // menu.NavigationService (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :237 :70) // Not a variable of known type: actualPlayer
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :237 :48) // new UserConfiguration(actualPlayer) (ObjectCreationExpression)
%17 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :237 :16) // menu.NavigationService.Navigate(new UserConfiguration(actualPlayer)) (InvocationExpression)
br ^3

^2: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resources
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :241 :52) // Resources.NoConnectionMessage (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :241 :16) // DialogWindowManager.ShowErrorWindow(Resources.NoConnectionMessage) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
