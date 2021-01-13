// Skipping function Login(none), it contains poisonous unsupported syntaxes

func @_Contratos.MainService.LoginPlayer$Dominio.Jugador$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :69 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :69 :32)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :69 :32)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :71 :33) // Not a variable of known type: LoginResult
%2 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :71 :33) // LoginResult.NoExisteJugador (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :72 :48) // new JugadorDataManager() (ObjectCreationExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :73 :16) // Not a variable of known type: jugadorManager
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :73 :45) // Not a variable of known type: player
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :73 :45) // player.Apodo (SimpleMemberAccessExpression)
%9 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :73 :16) // jugadorManager.CheckNickname(player.Apodo) (InvocationExpression)
cond_br %9, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :73 :16)

^1: // BinaryBranchBlock
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :75 :20) // Not a variable of known type: jugadorManager
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :75 :46) // Not a variable of known type: player
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :75 :46) // player.Apodo (SimpleMemberAccessExpression)
%13 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :75 :20) // jugadorManager.CheckState(player.Apodo) (InvocationExpression)
cond_br %13, ^3, ^4 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :75 :20)

^3: // BinaryBranchBlock
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :77 :24) // Not a variable of known type: jugadorManager
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :77 :58) // Not a variable of known type: player
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :77 :58) // player.Contrasenia (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :77 :78) // Not a variable of known type: player
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :77 :78) // player.Apodo (SimpleMemberAccessExpression)
%19 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :77 :24) // jugadorManager.EsPasswordCorrecto(player.Contrasenia, player.Apodo) (InvocationExpression)
cond_br %19, ^5, ^6 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :77 :24)

^5: // BinaryBranchBlock
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :79 :60) // Not a variable of known type: jugadorManager
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :79 :95) // Not a variable of known type: player
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :79 :95) // player.Apodo (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :79 :60) // jugadorManager.GetPlayerByNickname(player.Apodo) (InvocationExpression)
%25 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :80 :29) // Not a variable of known type: playersLoggedIn
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :80 :57) // Not a variable of known type: searchedPlayer
%27 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :80 :57) // searchedPlayer.apodo (SimpleMemberAccessExpression)
%28 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :80 :29) // playersLoggedIn.ContainsKey(searchedPlayer.apodo) (InvocationExpression)
%29 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :80 :28) // !playersLoggedIn.ContainsKey(searchedPlayer.apodo) (LogicalNotExpression)
cond_br %29, ^7, ^8 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :80 :28)

^7: // SimpleBlock
%30 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :82 :37) // Not a variable of known type: LoginResult
%31 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :82 :37) // LoginResult.ExisteJugadorVerificado (SimpleMemberAccessExpression)
%32 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :84 :28) // Not a variable of known type: playersLoggedIn
%33 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :84 :48) // Not a variable of known type: searchedPlayer
%34 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :84 :48) // searchedPlayer.apodo (SimpleMemberAccessExpression)
%35 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :84 :70) // Not a variable of known type: PlayerCallback
%36 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :84 :28) // playersLoggedIn.Add(searchedPlayer.apodo, PlayerCallback) (InvocationExpression)
%37 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :85 :28) // Not a variable of known type: player
%38 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :85 :28) // player.Apodo (SimpleMemberAccessExpression)
%39 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :85 :43) // Not a variable of known type: searchedPlayer
%40 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :85 :43) // searchedPlayer.apodo (SimpleMemberAccessExpression)
%41 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :86 :28) // Not a variable of known type: player
%42 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :86 :28) // player.IdLenguaje (SimpleMemberAccessExpression)
%43 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :86 :48) // Not a variable of known type: searchedPlayer
%44 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :86 :48) // searchedPlayer.idioma (SimpleMemberAccessExpression)
%45 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :87 :28) // Not a variable of known type: player
%46 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :87 :28) // player.IdJugador (SimpleMemberAccessExpression)
%47 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :87 :47) // Not a variable of known type: searchedPlayer
%48 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :87 :47) // searchedPlayer.idJugador (SimpleMemberAccessExpression)
%49 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :88 :28) // Not a variable of known type: player
%50 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :88 :28) // player.Contrasenia (SimpleMemberAccessExpression)
%51 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :88 :49) // Not a variable of known type: searchedPlayer
%52 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :88 :49) // searchedPlayer.contrasenia (SimpleMemberAccessExpression)
%53 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :89 :28) // Not a variable of known type: player
%54 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :89 :28) // player.CorreoElectronico (SimpleMemberAccessExpression)
%55 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :89 :55) // Not a variable of known type: searchedPlayer
%56 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :89 :55) // searchedPlayer.correoElectronico (SimpleMemberAccessExpression)
%57 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :90 :28) // Not a variable of known type: player
%58 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :90 :28) // player.PreguntaRecuperacion (SimpleMemberAccessExpression)
%59 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :90 :58) // Not a variable of known type: searchedPlayer
%60 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :90 :58) // searchedPlayer.preguntaRecuperacion (SimpleMemberAccessExpression)
%61 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :92 :28) // Not a variable of known type: PlayerCallback
%62 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :92 :64) // Not a variable of known type: result
%63 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :92 :72) // Not a variable of known type: player
%64 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :92 :28) // PlayerCallback.GetPlayerLoginResult(result, player) (InvocationExpression)
br ^9

^8: // SimpleBlock
%65 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :96 :37) // Not a variable of known type: LoginResult
%66 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :96 :37) // LoginResult.LOGGED_PLAYER (SimpleMemberAccessExpression)
%67 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :98 :28) // Not a variable of known type: PlayerCallback
%68 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :98 :64) // Not a variable of known type: result
%69 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :98 :72) // Not a variable of known type: player
%70 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :98 :28) // PlayerCallback.GetPlayerLoginResult(result, player) (InvocationExpression)
br ^9

^6: // SimpleBlock
%71 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :103 :33) // Not a variable of known type: LoginResult
%72 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :103 :33) // LoginResult.PasswordIncorrecto (SimpleMemberAccessExpression)
%73 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :105 :24) // Not a variable of known type: PlayerCallback
%74 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :105 :60) // Not a variable of known type: result
%75 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :105 :68) // Not a variable of known type: player
%76 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :105 :24) // PlayerCallback.GetPlayerLoginResult(result, player) (InvocationExpression)
br ^9

^4: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CheckBan
%77 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :110 :29) // Not a variable of known type: player
%78 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :110 :20) // CheckBan(player) (InvocationExpression)
br ^9

^2: // SimpleBlock
%79 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :115 :16) // Not a variable of known type: PlayerCallback
%80 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :115 :52) // Not a variable of known type: result
%81 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :115 :60) // Not a variable of known type: player
%82 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :115 :16) // PlayerCallback.GetPlayerLoginResult(result, player) (InvocationExpression)
br ^9

^9: // ExitBlock
return

}
func @_Contratos.MainService.CheckBan$Dominio.Jugador$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :119 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :119 :30)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :119 :30)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :122 :16) // Not a variable of known type: jugadorDataManager
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :122 :52) // Not a variable of known type: player
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :122 :52) // player.Apodo (SimpleMemberAccessExpression)
%5 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :122 :16) // jugadorDataManager.CheckBannedState(player.Apodo) (InvocationExpression)
cond_br %5, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :122 :16)

^1: // SimpleBlock
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :124 :25) // Not a variable of known type: LoginResult
%7 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :124 :25) // LoginResult.EsBaneado (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :126 :16) // Not a variable of known type: PlayerCallback
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :126 :52) // Not a variable of known type: result
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :126 :60) // Not a variable of known type: player
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :126 :16) // PlayerCallback.GetPlayerLoginResult(result, player) (InvocationExpression)
br ^3

^2: // SimpleBlock
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :130 :25) // Not a variable of known type: LoginResult
%13 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :130 :25) // LoginResult.ExisteJugadorNoVerificado (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :132 :16) // Not a variable of known type: PlayerCallback
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :132 :52) // Not a variable of known type: result
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :132 :60) // Not a variable of known type: player
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :132 :16) // PlayerCallback.GetPlayerLoginResult(result, player) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
// Skipping function SavePlayer(none), it contains poisonous unsupported syntaxes

func @_Contratos.MainService.SaveNewPlayer$Dominio.Jugador$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :194 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :194 :35)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :194 :35)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :197 :43) // new DataAccess.Jugador              {                  apodo = player.Apodo,                  contrasenia = hashText.TextToHash(player.Contrasenia),                  correoElectronico = player.CorreoElectronico,                  status = ACTIVATION_STATE,                  respuestaConfirmacion = player.RespuestaConfirmacion,                  preguntaRecuperacion = player.PreguntaRecuperacion,                  pinConfirmacion = player.PinConfirmacion,                  idCreador = 1,                  idioma = player.IdLenguaje              } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :199 :24) // Not a variable of known type: player
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :199 :24) // player.Apodo (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :200 :30) // Not a variable of known type: hashText
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :200 :50) // Not a variable of known type: player
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :200 :50) // player.Contrasenia (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :200 :30) // hashText.TextToHash(player.Contrasenia) (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :201 :36) // Not a variable of known type: player
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :201 :36) // player.CorreoElectronico (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :202 :25) // Not a variable of known type: ACTIVATION_STATE
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :203 :40) // Not a variable of known type: player
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :203 :40) // player.RespuestaConfirmacion (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :204 :39) // Not a variable of known type: player
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :204 :39) // player.PreguntaRecuperacion (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :205 :34) // Not a variable of known type: player
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :205 :34) // player.PinConfirmacion (SimpleMemberAccessExpression)
%18 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :206 :28)
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :207 :25) // Not a variable of known type: player
%20 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :207 :25) // player.IdLenguaje (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :210 :48) // new JugadorDataManager() (ObjectCreationExpression)
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :211 :36) // Not a variable of known type: jugadorManager
%25 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :211 :65) // Not a variable of known type: newPlayer
%26 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :211 :36) // jugadorManager.SaveNewPlayer(newPlayer) (InvocationExpression)
%27 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :211 :16) // columnasAfectadas
cbde.store %26, %27 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :211 :16)
%28 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :212 :45) // new RankingDataManager() (ObjectCreationExpression)
%30 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :213 :12) // Not a variable of known type: rankingData
%31 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :213 :38) // Not a variable of known type: newPlayer
%32 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :213 :12) // rankingData.NewPlayerRank(newPlayer) (InvocationExpression)
%33 = cbde.load %27 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :214 :16)
%34 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :214 :36)
%35 = cmpi "sgt", %33, %34 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :214 :16)
cond_br %35, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :214 :16)

^1: // SimpleBlock
%36 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :216 :29) // Not a variable of known type: SaveResult
%37 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :216 :29) // SaveResult.JugadorGuardado (SimpleMemberAccessExpression)
%38 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :217 :16) // Not a variable of known type: PlayerCallback
%39 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :217 :45) // Not a variable of known type: saveResult
%40 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :217 :57) // Not a variable of known type: player
%41 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :217 :16) // PlayerCallback.GetSaveResult(saveResult, player) (InvocationExpression)
br ^3

^2: // SimpleBlock
%42 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :221 :29) // Not a variable of known type: SaveResult
%43 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :221 :29) // SaveResult.ErrorGuardado (SimpleMemberAccessExpression)
%44 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :222 :16) // Not a variable of known type: PlayerCallback
%45 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :222 :45) // Not a variable of known type: saveResult
%46 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :222 :57) // Not a variable of known type: player
%47 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :222 :16) // PlayerCallback.GetSaveResult(saveResult, player) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_Contratos.MainService.VerifyPlayer$Dominio.Jugador$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :226 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :226 :33)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :226 :33)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :228 :43) // Not a variable of known type: VerificationResult
%2 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :228 :43) // VerificationResult.NoExisteJugador (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :230 :48) // new JugadorDataManager() (ObjectCreationExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :232 :16) // Not a variable of known type: jugadorManager
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :232 :45) // Not a variable of known type: player
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :232 :45) // player.Apodo (SimpleMemberAccessExpression)
%9 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :232 :16) // jugadorManager.CheckNickname(player.Apodo) (InvocationExpression)
cond_br %9, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :232 :16)

^1: // BinaryBranchBlock
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :234 :20) // Not a variable of known type: jugadorManager
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :234 :47) // Not a variable of known type: player
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :234 :47) // player.Apodo (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :234 :61) // Not a variable of known type: player
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :234 :61) // player.PinConfirmacion (SimpleMemberAccessExpression)
%15 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :234 :20) // jugadorManager.PinCorrecto(player.Apodo, player.PinConfirmacion) (InvocationExpression)
cond_br %15, ^3, ^4 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :234 :20)

^3: // BinaryBranchBlock
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :236 :33) // Not a variable of known type: jugadorManager
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :236 :64) // new DataAccess.Jugador                      {                          apodo = player.Apodo,                          pinConfirmacion = player.PinConfirmacion,                      } (ObjectCreationExpression)
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :238 :32) // Not a variable of known type: player
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :238 :32) // player.Apodo (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :239 :42) // Not a variable of known type: player
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :239 :42) // player.PinConfirmacion (SimpleMemberAccessExpression)
%22 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :236 :33) // jugadorManager.VerifyNewPlayer(new DataAccess.Jugador                      {                          apodo = player.Apodo,                          pinConfirmacion = player.PinConfirmacion,                      }) (InvocationExpression)
%23 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :236 :24) // result
cbde.store %22, %23 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :236 :24)
%24 = cbde.load %23 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :242 :24)
%25 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :242 :33)
%26 = cmpi "sgt", %24, %25 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :242 :24)
cond_br %26, ^5, ^6 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :242 :24)

^5: // SimpleBlock
%27 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :244 :36) // Not a variable of known type: VerificationResult
%28 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :244 :36) // VerificationResult.VerificacionExistosa (SimpleMemberAccessExpression)
br ^6

^4: // SimpleBlock
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :249 :32) // Not a variable of known type: VerificationResult
%30 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :249 :32) // VerificationResult.PinIncorrecto (SimpleMemberAccessExpression)
br ^6

^2: // SimpleBlock
%31 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :254 :28) // Not a variable of known type: VerificationResult
%32 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :254 :28) // VerificationResult.NoExisteJugador (SimpleMemberAccessExpression)
br ^6

^6: // SimpleBlock
%33 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :257 :12) // Not a variable of known type: PlayerCallback
%34 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :257 :43) // Not a variable of known type: resultado
%35 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :257 :12) // PlayerCallback.GetVerifyResult(resultado) (InvocationExpression)
br ^7

^7: // ExitBlock
return

}
// Skipping function SendMail(none), it contains poisonous unsupported syntaxes

// Skipping function PasswordForgotMail(none), it contains poisonous unsupported syntaxes

func @_Contratos.MainService.VerifyPin$string.string.string$(none, none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :337 :8) {
^entry (%_actualNickname : none, %_playerPin : none, %_answerText : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :337 :30)
cbde.store %_actualNickname, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :337 :30)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :337 :53)
cbde.store %_playerPin, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :337 :53)
%2 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :337 :71)
cbde.store %_answerText, %2 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :337 :71)
br ^0

^0: // BinaryBranchBlock
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :339 :34) // Not a variable of known type: PinResult
%4 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :339 :34) // PinResult.UnknownPin (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :341 :16) // Not a variable of known type: jugadorDataManager
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :341 :47) // Not a variable of known type: actualNickname
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :341 :63) // Not a variable of known type: playerPin
%9 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :341 :16) // jugadorDataManager.PinCorrecto(actualNickname, playerPin) (InvocationExpression)
cond_br %9, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :341 :16)

^1: // BinaryBranchBlock
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :343 :20) // Not a variable of known type: jugadorDataManager
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :343 :53) // Not a variable of known type: actualNickname
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :343 :69) // Not a variable of known type: answerText
%13 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :343 :20) // jugadorDataManager.CorrectAnswer(actualNickname, answerText) (InvocationExpression)
cond_br %13, ^3, ^4 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :343 :20)

^3: // SimpleBlock
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :345 :32) // Not a variable of known type: PinResult
%15 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :345 :32) // PinResult.VerifiedPin (SimpleMemberAccessExpression)
br ^2

^4: // SimpleBlock
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :349 :32) // Not a variable of known type: PinResult
%17 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :349 :32) // PinResult.WrongAnswer (SimpleMemberAccessExpression)
br ^2

^2: // SimpleBlock
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :353 :12) // Not a variable of known type: PlayerCallback
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :353 :40) // Not a variable of known type: pinResult
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :353 :51) // Not a variable of known type: actualNickname
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :353 :12) // PlayerCallback.GetPinResult(pinResult, actualNickname) (InvocationExpression)
br ^5

^5: // ExitBlock
return

}
func @_Contratos.MainService.ChangePassword$string.string$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :356 :8) {
^entry (%_userNickname : none, %_password : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :356 :35)
cbde.store %_userNickname, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :356 :35)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :356 :56)
cbde.store %_password, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :356 :56)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :358 :48) // Not a variable of known type: PasswordChangeResult
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :358 :48) // PasswordChangeResult.ErrorChanging (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :360 :16) // Not a variable of known type: jugadorDataManager
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :360 :49) // Not a variable of known type: userNickname
%7 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :360 :16) // jugadorDataManager.CheckNickname(userNickname) (InvocationExpression)
cond_br %7, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :360 :16)

^1: // BinaryBranchBlock
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :362 :37) // Not a variable of known type: hashText
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :362 :57) // Not a variable of known type: password
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :362 :37) // hashText.TextToHash(password) (InvocationExpression)
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :363 :35) // Not a variable of known type: jugadorDataManager
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :363 :69) // Not a variable of known type: userNickname
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :363 :83) // Not a variable of known type: newPassword
%15 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :363 :35) // jugadorDataManager.ChangePassword(userNickname, newPassword) (InvocationExpression)
%16 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :363 :20) // resultChange
cbde.store %15, %16 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :363 :20)
%17 = cbde.load %16 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :365 :20)
%18 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :365 :35)
%19 = cmpi "sgt", %17, %18 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :365 :20)
cond_br %19, ^3, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :365 :20)

^3: // SimpleBlock
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :367 :35) // Not a variable of known type: PasswordChangeResult
%21 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :367 :35) // PasswordChangeResult.ChangedPassword (SimpleMemberAccessExpression)
br ^2

^2: // SimpleBlock
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :372 :12) // Not a variable of known type: PlayerCallback
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :372 :51) // Not a variable of known type: changeResult
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :372 :12) // PlayerCallback.GetPasswordChangeResult(changeResult) (InvocationExpression)
br ^4

^4: // ExitBlock
return

}
func @_Contratos.MainService.GetActualPlayer$Dominio.Jugador$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :376 :8) {
^entry (%_actualPlayer : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :376 :36)
cbde.store %_actualPlayer, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :376 :36)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :378 :52) // Not a variable of known type: DataObtainedResult
%2 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :378 :52) // DataObtainedResult.ErrorObtainingData (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :379 :48) // Not a variable of known type: jugadorDataManager
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :379 :87) // Not a variable of known type: actualPlayer
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :379 :87) // actualPlayer.Apodo (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :379 :48) // jugadorDataManager.GetPlayerByNickname(actualPlayer.Apodo) (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :381 :16) // Not a variable of known type: searchedPlayer
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :381 :34) // null (NullLiteralExpression)
%11 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :381 :16) // comparison of unknown type: searchedPlayer != null
cond_br %11, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :381 :16)

^1: // SimpleBlock
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :383 :55) // new Dominio.Jugador                  {                      IdJugador = searchedPlayer.idJugador,                      Apodo = searchedPlayer.apodo,                      CorreoElectronico = searchedPlayer.correoElectronico,                      Status = searchedPlayer.status,                      PreguntaRecuperacion = searchedPlayer.preguntaRecuperacion,                      IdLenguaje = searchedPlayer.idioma                    } (ObjectCreationExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :385 :32) // Not a variable of known type: searchedPlayer
%14 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :385 :32) // searchedPlayer.idJugador (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :386 :28) // Not a variable of known type: searchedPlayer
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :386 :28) // searchedPlayer.apodo (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :387 :40) // Not a variable of known type: searchedPlayer
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :387 :40) // searchedPlayer.correoElectronico (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :388 :29) // Not a variable of known type: searchedPlayer
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :388 :29) // searchedPlayer.status (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :389 :43) // Not a variable of known type: searchedPlayer
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :389 :43) // searchedPlayer.preguntaRecuperacion (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :390 :33) // Not a variable of known type: searchedPlayer
%24 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :390 :33) // searchedPlayer.idioma (SimpleMemberAccessExpression)
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :393 :37) // Not a variable of known type: DataObtainedResult
%27 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :393 :37) // DataObtainedResult.DataObtained (SimpleMemberAccessExpression)
%28 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :394 :16) // Not a variable of known type: PlayerCallback
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :394 :48) // Not a variable of known type: dataObtainedResult
%30 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :394 :68) // Not a variable of known type: domainSearchedPlayer
%31 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :394 :16) // PlayerCallback.SendActualPlayer(dataObtainedResult, domainSearchedPlayer) (InvocationExpression)
br ^3

^2: // SimpleBlock
%32 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :398 :46) // new Jugador() (ObjectCreationExpression)
%34 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :399 :16) // Not a variable of known type: PlayerCallback
%35 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :399 :48) // Not a variable of known type: dataObtainedResult
%36 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :399 :68) // Not a variable of known type: emptyPlayer
%37 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :399 :16) // PlayerCallback.SendActualPlayer(dataObtainedResult, emptyPlayer) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_Contratos.MainService.CloseSession$string$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :405 :8) {
^entry (%_playerNickname : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :405 :33)
cbde.store %_playerNickname, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :405 :33)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :407 :12) // Not a variable of known type: playersLoggedIn
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :407 :35) // Not a variable of known type: playerNickname
%3 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :407 :12) // playersLoggedIn.Remove(playerNickname) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Contratos.MainService.GetRankingData$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :422 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: QueryRankingData
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :425 :45) // QueryRankingData() (InvocationExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :427 :16) // Not a variable of known type: rankings
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :427 :28) // null (NullLiteralExpression)
%5 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :427 :16) // comparison of unknown type: rankings == null
cond_br %5, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :427 :16)

^1: // SimpleBlock
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :429 :25) // Not a variable of known type: RankingResult
%7 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :429 :25) // RankingResult.NO_RANKING (SimpleMemberAccessExpression)
br ^3

^2: // SimpleBlock
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :433 :25) // Not a variable of known type: RankingResult
%9 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :433 :25) // RankingResult.RANKING_EXISTS (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :435 :16) // Not a variable of known type: RankingCallback
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :435 :51) // Not a variable of known type: rankings
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :435 :16) // RankingCallback.ReceiveRankingData(rankings) (InvocationExpression)
br ^3

^3: // SimpleBlock
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :439 :12) // Not a variable of known type: RankingCallback
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :439 :45) // Not a variable of known type: result
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :439 :12) // RankingCallback.GetRankingResult(result) (InvocationExpression)
br ^4

^4: // ExitBlock
return

}
// Skipping function QueryRankingData(), it contains poisonous unsupported syntaxes

// Skipping function Player1Turn(none, i32, i32, i32), it contains poisonous unsupported syntaxes

// Skipping function CreateMatch(none, none), it contains poisonous unsupported syntaxes

// Skipping function Player2Turn(none, i32, i32, i32), it contains poisonous unsupported syntaxes

func @_Contratos.MainService.FinishPlayerGame$int.int.int.int$(i32, i32, i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :568 :8) {
^entry (%_matchNumber : i32, %_playerNumber : i32, %_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :568 :37)
cbde.store %_matchNumber, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :568 :37)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :568 :54)
cbde.store %_playerNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :568 :54)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :568 :72)
cbde.store %_playerTwoCheckers, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :568 :72)
%3 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :568 :95)
cbde.store %_playerOneCheckers, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :568 :95)
br ^0

^0: // BinaryBranchBlock
%4 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :570 :16)
%5 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :570 :32)
%6 = cmpi "eq", %4, %5 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :570 :16)
cond_br %6, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :570 :16)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :572 :16) // Not a variable of known type: activeMatches
%8 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :572 :30)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :572 :16) // activeMatches[matchNumber] (ElementAccessExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :572 :16) // activeMatches[matchNumber].playerTwoCallback (SimpleMemberAccessExpression)
%11 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :572 :72)
%12 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :572 :91)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :572 :16) // activeMatches[matchNumber].playerTwoCallback.FinishGame(playerTwoCheckers, playerOneCheckers) (InvocationExpression)
br ^3

^2: // SimpleBlock
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :576 :16) // Not a variable of known type: activeMatches
%15 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :576 :30)
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :576 :16) // activeMatches[matchNumber] (ElementAccessExpression)
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :576 :16) // activeMatches[matchNumber].playerOneCallback (SimpleMemberAccessExpression)
%18 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :576 :72)
%19 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :576 :91)
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :576 :16) // activeMatches[matchNumber].playerOneCallback.FinishGame(playerTwoCheckers, playerOneCheckers) (InvocationExpression)
br ^3

^3: // ForInitializerBlock
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :578 :52) // new RankingDataManager() (ObjectCreationExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :579 :12) // Not a variable of known type: rankingDataManager
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :579 :50) // Not a variable of known type: activeMatches
%25 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :579 :64)
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :579 :50) // activeMatches[matchNumber] (ElementAccessExpression)
%27 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :579 :50) // activeMatches[matchNumber].playerOneData (SimpleMemberAccessExpression)
%28 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :579 :92)
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :579 :111) // Not a variable of known type: activeMatches
%30 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :579 :125)
%31 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :579 :111) // activeMatches[matchNumber] (ElementAccessExpression)
%32 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :579 :111) // activeMatches[matchNumber].playerTwoData (SimpleMemberAccessExpression)
%33 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :579 :153)
%34 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :579 :172)
%35 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :579 :12) // rankingDataManager.UpdateMatchResults(activeMatches[matchNumber].playerOneData, playerOneCheckers, activeMatches[matchNumber].playerTwoData, playerTwoCheckers, playerNumber) (InvocationExpression)
%36 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :581 :12) // Not a variable of known type: numberActiveMatches
%37 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :581 :12) // Inc/Decrement of field or property numberActiveMatches
%38 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :582 :12) // Not a variable of known type: activeMatches
%39 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :582 :35)
%40 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :582 :12) // activeMatches.RemoveAt(matchNumber) (InvocationExpression)
%41 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :584 :16) // listPosition
%42 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :586 :32)
cbde.store %42, %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :586 :17)
br ^4

^4: // BinaryBranchBlock
%43 = cbde.load %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :586 :45)
%44 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :586 :60) // Not a variable of known type: activeMatches
%45 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :586 :60) // activeMatches.Count (SimpleMemberAccessExpression)
%46 = cmpi "slt", %43, %45 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :586 :45)
cond_br %46, ^5, ^6 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :586 :45)

^5: // SimpleBlock
%47 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :588 :16) // Not a variable of known type: activeMatches
%48 = cbde.load %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :588 :30)
%49 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :588 :16) // activeMatches[listPosition] (ElementAccessExpression)
%50 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :588 :16) // activeMatches[listPosition].matchActiveNumber (SimpleMemberAccessExpression)
%51 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :588 :16) // Inc/Decrement of unknown identifier
%52 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :589 :16) // Not a variable of known type: activeMatches
%53 = cbde.load %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :589 :30)
%54 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :589 :16) // activeMatches[listPosition] (ElementAccessExpression)
%55 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :589 :16) // activeMatches[listPosition].playerOneCallback (SimpleMemberAccessExpression)
%56 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :589 :80) // Not a variable of known type: activeMatches
%57 = cbde.load %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :589 :94)
%58 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :589 :80) // activeMatches[listPosition] (ElementAccessExpression)
%59 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :589 :80) // activeMatches[listPosition].matchActiveNumber (SimpleMemberAccessExpression)
%60 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :589 :16) // activeMatches[listPosition].playerOneCallback.UpdateMatchNumber(activeMatches[listPosition].matchActiveNumber) (InvocationExpression)
%61 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :590 :16) // Not a variable of known type: activeMatches
%62 = cbde.load %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :590 :30)
%63 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :590 :16) // activeMatches[listPosition] (ElementAccessExpression)
%64 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :590 :16) // activeMatches[listPosition].playerTwoCallback (SimpleMemberAccessExpression)
%65 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :590 :80) // Not a variable of known type: activeMatches
%66 = cbde.load %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :590 :94)
%67 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :590 :80) // activeMatches[listPosition] (ElementAccessExpression)
%68 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :590 :80) // activeMatches[listPosition].matchActiveNumber (SimpleMemberAccessExpression)
%69 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :590 :16) // activeMatches[listPosition].playerTwoCallback.UpdateMatchNumber(activeMatches[listPosition].matchActiveNumber) (InvocationExpression)
br ^7

^7: // SimpleBlock
%70 = cbde.load %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :586 :81)
%71 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :586 :81)
%72 = addi %70, %71 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :586 :81)
cbde.store %72, %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :586 :81)
br ^4

^6: // ExitBlock
return

}
func @_Contratos.MainService.SendGameMessage$int.string.int$(i32, none, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :594 :8) {
^entry (%_playerNumber : i32, %_message : none, %_matchNumber : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :594 :36)
cbde.store %_playerNumber, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :594 :36)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :594 :54)
cbde.store %_message, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :594 :54)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :594 :70)
cbde.store %_matchNumber, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :594 :70)
br ^0

^0: // BinaryBranchBlock
%3 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :596 :16)
%4 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :596 :32)
%5 = cmpi "eq", %3, %4 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :596 :16)
cond_br %5, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :596 :16)

^1: // SimpleBlock
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :598 :16) // Not a variable of known type: activeMatches
%7 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :598 :30)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :598 :16) // activeMatches[matchNumber] (ElementAccessExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :598 :16) // activeMatches[matchNumber].playerTwoCallback (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :598 :80) // Not a variable of known type: message
%11 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :598 :89)
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :598 :16) // activeMatches[matchNumber].playerTwoCallback.RecieveGameMessage(message, PLAYER_ONE) (InvocationExpression)
br ^3

^2: // SimpleBlock
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :602 :16) // Not a variable of known type: activeMatches
%14 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :602 :30)
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :602 :16) // activeMatches[matchNumber] (ElementAccessExpression)
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :602 :16) // activeMatches[matchNumber].playerOneCallback (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :602 :80) // Not a variable of known type: message
%18 = constant 2 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :602 :88)
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :602 :16) // activeMatches[matchNumber].playerOneCallback.RecieveGameMessage(message,PLAYER_TWO) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_Contratos.MainService.ReportPlayer$int.int.string$(i32, i32, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :606 :8) {
^entry (%_playerNumberReporting : i32, %_matchNumber : i32, %_reportText : none):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :606 :33)
cbde.store %_playerNumberReporting, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :606 :33)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :606 :60)
cbde.store %_matchNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :606 :60)
%2 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :606 :77)
cbde.store %_reportText, %2 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :606 :77)
br ^0

^0: // BinaryBranchBlock
%3 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :608 :16) // reportResult
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :609 :48) // Not a variable of known type: ReportSaveResult
%5 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :609 :48) // ReportSaveResult.ERROR_SAVING (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :610 :50) // new ReportDataManager() (ObjectCreationExpression)
%9 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :612 :16)
%10 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :612 :41)
%11 = cmpi "eq", %9, %10 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :612 :16)
cond_br %11, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :612 :16)

^1: // SimpleBlock
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :614 :31) // Not a variable of known type: reportDataManager
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :614 :62) // Not a variable of known type: activeMatches
%14 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :614 :76)
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :614 :62) // activeMatches[matchNumber] (ElementAccessExpression)
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :614 :62) // activeMatches[matchNumber].playerTwoData (SimpleMemberAccessExpression)
%17 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :614 :62) // activeMatches[matchNumber].playerTwoData.IdJugador (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :614 :114) // Not a variable of known type: activeMatches
%19 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :614 :128)
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :614 :114) // activeMatches[matchNumber] (ElementAccessExpression)
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :614 :114) // activeMatches[matchNumber].playerOneData (SimpleMemberAccessExpression)
%22 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :614 :114) // activeMatches[matchNumber].playerOneData.IdJugador (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :614 :166) // Not a variable of known type: reportText
%24 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :614 :31) // reportDataManager.ReportPlayer(activeMatches[matchNumber].playerTwoData.IdJugador, activeMatches[matchNumber].playerOneData.IdJugador, reportText) (InvocationExpression)
cbde.store %24, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :614 :16)
br ^3

^2: // SimpleBlock
%25 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :618 :31) // Not a variable of known type: reportDataManager
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :618 :62) // Not a variable of known type: activeMatches
%27 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :618 :76)
%28 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :618 :62) // activeMatches[matchNumber] (ElementAccessExpression)
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :618 :62) // activeMatches[matchNumber].playerOneData (SimpleMemberAccessExpression)
%30 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :618 :62) // activeMatches[matchNumber].playerOneData.IdJugador (SimpleMemberAccessExpression)
%31 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :618 :114) // Not a variable of known type: activeMatches
%32 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :618 :128)
%33 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :618 :114) // activeMatches[matchNumber] (ElementAccessExpression)
%34 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :618 :114) // activeMatches[matchNumber].playerTwoData (SimpleMemberAccessExpression)
%35 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :618 :114) // activeMatches[matchNumber].playerTwoData.IdJugador (SimpleMemberAccessExpression)
%36 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :618 :166) // Not a variable of known type: reportText
%37 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :618 :31) // reportDataManager.ReportPlayer(activeMatches[matchNumber].playerOneData.IdJugador, activeMatches[matchNumber].playerTwoData.IdJugador, reportText) (InvocationExpression)
cbde.store %37, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :618 :16)
br ^3

^3: // BinaryBranchBlock
%38 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :621 :16)
%39 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :621 :31)
%40 = cmpi "sgt", %38, %39 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :621 :16)
cond_br %40, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :621 :16)

^4: // SimpleBlock
%41 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :623 :35) // Not a variable of known type: ReportSaveResult
%42 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :623 :35) // ReportSaveResult.SAVED_REPORT (SimpleMemberAccessExpression)
br ^5

^5: // SimpleBlock
%43 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :625 :12) // Not a variable of known type: GameManagerCallback
%44 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :625 :45) // Not a variable of known type: reportSaveResult
%45 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :625 :12) // GameManagerCallback.ReportResult(reportSaveResult) (InvocationExpression)
br ^6

^6: // ExitBlock
return

}
func @_Contratos.MainService.LeaveMatch$int.int$(i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :628 :8) {
^entry (%_matchNumber : i32, %_playerNumber : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :628 :31)
cbde.store %_matchNumber, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :628 :31)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :628 :48)
cbde.store %_playerNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :628 :48)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :630 :16)
%3 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :630 :32)
%4 = cmpi "eq", %2, %3 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :630 :16)
cond_br %4, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :630 :16)

^1: // SimpleBlock
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :632 :16) // Not a variable of known type: activeMatches
%6 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :632 :30)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :632 :16) // activeMatches[matchNumber] (ElementAccessExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :632 :16) // activeMatches[matchNumber].playerTwoCallback (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :632 :16) // activeMatches[matchNumber].playerTwoCallback.EndAbandonedGame() (InvocationExpression)
br ^3

^2: // SimpleBlock
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :636 :16) // Not a variable of known type: activeMatches
%11 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :636 :30)
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :636 :16) // activeMatches[matchNumber] (ElementAccessExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :636 :16) // activeMatches[matchNumber].playerOneCallback (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :636 :16) // activeMatches[matchNumber].playerOneCallback.EndAbandonedGame() (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_Contratos.MainService.GetReportData$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :651 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :653 :39) // Not a variable of known type: AdminReportResult
%1 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :653 :39) // AdminReportResult.NO_REPORTS_EXIST (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: QueryReportData
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :654 :47) // QueryReportData() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :656 :16) // Not a variable of known type: reportList
%6 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :656 :16) // reportList.Count (SimpleMemberAccessExpression)
%7 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :656 :35)
%8 = cmpi "sgt", %6, %7 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :656 :16)
cond_br %8, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :656 :16)

^1: // SimpleBlock
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :658 :25) // Not a variable of known type: AdminReportResult
%10 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :658 :25) // AdminReportResult.REPORT_EXISTS (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :660 :16) // Not a variable of known type: BanCallback
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :660 :46) // Not a variable of known type: reportList
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :660 :16) // BanCallback.ReceiveReportData(reportList) (InvocationExpression)
br ^2

^2: // SimpleBlock
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :662 :12) // Not a variable of known type: BanCallback
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :662 :49) // Not a variable of known type: result
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :662 :12) // BanCallback.GetReportDataQueryResult(result) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
// Skipping function QueryReportData(), it contains poisonous unsupported syntaxes

// Skipping function BanPlayer(none), it contains poisonous unsupported syntaxes

