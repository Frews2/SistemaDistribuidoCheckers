func @_Contratos.MainService.Login$Dominio.Jugador$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :35 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :35 :26)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :35 :26)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :37 :33) // Not a variable of known type: LoginResult
%2 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :37 :33) // LoginResult.NoExisteJugador (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :38 :48) // new AdminDataManager() (ObjectCreationExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :39 :16) // Not a variable of known type: adminDataManager
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :39 :47) // Not a variable of known type: player
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :39 :47) // player.Apodo (SimpleMemberAccessExpression)
%9 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :39 :16) // adminDataManager.CheckNickname(player.Apodo) (InvocationExpression)
cond_br %9, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :39 :16)

^1: // BinaryBranchBlock
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :41 :20) // Not a variable of known type: adminDataManager
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :41 :56) // Not a variable of known type: player
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :41 :56) // player.Contrasenia (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :41 :76) // Not a variable of known type: player
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :41 :76) // player.Apodo (SimpleMemberAccessExpression)
%15 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :41 :20) // adminDataManager.EsPasswordCorrecto(player.Contrasenia, player.Apodo) (InvocationExpression)
cond_br %15, ^3, ^4 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :41 :20)

^3: // SimpleBlock
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :43 :29) // Not a variable of known type: LoginResult
%17 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :43 :29) // LoginResult.EsAdmin (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :45 :20) // Not a variable of known type: Callback
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :45 :44) // Not a variable of known type: result
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :45 :52) // Not a variable of known type: player
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :45 :20) // Callback.GetLoginResult(result, player) (InvocationExpression)
br ^5

^4: // SimpleBlock
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :49 :29) // Not a variable of known type: LoginResult
%23 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :49 :29) // LoginResult.PasswordIncorrecto (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :51 :20) // Not a variable of known type: Callback
%25 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :51 :44) // Not a variable of known type: result
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :51 :52) // Not a variable of known type: player
%27 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :51 :20) // Callback.GetLoginResult(result, player) (InvocationExpression)
br ^5

^2: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: LoginPlayer
%28 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :56 :28) // Not a variable of known type: player
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :56 :16) // LoginPlayer(player) (InvocationExpression)
br ^5

^5: // ExitBlock
return

}
func @_Contratos.MainService.LoginPlayer$Dominio.Jugador$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :60 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :60 :32)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :60 :32)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :62 :33) // Not a variable of known type: LoginResult
%2 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :62 :33) // LoginResult.NoExisteJugador (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :63 :48) // new JugadorDataManager() (ObjectCreationExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :64 :16) // Not a variable of known type: jugadorManager
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :64 :45) // Not a variable of known type: player
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :64 :45) // player.Apodo (SimpleMemberAccessExpression)
%9 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :64 :16) // jugadorManager.CheckNickname(player.Apodo) (InvocationExpression)
cond_br %9, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :64 :16)

^1: // BinaryBranchBlock
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :66 :20) // Not a variable of known type: jugadorManager
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :66 :46) // Not a variable of known type: player
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :66 :46) // player.Apodo (SimpleMemberAccessExpression)
%13 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :66 :20) // jugadorManager.CheckState(player.Apodo) (InvocationExpression)
cond_br %13, ^3, ^4 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :66 :20)

^3: // BinaryBranchBlock
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :68 :24) // Not a variable of known type: jugadorManager
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :68 :58) // Not a variable of known type: player
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :68 :58) // player.Contrasenia (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :68 :78) // Not a variable of known type: player
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :68 :78) // player.Apodo (SimpleMemberAccessExpression)
%19 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :68 :24) // jugadorManager.EsPasswordCorrecto(player.Contrasenia, player.Apodo) (InvocationExpression)
cond_br %19, ^5, ^6 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :68 :24)

^5: // SimpleBlock
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :70 :33) // Not a variable of known type: LoginResult
%21 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :70 :33) // LoginResult.ExisteJugadorVerificado (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :71 :60) // Not a variable of known type: jugadorManager
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :71 :95) // Not a variable of known type: player
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :71 :95) // player.Apodo (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :71 :60) // jugadorManager.GetPlayerByNickname(player.Apodo) (InvocationExpression)
%27 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :72 :24) // Not a variable of known type: player
%28 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :72 :24) // player.IdLenguaje (SimpleMemberAccessExpression)
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :72 :44) // Not a variable of known type: searchedPlayer
%30 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :72 :44) // searchedPlayer.idioma (SimpleMemberAccessExpression)
%31 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :73 :24) // Not a variable of known type: player
%32 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :73 :24) // player.IdJugador (SimpleMemberAccessExpression)
%33 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :73 :43) // Not a variable of known type: searchedPlayer
%34 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :73 :43) // searchedPlayer.idJugador (SimpleMemberAccessExpression)
%35 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :74 :24) // Not a variable of known type: player
%36 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :74 :24) // player.Contrasenia (SimpleMemberAccessExpression)
%37 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :74 :45) // Not a variable of known type: searchedPlayer
%38 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :74 :45) // searchedPlayer.contrasenia (SimpleMemberAccessExpression)
%39 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :75 :24) // Not a variable of known type: player
%40 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :75 :24) // player.CorreoElectronico (SimpleMemberAccessExpression)
%41 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :75 :51) // Not a variable of known type: searchedPlayer
%42 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :75 :51) // searchedPlayer.correoElectronico (SimpleMemberAccessExpression)
%43 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :76 :24) // Not a variable of known type: player
%44 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :76 :24) // player.PreguntaRecuperacion (SimpleMemberAccessExpression)
%45 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :76 :54) // Not a variable of known type: searchedPlayer
%46 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :76 :54) // searchedPlayer.preguntaRecuperacion (SimpleMemberAccessExpression)
%47 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :78 :24) // Not a variable of known type: Callback
%48 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :78 :48) // Not a variable of known type: result
%49 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :78 :56) // Not a variable of known type: player
%50 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :78 :24) // Callback.GetLoginResult(result, player) (InvocationExpression)
br ^7

^6: // SimpleBlock
%51 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :82 :33) // Not a variable of known type: LoginResult
%52 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :82 :33) // LoginResult.PasswordIncorrecto (SimpleMemberAccessExpression)
%53 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :84 :24) // Not a variable of known type: Callback
%54 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :84 :48) // Not a variable of known type: result
%55 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :84 :56) // Not a variable of known type: player
%56 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :84 :24) // Callback.GetLoginResult(result, player) (InvocationExpression)
br ^7

^4: // BinaryBranchBlock
%57 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :89 :24) // Not a variable of known type: jugadorDataManager
%58 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :89 :60) // Not a variable of known type: player
%59 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :89 :60) // player.Apodo (SimpleMemberAccessExpression)
%60 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :89 :24) // jugadorDataManager.CheckBannedState(player.Apodo) (InvocationExpression)
cond_br %60, ^8, ^9 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :89 :24)

^8: // SimpleBlock
%61 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :91 :33) // Not a variable of known type: LoginResult
%62 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :91 :33) // LoginResult.EsBaneado (SimpleMemberAccessExpression)
%63 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :93 :24) // Not a variable of known type: Callback
%64 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :93 :48) // Not a variable of known type: result
%65 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :93 :56) // Not a variable of known type: player
%66 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :93 :24) // Callback.GetLoginResult(result, player) (InvocationExpression)
br ^7

^9: // SimpleBlock
%67 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :97 :33) // Not a variable of known type: LoginResult
%68 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :97 :33) // LoginResult.ExisteJugadorNoVerificado (SimpleMemberAccessExpression)
%69 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :99 :24) // Not a variable of known type: Callback
%70 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :99 :48) // Not a variable of known type: result
%71 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :99 :56) // Not a variable of known type: player
%72 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :99 :24) // Callback.GetLoginResult(result, player) (InvocationExpression)
br ^7

^2: // SimpleBlock
%73 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :107 :16) // Not a variable of known type: Callback
%74 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :107 :40) // Not a variable of known type: result
%75 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :107 :48) // Not a variable of known type: player
%76 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :107 :16) // Callback.GetLoginResult(result, player) (InvocationExpression)
br ^7

^7: // ExitBlock
return

}
// Skipping function SavePlayer(none), it contains poisonous unsupported syntaxes

func @_Contratos.MainService.VerifyPlayer$Dominio.Jugador$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :192 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :192 :33)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :192 :33)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :194 :43) // Not a variable of known type: VerificationResult
%2 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :194 :43) // VerificationResult.NoExisteJugador (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :196 :48) // new JugadorDataManager() (ObjectCreationExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :198 :16) // Not a variable of known type: jugadorManager
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :198 :45) // Not a variable of known type: player
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :198 :45) // player.Apodo (SimpleMemberAccessExpression)
%9 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :198 :16) // jugadorManager.CheckNickname(player.Apodo) (InvocationExpression)
cond_br %9, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :198 :16)

^1: // BinaryBranchBlock
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :200 :20) // Not a variable of known type: jugadorManager
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :200 :47) // Not a variable of known type: player
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :200 :47) // player.Apodo (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :200 :61) // Not a variable of known type: player
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :200 :61) // player.PinConfirmacion (SimpleMemberAccessExpression)
%15 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :200 :20) // jugadorManager.PinCorrecto(player.Apodo, player.PinConfirmacion) (InvocationExpression)
cond_br %15, ^3, ^4 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :200 :20)

^3: // BinaryBranchBlock
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :202 :33) // Not a variable of known type: jugadorManager
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :202 :64) // new DataAccess.Jugador                      {                          apodo = player.Apodo,                          pinConfirmacion = player.PinConfirmacion,                      } (ObjectCreationExpression)
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :204 :32) // Not a variable of known type: player
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :204 :32) // player.Apodo (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :205 :42) // Not a variable of known type: player
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :205 :42) // player.PinConfirmacion (SimpleMemberAccessExpression)
%22 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :202 :33) // jugadorManager.VerifyNewPlayer(new DataAccess.Jugador                      {                          apodo = player.Apodo,                          pinConfirmacion = player.PinConfirmacion,                      }) (InvocationExpression)
%23 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :202 :24) // result
cbde.store %22, %23 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :202 :24)
%24 = cbde.load %23 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :208 :24)
%25 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :208 :33)
%26 = cmpi "sgt", %24, %25 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :208 :24)
cond_br %26, ^5, ^6 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :208 :24)

^5: // SimpleBlock
%27 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :210 :36) // Not a variable of known type: VerificationResult
%28 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :210 :36) // VerificationResult.VerificacionExistosa (SimpleMemberAccessExpression)
br ^6

^4: // SimpleBlock
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :215 :32) // Not a variable of known type: VerificationResult
%30 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :215 :32) // VerificationResult.PinIncorrecto (SimpleMemberAccessExpression)
br ^6

^2: // SimpleBlock
%31 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :220 :28) // Not a variable of known type: VerificationResult
%32 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :220 :28) // VerificationResult.NoExisteJugador (SimpleMemberAccessExpression)
br ^6

^6: // SimpleBlock
%33 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :223 :12) // Not a variable of known type: Callback
%34 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :223 :37) // Not a variable of known type: resultado
%35 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :223 :12) // Callback.GetVerifyResult(resultado) (InvocationExpression)
br ^7

^7: // ExitBlock
return

}
// Skipping function SendMail(none), it contains poisonous unsupported syntaxes

// Skipping function PasswordForgotMail(none), it contains poisonous unsupported syntaxes

func @_Contratos.MainService.VerifyPin$string.string.string$(none, none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :305 :8) {
^entry (%_actualNickname : none, %_playerPin : none, %_answerText : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :305 :30)
cbde.store %_actualNickname, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :305 :30)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :305 :53)
cbde.store %_playerPin, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :305 :53)
%2 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :305 :71)
cbde.store %_answerText, %2 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :305 :71)
br ^0

^0: // BinaryBranchBlock
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :307 :34) // Not a variable of known type: PinResult
%4 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :307 :34) // PinResult.UnknownPin (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :309 :16) // Not a variable of known type: jugadorDataManager
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :309 :47) // Not a variable of known type: actualNickname
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :309 :63) // Not a variable of known type: playerPin
%9 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :309 :16) // jugadorDataManager.PinCorrecto(actualNickname, playerPin) (InvocationExpression)
cond_br %9, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :309 :16)

^1: // BinaryBranchBlock
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :311 :20) // Not a variable of known type: jugadorDataManager
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :311 :53) // Not a variable of known type: actualNickname
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :311 :69) // Not a variable of known type: answerText
%13 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :311 :20) // jugadorDataManager.CorrectAnswer(actualNickname, answerText) (InvocationExpression)
cond_br %13, ^3, ^4 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :311 :20)

^3: // SimpleBlock
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :313 :32) // Not a variable of known type: PinResult
%15 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :313 :32) // PinResult.VerifiedPin (SimpleMemberAccessExpression)
br ^2

^4: // SimpleBlock
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :317 :32) // Not a variable of known type: PinResult
%17 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :317 :32) // PinResult.WrongAnswer (SimpleMemberAccessExpression)
br ^2

^2: // SimpleBlock
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :321 :12) // Not a variable of known type: Callback
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :321 :34) // Not a variable of known type: pinResult
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :321 :45) // Not a variable of known type: actualNickname
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :321 :12) // Callback.GetPinResult(pinResult, actualNickname) (InvocationExpression)
br ^5

^5: // ExitBlock
return

}
func @_Contratos.MainService.ChangePassword$string.string$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :324 :8) {
^entry (%_userNickname : none, %_password : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :324 :35)
cbde.store %_userNickname, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :324 :35)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :324 :56)
cbde.store %_password, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :324 :56)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :326 :48) // Not a variable of known type: PasswordChangeResult
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :326 :48) // PasswordChangeResult.ErrorChanging (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :328 :16) // Not a variable of known type: jugadorDataManager
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :328 :49) // Not a variable of known type: userNickname
%7 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :328 :16) // jugadorDataManager.CheckNickname(userNickname) (InvocationExpression)
cond_br %7, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :328 :16)

^1: // BinaryBranchBlock
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :330 :37) // Not a variable of known type: hashText
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :330 :57) // Not a variable of known type: password
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :330 :37) // hashText.TextToHash(password) (InvocationExpression)
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :331 :35) // Not a variable of known type: jugadorDataManager
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :331 :69) // Not a variable of known type: userNickname
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :331 :83) // Not a variable of known type: newPassword
%15 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :331 :35) // jugadorDataManager.ChangePassword(userNickname, newPassword) (InvocationExpression)
%16 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :331 :20) // resultChange
cbde.store %15, %16 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :331 :20)
%17 = cbde.load %16 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :333 :20)
%18 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :333 :35)
%19 = cmpi "sgt", %17, %18 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :333 :20)
cond_br %19, ^3, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :333 :20)

^3: // SimpleBlock
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :335 :35) // Not a variable of known type: PasswordChangeResult
%21 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :335 :35) // PasswordChangeResult.ChangedPassword (SimpleMemberAccessExpression)
br ^2

^2: // SimpleBlock
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :340 :12) // Not a variable of known type: Callback
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :340 :45) // Not a variable of known type: changeResult
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :340 :12) // Callback.GetPasswordChangeResult(changeResult) (InvocationExpression)
br ^4

^4: // ExitBlock
return

}
func @_Contratos.MainService.GetActualPlayer$Dominio.Jugador$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :344 :8) {
^entry (%_actualPlayer : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :344 :36)
cbde.store %_actualPlayer, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :344 :36)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :346 :52) // Not a variable of known type: DataObtainedResult
%2 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :346 :52) // DataObtainedResult.ErrorObtainingData (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :347 :48) // Not a variable of known type: jugadorDataManager
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :347 :87) // Not a variable of known type: actualPlayer
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :347 :87) // actualPlayer.Apodo (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :347 :48) // jugadorDataManager.GetPlayerByNickname(actualPlayer.Apodo) (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :349 :16) // Not a variable of known type: searchedPlayer
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :349 :34) // null (NullLiteralExpression)
%11 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :349 :16) // comparison of unknown type: searchedPlayer != null
cond_br %11, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :349 :16)

^1: // SimpleBlock
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :351 :55) // new Dominio.Jugador                  {                      IdJugador = searchedPlayer.idJugador,                      Apodo = searchedPlayer.apodo,                      CorreoElectronico = searchedPlayer.correoElectronico,                      Status = searchedPlayer.status,                      PreguntaRecuperacion = searchedPlayer.preguntaRecuperacion,                      IdLenguaje = searchedPlayer.idioma                    } (ObjectCreationExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :353 :32) // Not a variable of known type: searchedPlayer
%14 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :353 :32) // searchedPlayer.idJugador (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :354 :28) // Not a variable of known type: searchedPlayer
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :354 :28) // searchedPlayer.apodo (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :355 :40) // Not a variable of known type: searchedPlayer
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :355 :40) // searchedPlayer.correoElectronico (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :356 :29) // Not a variable of known type: searchedPlayer
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :356 :29) // searchedPlayer.status (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :357 :43) // Not a variable of known type: searchedPlayer
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :357 :43) // searchedPlayer.preguntaRecuperacion (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :358 :33) // Not a variable of known type: searchedPlayer
%24 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :358 :33) // searchedPlayer.idioma (SimpleMemberAccessExpression)
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :361 :37) // Not a variable of known type: DataObtainedResult
%27 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :361 :37) // DataObtainedResult.DataObtained (SimpleMemberAccessExpression)
%28 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :362 :16) // Not a variable of known type: Callback
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :362 :42) // Not a variable of known type: dataObtainedResult
%30 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :362 :62) // Not a variable of known type: domainSearchedPlayer
%31 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :362 :16) // Callback.SendActualPlayer(dataObtainedResult, domainSearchedPlayer) (InvocationExpression)
br ^3

^2: // SimpleBlock
%32 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :366 :46) // new Jugador() (ObjectCreationExpression)
%34 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :367 :16) // Not a variable of known type: Callback
%35 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :367 :42) // Not a variable of known type: dataObtainedResult
%36 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :367 :62) // Not a variable of known type: emptyPlayer
%37 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :367 :16) // Callback.SendActualPlayer(dataObtainedResult, emptyPlayer) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_Contratos.MainService.GetRankingData$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :384 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: QueryRankingData
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :387 :45) // QueryRankingData() (InvocationExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :389 :16) // Not a variable of known type: rankings
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :389 :28) // null (NullLiteralExpression)
%5 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :389 :16) // comparison of unknown type: rankings == null
cond_br %5, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :389 :16)

^1: // SimpleBlock
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :391 :25) // Not a variable of known type: RankingResult
%7 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :391 :25) // RankingResult.NO_RANKING (SimpleMemberAccessExpression)
br ^3

^2: // SimpleBlock
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :395 :25) // Not a variable of known type: RankingResult
%9 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :395 :25) // RankingResult.RANKING_EXISTS (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :397 :16) // Not a variable of known type: RankingCallback
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :397 :51) // Not a variable of known type: rankings
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :397 :16) // RankingCallback.ReceiveRankingData(rankings) (InvocationExpression)
br ^3

^3: // SimpleBlock
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :401 :12) // Not a variable of known type: RankingCallback
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :401 :45) // Not a variable of known type: result
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :401 :12) // RankingCallback.GetRankingResult(result) (InvocationExpression)
br ^4

^4: // ExitBlock
return

}
// Skipping function QueryRankingData(), it contains poisonous unsupported syntaxes

func @_Contratos.MainService.Player1Turn$Contratos.Checker$$$$.int.int.int$(none, i32, i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :456 :8) {
^entry (%_updateBoardMatrix : none, %_matchNumber : i32, %_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :456 :32)
cbde.store %_updateBoardMatrix, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :456 :32)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :456 :63)
cbde.store %_matchNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :456 :63)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :456 :80)
cbde.store %_playerTwoCheckers, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :456 :80)
%3 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :456 :103)
cbde.store %_playerOneCheckers, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :456 :103)
br ^0

^0: // SimpleBlock
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :458 :12) // Not a variable of known type: activeMatches
%5 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :458 :26)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :458 :12) // activeMatches[matchNumber] (ElementAccessExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :458 :12) // activeMatches[matchNumber].playerTwoCallback (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :458 :71) // Not a variable of known type: updateBoardMatrix
%9 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :458 :90)
%10 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :458 :109)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :458 :12) // activeMatches[matchNumber].playerTwoCallback.UpdateGameGUI(updateBoardMatrix, playerTwoCheckers, playerOneCheckers) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function CreateMatch(none, none), it contains poisonous unsupported syntaxes

func @_Contratos.MainService.Player2Turn$Contratos.Checker$$$$.int.int.int$(none, i32, i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :509 :8) {
^entry (%_updateBoardMatrix : none, %_matchNumber : i32, %_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :509 :32)
cbde.store %_updateBoardMatrix, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :509 :32)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :509 :63)
cbde.store %_matchNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :509 :63)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :509 :80)
cbde.store %_playerTwoCheckers, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :509 :80)
%3 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :509 :103)
cbde.store %_playerOneCheckers, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :509 :103)
br ^0

^0: // SimpleBlock
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :511 :12) // Not a variable of known type: activeMatches
%5 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :511 :26)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :511 :12) // activeMatches[matchNumber] (ElementAccessExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :511 :12) // activeMatches[matchNumber].playerOneCallback (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :511 :71) // Not a variable of known type: updateBoardMatrix
%9 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :511 :90)
%10 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :511 :109)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :511 :12) // activeMatches[matchNumber].playerOneCallback.UpdateGameGUI(updateBoardMatrix, playerTwoCheckers, playerOneCheckers) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Contratos.MainService.FinishPlayerGame$int.int.int.int$(i32, i32, i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :514 :8) {
^entry (%_matchNumber : i32, %_playerNumber : i32, %_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :514 :37)
cbde.store %_matchNumber, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :514 :37)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :514 :54)
cbde.store %_playerNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :514 :54)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :514 :72)
cbde.store %_playerTwoCheckers, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :514 :72)
%3 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :514 :95)
cbde.store %_playerOneCheckers, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :514 :95)
br ^0

^0: // BinaryBranchBlock
%4 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :516 :16)
%5 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :516 :32)
%6 = cmpi "eq", %4, %5 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :516 :16)
cond_br %6, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :516 :16)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :518 :16) // Not a variable of known type: activeMatches
%8 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :518 :30)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :518 :16) // activeMatches[matchNumber] (ElementAccessExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :518 :16) // activeMatches[matchNumber].playerTwoCallback (SimpleMemberAccessExpression)
%11 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :518 :72)
%12 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :518 :91)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :518 :16) // activeMatches[matchNumber].playerTwoCallback.FinishGame(playerTwoCheckers, playerOneCheckers) (InvocationExpression)
br ^3

^2: // SimpleBlock
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :523 :16) // Not a variable of known type: activeMatches
%15 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :523 :30)
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :523 :16) // activeMatches[matchNumber] (ElementAccessExpression)
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :523 :16) // activeMatches[matchNumber].playerOneCallback (SimpleMemberAccessExpression)
%18 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :523 :72)
%19 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :523 :91)
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :523 :16) // activeMatches[matchNumber].playerOneCallback.FinishGame(playerTwoCheckers, playerOneCheckers) (InvocationExpression)
br ^3

^3: // ForInitializerBlock
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :525 :52) // new RankingDataManager() (ObjectCreationExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :526 :12) // Not a variable of known type: rankingDataManager
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :526 :50) // Not a variable of known type: activeMatches
%25 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :526 :64)
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :526 :50) // activeMatches[matchNumber] (ElementAccessExpression)
%27 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :526 :50) // activeMatches[matchNumber].playerOneData (SimpleMemberAccessExpression)
%28 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :526 :92)
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :526 :111) // Not a variable of known type: activeMatches
%30 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :526 :125)
%31 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :526 :111) // activeMatches[matchNumber] (ElementAccessExpression)
%32 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :526 :111) // activeMatches[matchNumber].playerTwoData (SimpleMemberAccessExpression)
%33 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :526 :153)
%34 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :526 :172)
%35 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :526 :12) // rankingDataManager.UpdateMatchResults(activeMatches[matchNumber].playerOneData, playerOneCheckers, activeMatches[matchNumber].playerTwoData, playerTwoCheckers, playerNumber) (InvocationExpression)
%36 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :527 :12) // Not a variable of known type: numberActiveMatches
%37 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :527 :12) // Inc/Decrement of field or property numberActiveMatches
%38 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :528 :12) // Not a variable of known type: activeMatches
%39 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :528 :35)
%40 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :528 :12) // activeMatches.RemoveAt(matchNumber) (InvocationExpression)
%41 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :530 :16) // listPosition
%42 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :532 :32)
cbde.store %42, %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :532 :17)
br ^4

^4: // BinaryBranchBlock
%43 = cbde.load %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :532 :45)
%44 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :532 :60) // Not a variable of known type: activeMatches
%45 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :532 :60) // activeMatches.Count (SimpleMemberAccessExpression)
%46 = cmpi "slt", %43, %45 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :532 :45)
cond_br %46, ^5, ^6 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :532 :45)

^5: // SimpleBlock
%47 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :534 :16) // Not a variable of known type: activeMatches
%48 = cbde.load %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :534 :30)
%49 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :534 :16) // activeMatches[listPosition] (ElementAccessExpression)
%50 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :534 :16) // activeMatches[listPosition].matchActiveNumber (SimpleMemberAccessExpression)
%51 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :534 :16) // Inc/Decrement of unknown identifier
%52 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :535 :16) // Not a variable of known type: activeMatches
%53 = cbde.load %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :535 :30)
%54 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :535 :16) // activeMatches[listPosition] (ElementAccessExpression)
%55 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :535 :16) // activeMatches[listPosition].playerOneCallback (SimpleMemberAccessExpression)
%56 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :535 :80) // Not a variable of known type: activeMatches
%57 = cbde.load %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :535 :94)
%58 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :535 :80) // activeMatches[listPosition] (ElementAccessExpression)
%59 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :535 :80) // activeMatches[listPosition].matchActiveNumber (SimpleMemberAccessExpression)
%60 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :535 :16) // activeMatches[listPosition].playerOneCallback.UpdateMatchNumber(activeMatches[listPosition].matchActiveNumber) (InvocationExpression)
%61 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :536 :16) // Not a variable of known type: activeMatches
%62 = cbde.load %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :536 :30)
%63 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :536 :16) // activeMatches[listPosition] (ElementAccessExpression)
%64 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :536 :16) // activeMatches[listPosition].playerTwoCallback (SimpleMemberAccessExpression)
%65 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :536 :80) // Not a variable of known type: activeMatches
%66 = cbde.load %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :536 :94)
%67 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :536 :80) // activeMatches[listPosition] (ElementAccessExpression)
%68 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :536 :80) // activeMatches[listPosition].matchActiveNumber (SimpleMemberAccessExpression)
%69 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :536 :16) // activeMatches[listPosition].playerTwoCallback.UpdateMatchNumber(activeMatches[listPosition].matchActiveNumber) (InvocationExpression)
br ^7

^7: // SimpleBlock
%70 = cbde.load %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :532 :81)
%71 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :532 :81)
%72 = addi %70, %71 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :532 :81)
cbde.store %72, %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :532 :81)
br ^4

^6: // ExitBlock
return

}
func @_Contratos.MainService.SendGameMessage$int.string.int$(i32, none, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :540 :8) {
^entry (%_playerNumber : i32, %_message : none, %_matchNumber : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :540 :36)
cbde.store %_playerNumber, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :540 :36)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :540 :54)
cbde.store %_message, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :540 :54)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :540 :70)
cbde.store %_matchNumber, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :540 :70)
br ^0

^0: // BinaryBranchBlock
%3 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :542 :16)
%4 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :542 :32)
%5 = cmpi "eq", %3, %4 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :542 :16)
cond_br %5, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :542 :16)

^1: // SimpleBlock
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :544 :16) // Not a variable of known type: activeMatches
%7 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :544 :30)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :544 :16) // activeMatches[matchNumber] (ElementAccessExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :544 :16) // activeMatches[matchNumber].playerTwoCallback (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :544 :80) // Not a variable of known type: message
%11 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :544 :89)
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :544 :16) // activeMatches[matchNumber].playerTwoCallback.RecieveGameMessage(message, PLAYER_ONE) (InvocationExpression)
br ^3

^2: // SimpleBlock
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :548 :16) // Not a variable of known type: activeMatches
%14 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :548 :30)
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :548 :16) // activeMatches[matchNumber] (ElementAccessExpression)
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :548 :16) // activeMatches[matchNumber].playerOneCallback (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :548 :80) // Not a variable of known type: message
%18 = constant 2 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :548 :88)
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :548 :16) // activeMatches[matchNumber].playerOneCallback.RecieveGameMessage(message,PLAYER_TWO) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_Contratos.MainService.ReportPlayer$int.int.string$(i32, i32, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :552 :8) {
^entry (%_playerNumberReporting : i32, %_matchNumber : i32, %_reportText : none):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :552 :33)
cbde.store %_playerNumberReporting, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :552 :33)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :552 :60)
cbde.store %_matchNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :552 :60)
%2 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :552 :77)
cbde.store %_reportText, %2 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :552 :77)
br ^0

^0: // BinaryBranchBlock
%3 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :554 :16) // reportResult
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :555 :48) // Not a variable of known type: ReportSaveResult
%5 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :555 :48) // ReportSaveResult.ERROR_SAVING (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :556 :50) // new ReportDataManager() (ObjectCreationExpression)
%9 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :558 :16)
%10 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :558 :41)
%11 = cmpi "eq", %9, %10 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :558 :16)
cond_br %11, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :558 :16)

^1: // SimpleBlock
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :560 :31) // Not a variable of known type: reportDataManager
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :560 :62) // Not a variable of known type: activeMatches
%14 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :560 :76)
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :560 :62) // activeMatches[matchNumber] (ElementAccessExpression)
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :560 :62) // activeMatches[matchNumber].playerTwoData (SimpleMemberAccessExpression)
%17 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :560 :62) // activeMatches[matchNumber].playerTwoData.IdJugador (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :560 :114) // Not a variable of known type: activeMatches
%19 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :560 :128)
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :560 :114) // activeMatches[matchNumber] (ElementAccessExpression)
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :560 :114) // activeMatches[matchNumber].playerOneData (SimpleMemberAccessExpression)
%22 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :560 :114) // activeMatches[matchNumber].playerOneData.IdJugador (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :560 :166) // Not a variable of known type: reportText
%24 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :560 :31) // reportDataManager.ReportPlayer(activeMatches[matchNumber].playerTwoData.IdJugador, activeMatches[matchNumber].playerOneData.IdJugador, reportText) (InvocationExpression)
cbde.store %24, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :560 :16)
br ^3

^2: // SimpleBlock
%25 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :564 :31) // Not a variable of known type: reportDataManager
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :564 :62) // Not a variable of known type: activeMatches
%27 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :564 :76)
%28 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :564 :62) // activeMatches[matchNumber] (ElementAccessExpression)
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :564 :62) // activeMatches[matchNumber].playerOneData (SimpleMemberAccessExpression)
%30 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :564 :62) // activeMatches[matchNumber].playerOneData.IdJugador (SimpleMemberAccessExpression)
%31 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :564 :114) // Not a variable of known type: activeMatches
%32 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :564 :128)
%33 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :564 :114) // activeMatches[matchNumber] (ElementAccessExpression)
%34 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :564 :114) // activeMatches[matchNumber].playerTwoData (SimpleMemberAccessExpression)
%35 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :564 :114) // activeMatches[matchNumber].playerTwoData.IdJugador (SimpleMemberAccessExpression)
%36 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :564 :166) // Not a variable of known type: reportText
%37 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :564 :31) // reportDataManager.ReportPlayer(activeMatches[matchNumber].playerOneData.IdJugador, activeMatches[matchNumber].playerTwoData.IdJugador, reportText) (InvocationExpression)
cbde.store %37, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :564 :16)
br ^3

^3: // BinaryBranchBlock
%38 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :567 :16)
%39 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :567 :31)
%40 = cmpi "sgt", %38, %39 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :567 :16)
cond_br %40, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :567 :16)

^4: // SimpleBlock
%41 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :569 :35) // Not a variable of known type: ReportSaveResult
%42 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :569 :35) // ReportSaveResult.SAVED_REPORT (SimpleMemberAccessExpression)
br ^5

^5: // SimpleBlock
%43 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :571 :12) // Not a variable of known type: GameManagerCallback
%44 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :571 :45) // Not a variable of known type: reportSaveResult
%45 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :571 :12) // GameManagerCallback.ReportResult(reportSaveResult) (InvocationExpression)
br ^6

^6: // ExitBlock
return

}
func @_Contratos.MainService.GetReportData$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :585 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :587 :39) // Not a variable of known type: AdminReportResult
%1 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :587 :39) // AdminReportResult.NO_REPORTS_EXIST (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: QueryReportData
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :588 :47) // QueryReportData() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :590 :16) // Not a variable of known type: reportList
%6 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :590 :16) // reportList.Count (SimpleMemberAccessExpression)
%7 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :590 :35)
%8 = cmpi "sgt", %6, %7 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :590 :16)
cond_br %8, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :590 :16)

^1: // SimpleBlock
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :592 :25) // Not a variable of known type: AdminReportResult
%10 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :592 :25) // AdminReportResult.REPORT_EXISTS (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :594 :16) // Not a variable of known type: BanCallback
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :594 :46) // Not a variable of known type: reportList
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :594 :16) // BanCallback.ReceiveReportData(reportList) (InvocationExpression)
br ^2

^2: // SimpleBlock
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :596 :12) // Not a variable of known type: BanCallback
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :596 :49) // Not a variable of known type: result
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :596 :12) // BanCallback.GetReportDataQueryResult(result) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
// Skipping function QueryReportData(), it contains poisonous unsupported syntaxes

// Skipping function BanPlayer(none), it contains poisonous unsupported syntaxes

