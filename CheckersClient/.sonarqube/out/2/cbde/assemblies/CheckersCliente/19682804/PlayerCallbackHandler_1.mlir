func @_CheckersCliente.PlayerCallbackHandler.GetLoginResult$CheckersCliente.MainService.LoginResult.CheckersCliente.MainService.Jugador$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :25 :8) {
^entry (%_resultado : none, %_playerLoged : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :25 :35)
cbde.store %_resultado, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :25 :35)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :25 :58)
cbde.store %_playerLoged, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :25 :58)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :27 :16) // Not a variable of known type: resultado
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :27 :29) // Not a variable of known type: LoginResult
%4 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :27 :29) // LoginResult.EsAdmin (SimpleMemberAccessExpression)
%5 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :27 :16) // comparison of unknown type: resultado == LoginResult.EsAdmin
cond_br %5, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :27 :16)

^1: // SimpleBlock
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :29 :38) // new AdminPage() (ObjectCreationExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :30 :16) // Not a variable of known type: adminPage
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :30 :16) // adminPage.Show() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :31 :30) // App.Current (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :31 :30) // App.Current.Windows (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :31 :30) // App.Current.Windows.OfType<LogIn>() (InvocationExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :31 :30) // App.Current.Windows.OfType<LogIn>().FirstOrDefault() (InvocationExpression)
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :32 :16) // Not a variable of known type: logIn
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :32 :16) // logIn.Close() (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :36 :20) // Not a variable of known type: resultado
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :36 :33) // Not a variable of known type: LoginResult
%19 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :36 :33) // LoginResult.ExisteJugadorVerificado (SimpleMemberAccessExpression)
%20 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :36 :20) // comparison of unknown type: resultado == LoginResult.ExisteJugadorVerificado
cond_br %20, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :36 :20)

^4: // SimpleBlock
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :38 :41) // Not a variable of known type: playerLoged
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :38 :32) // new Menu(playerLoged) (ObjectCreationExpression)
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :39 :20) // Not a variable of known type: menu
%25 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :39 :20) // menu.Show() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :40 :34) // App.Current (SimpleMemberAccessExpression)
%27 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :40 :34) // App.Current.Windows (SimpleMemberAccessExpression)
%28 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :40 :34) // App.Current.Windows.OfType<LogIn>() (InvocationExpression)
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :40 :34) // App.Current.Windows.OfType<LogIn>().FirstOrDefault() (InvocationExpression)
%31 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :41 :20) // Not a variable of known type: logIn
%32 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :41 :20) // logIn.Close() (InvocationExpression)
br ^3

^5: // BinaryBranchBlock
%33 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :45 :24) // Not a variable of known type: resultado
%34 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :45 :37) // Not a variable of known type: LoginResult
%35 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :45 :37) // LoginResult.ExisteJugadorNoVerificado (SimpleMemberAccessExpression)
%36 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :45 :24) // comparison of unknown type: resultado == LoginResult.ExisteJugadorNoVerificado
cond_br %36, ^6, ^7 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :45 :24)

^6: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
%37 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :47 :60) // "No ha verificado su cuenta, porfavor verificarla" (StringLiteralExpression)
%38 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :47 :24) // DialogWindowManager.ShowErrorWindow("No ha verificado su cuenta, porfavor verificarla") (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%39 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :48 :38) // App.Current (SimpleMemberAccessExpression)
%40 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :48 :38) // App.Current.Windows (SimpleMemberAccessExpression)
%41 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :48 :38) // App.Current.Windows.OfType<LogIn>() (InvocationExpression)
%42 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :48 :38) // App.Current.Windows.OfType<LogIn>().FirstOrDefault() (InvocationExpression)
%44 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :49 :24) // Not a variable of known type: login
%45 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :49 :24) // login.NavigationService (SimpleMemberAccessExpression)
%46 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :49 :78) // Not a variable of known type: playerLoged
%47 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :49 :57) // new FinalizeRegister(playerLoged) (ObjectCreationExpression)
%48 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :49 :24) // login.NavigationService.Navigate(new FinalizeRegister(playerLoged)) (InvocationExpression)
br ^3

^7: // BinaryBranchBlock
%49 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :53 :28) // Not a variable of known type: resultado
%50 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :53 :41) // Not a variable of known type: LoginResult
%51 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :53 :41) // LoginResult.NoExisteJugador (SimpleMemberAccessExpression)
%52 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :53 :28) // comparison of unknown type: resultado == LoginResult.NoExisteJugador
cond_br %52, ^8, ^9 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :53 :28)

^8: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
%53 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :55 :64) // "No existe jugador" (StringLiteralExpression)
%54 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :55 :28) // DialogWindowManager.ShowErrorWindow("No existe jugador") (InvocationExpression)
br ^3

^9: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
%55 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :59 :64) // "Verifica tu contraseña" (StringLiteralExpression)
%56 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :59 :28) // DialogWindowManager.ShowErrorWindow("Verifica tu contraseña") (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.PlayerCallbackHandler.GetSaveResult$CheckersCliente.MainService.SaveResult.CheckersCliente.MainService.Jugador$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :68 :8) {
^entry (%_saveResult : none, %_newPlayer : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :68 :34)
cbde.store %_saveResult, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :68 :34)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :68 :57)
cbde.store %_newPlayer, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :68 :57)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :70 :15) // Not a variable of known type: saveResult
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :70 :29) // Not a variable of known type: SaveResult
%4 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :70 :29) // SaveResult.JugadorGuardado (SimpleMemberAccessExpression)
%5 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :70 :15) // comparison of unknown type: saveResult == SaveResult.JugadorGuardado
cond_br %5, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :70 :15)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :72 :54) // "Se ha registrado exitosamente, favor de confirmar correo" (StringLiteralExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :72 :16) // DialogWindowManager.ShowSuccessWindow("Se ha registrado exitosamente, favor de confirmar correo") (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :73 :30) // App.Current (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :73 :30) // App.Current.Windows (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :73 :30) // App.Current.Windows.OfType<LogIn>() (InvocationExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :73 :30) // App.Current.Windows.OfType<LogIn>().FirstOrDefault() (InvocationExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :74 :16) // Not a variable of known type: login
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :74 :16) // login.NavigationService (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :74 :70) // Not a variable of known type: newPlayer
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :74 :49) // new FinalizeRegister(newPlayer) (ObjectCreationExpression)
%17 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :74 :16) // login.NavigationService.Navigate(new FinalizeRegister(newPlayer)) (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :78 :20) // Not a variable of known type: saveResult
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :78 :34) // Not a variable of known type: SaveResult
%20 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :78 :34) // SaveResult.NicknameExistente (SimpleMemberAccessExpression)
%21 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :78 :20) // comparison of unknown type: saveResult == SaveResult.NicknameExistente
cond_br %21, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :78 :20)

^4: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :81 :56) // "El nickname ya existe, favor de utilizar otro" (StringLiteralExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :81 :20) // DialogWindowManager.ShowErrorWindow("El nickname ya existe, favor de utilizar otro") (InvocationExpression)
br ^3

^5: // BinaryBranchBlock
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :85 :24) // Not a variable of known type: saveResult
%25 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :85 :38) // Not a variable of known type: SaveResult
%26 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :85 :38) // SaveResult.CorreoExistente (SimpleMemberAccessExpression)
%27 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :85 :24) // comparison of unknown type: saveResult == SaveResult.CorreoExistente
cond_br %27, ^6, ^7 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :85 :24)

^6: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
%28 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :88 :60) // "Ese correo ya esta registrado favor de utilizar otro" (StringLiteralExpression)
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :88 :24) // DialogWindowManager.ShowErrorWindow("Ese correo ya esta registrado favor de utilizar otro") (InvocationExpression)
br ^3

^7: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
%30 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :93 :60) // "A ocurrido un error inesperado, vuelva a intentar" (StringLiteralExpression)
%31 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :93 :24) // DialogWindowManager.ShowErrorWindow("A ocurrido un error inesperado, vuelva a intentar") (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.PlayerCallbackHandler.GetVerifyResult$CheckersCliente.MainService.VerificationResult$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :99 :8) {
^entry (%_resultadoVerificacion : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :99 :36)
cbde.store %_resultadoVerificacion, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :99 :36)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :101 :15) // Not a variable of known type: resultadoVerificacion
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :101 :40) // Not a variable of known type: VerificationResult
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :101 :40) // VerificationResult.VerificacionExistosa (SimpleMemberAccessExpression)
%4 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :101 :15) // comparison of unknown type: resultadoVerificacion == VerificationResult.VerificacionExistosa
cond_br %4, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :101 :15)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :103 :54) // "Se ha verificado correctamente tu cuenta" (StringLiteralExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :103 :16) // DialogWindowManager.ShowSuccessWindow("Se ha verificado correctamente tu cuenta") (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :104 :30) // App.Current (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :104 :30) // App.Current.Windows (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :104 :30) // App.Current.Windows.OfType<LogIn>() (InvocationExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :104 :30) // App.Current.Windows.OfType<LogIn>().FirstOrDefault() (InvocationExpression)
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :105 :16) // Not a variable of known type: logIn
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :105 :16) // logIn.NavigationService (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :105 :49) // new LogInPage() (ObjectCreationExpression)
%15 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :105 :16) // logIn.NavigationService.Navigate(new LogInPage()) (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :107 :21) // Not a variable of known type: resultadoVerificacion
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :107 :46) // Not a variable of known type: VerificationResult
%18 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :107 :46) // VerificationResult.NoExisteJugador (SimpleMemberAccessExpression)
%19 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :107 :21) // comparison of unknown type: resultadoVerificacion == VerificationResult.NoExisteJugador
cond_br %19, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :107 :21)

^4: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :109 :52) // "No existe jugador" (StringLiteralExpression)
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :109 :16) // DialogWindowManager.ShowErrorWindow("No existe jugador") (InvocationExpression)
br ^3

^5: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :113 :52) // "Verifica tu pin" (StringLiteralExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :113 :16) // DialogWindowManager.ShowErrorWindow("Verifica tu pin") (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.PlayerCallbackHandler.GetMailResult$CheckersCliente.MainService.MailResult.string$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :117 :8) {
^entry (%_emailResult : none, %_playerNickname : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :117 :34)
cbde.store %_emailResult, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :117 :34)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :117 :58)
cbde.store %_playerNickname, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :117 :58)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :119 :15) // Not a variable of known type: emailResult
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :119 :30) // Not a variable of known type: MailResult
%4 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :119 :30) // MailResult.MailSend (SimpleMemberAccessExpression)
%5 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :119 :15) // comparison of unknown type: emailResult == MailResult.MailSend
cond_br %5, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :119 :15)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :121 :54) // "Se ha enviado el correo exitosamente" (StringLiteralExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :121 :16) // DialogWindowManager.ShowSuccessWindow("Se ha enviado el correo exitosamente") (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :122 :30) // App.Current (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :122 :30) // App.Current.Windows (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :122 :30) // App.Current.Windows.OfType<LogIn>() (InvocationExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :122 :30) // App.Current.Windows.OfType<LogIn>().FirstOrDefault() (InvocationExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :123 :16) // Not a variable of known type: login
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :123 :16) // login.NavigationService (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :123 :75) // Not a variable of known type: playerNickname
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :123 :49) // new VerificatePasswordPin(playerNickname) (ObjectCreationExpression)
%17 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :123 :16) // login.NavigationService.Navigate(new VerificatePasswordPin(playerNickname)) (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :127 :20) // Not a variable of known type: emailResult
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :127 :35) // Not a variable of known type: MailResult
%20 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :127 :35) // MailResult.UnknownPlayer (SimpleMemberAccessExpression)
%21 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :127 :20) // comparison of unknown type: emailResult == MailResult.UnknownPlayer
cond_br %21, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :127 :20)

^4: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :129 :56) // "No existe jugador" (StringLiteralExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :129 :20) // DialogWindowManager.ShowErrorWindow("No existe jugador") (InvocationExpression)
br ^3

^5: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :133 :56) // "Se ha tenido un error a la hora de enviar el correo, intente mas tarde" (StringLiteralExpression)
%25 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :133 :20) // DialogWindowManager.ShowErrorWindow("Se ha tenido un error a la hora de enviar el correo, intente mas tarde") (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.PlayerCallbackHandler.GetPinResult$CheckersCliente.MainService.PinResult.string$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :139 :8) {
^entry (%_pinResult : none, %_playerNickname : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :139 :33)
cbde.store %_pinResult, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :139 :33)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :139 :54)
cbde.store %_playerNickname, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :139 :54)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :141 :15) // Not a variable of known type: pinResult
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :141 :28) // Not a variable of known type: PinResult
%4 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :141 :28) // PinResult.VerifiedPin (SimpleMemberAccessExpression)
%5 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :141 :15) // comparison of unknown type: pinResult == PinResult.VerifiedPin
cond_br %5, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :141 :15)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :143 :30) // App.Current (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :143 :30) // App.Current.Windows (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :143 :30) // App.Current.Windows.OfType<LogIn>() (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :143 :30) // App.Current.Windows.OfType<LogIn>().FirstOrDefault() (InvocationExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :144 :16) // Not a variable of known type: login
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :144 :16) // login.NavigationService (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :144 :68) // Not a variable of known type: playerNickname
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :144 :49) // new ChangePassword(playerNickname) (ObjectCreationExpression)
%15 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :144 :16) // login.NavigationService.Navigate(new ChangePassword(playerNickname)) (InvocationExpression)
br ^3

^2: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :148 :52) // "Ha ingresado un pin incorrecto" (StringLiteralExpression)
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :148 :16) // DialogWindowManager.ShowErrorWindow("Ha ingresado un pin incorrecto") (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.PlayerCallbackHandler.GetPasswordChangeResult$CheckersCliente.MainService.PasswordChangeResult$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :152 :8) {
^entry (%_passwordChangeResult : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :152 :44)
cbde.store %_passwordChangeResult, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :152 :44)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :154 :16) // Not a variable of known type: passwordChangeResult
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :154 :40) // Not a variable of known type: PasswordChangeResult
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :154 :40) // PasswordChangeResult.ChangedPassword (SimpleMemberAccessExpression)
%4 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :154 :16) // comparison of unknown type: passwordChangeResult == PasswordChangeResult.ChangedPassword
cond_br %4, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :154 :16)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :156 :54) // "Se ha cambiado la contraseña correctamente" (StringLiteralExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :156 :16) // DialogWindowManager.ShowSuccessWindow("Se ha cambiado la contraseña correctamente") (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :157 :30) // App.Current (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :157 :30) // App.Current.Windows (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :157 :30) // App.Current.Windows.OfType<LogIn>() (InvocationExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :157 :30) // App.Current.Windows.OfType<LogIn>().FirstOrDefault() (InvocationExpression)
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :158 :16) // Not a variable of known type: login
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :158 :16) // login.NavigationService (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :158 :49) // new LogInPage() (ObjectCreationExpression)
%15 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :158 :16) // login.NavigationService.Navigate(new LogInPage()) (InvocationExpression)
br ^3

^2: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :163 :52) // "Ha ocurrido un error a la hora de cambiar contraseña intentar de nuevo porfavor" (StringLiteralExpression)
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :163 :16) // DialogWindowManager.ShowErrorWindow("Ha ocurrido un error a la hora de cambiar contraseña intentar de nuevo porfavor") (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.PlayerCallbackHandler.SendActualPlayer$CheckersCliente.MainService.DataObtainedResult.CheckersCliente.MainService.Jugador$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :168 :8) {
^entry (%_dataObtainedResult : none, %_actualPlayer : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :168 :37)
cbde.store %_dataObtainedResult, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :168 :37)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :168 :76)
cbde.store %_actualPlayer, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :168 :76)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :170 :16) // Not a variable of known type: dataObtainedResult
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :170 :38) // Not a variable of known type: DataObtainedResult
%4 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :170 :38) // DataObtainedResult.DataObtained (SimpleMemberAccessExpression)
%5 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :170 :16) // comparison of unknown type: dataObtainedResult == DataObtainedResult.DataObtained
cond_br %5, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :170 :16)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :172 :28) // App.Current (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :172 :28) // App.Current.Windows (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :172 :28) // App.Current.Windows.OfType<Menu>() (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :172 :28) // App.Current.Windows.OfType<Menu>().FirstOrDefault() (InvocationExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :173 :16) // Not a variable of known type: menu
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :173 :16) // menu.NavigationService (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :173 :70) // Not a variable of known type: actualPlayer
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :173 :48) // new UserConfiguration(actualPlayer) (ObjectCreationExpression)
%15 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :173 :16) // menu.NavigationService.Navigate(new UserConfiguration(actualPlayer)) (InvocationExpression)
br ^3

^2: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DialogWindowManager
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :177 :52) // "Ha ocurrido un error de conexion a la base de datos, intentar mas tarde" (StringLiteralExpression)
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\CallbackHandlers\\PlayerCallbackHandler.cs" :177 :16) // DialogWindowManager.ShowErrorWindow("Ha ocurrido un error de conexion a la base de datos, intentar mas tarde") (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
