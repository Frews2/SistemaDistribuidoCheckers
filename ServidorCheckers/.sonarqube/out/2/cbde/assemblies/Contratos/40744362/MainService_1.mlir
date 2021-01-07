func @_Contratos.MainService.Login$Dominio.Jugador$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :33 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :33 :26)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :33 :26)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :35 :33) // Not a variable of known type: LoginResult
%2 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :35 :33) // LoginResult.NoExisteJugador (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :36 :48) // new AdminDataManager() (ObjectCreationExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :37 :16) // Not a variable of known type: adminDataManager
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :37 :47) // Not a variable of known type: player
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :37 :47) // player.Apodo (SimpleMemberAccessExpression)
%9 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :37 :16) // adminDataManager.CheckNickname(player.Apodo) (InvocationExpression)
cond_br %9, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :37 :16)

^1: // BinaryBranchBlock
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :39 :20) // Not a variable of known type: adminDataManager
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :39 :56) // Not a variable of known type: hashText
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :39 :76) // Not a variable of known type: player
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :39 :76) // player.Contrasenia (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :39 :56) // hashText.TextToHash(player.Contrasenia) (InvocationExpression)
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :39 :97) // Not a variable of known type: player
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :39 :97) // player.Apodo (SimpleMemberAccessExpression)
%17 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :39 :20) // adminDataManager.EsPasswordCorrecto(hashText.TextToHash(player.Contrasenia), player.Apodo) (InvocationExpression)
cond_br %17, ^3, ^4 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :39 :20)

^3: // SimpleBlock
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :41 :29) // Not a variable of known type: LoginResult
%19 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :41 :29) // LoginResult.EsAdmin (SimpleMemberAccessExpression)
br ^5

^4: // SimpleBlock
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :45 :29) // Not a variable of known type: LoginResult
%21 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :45 :29) // LoginResult.PasswordIncorrecto (SimpleMemberAccessExpression)
br ^5

^2: // BinaryBranchBlock
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :50 :56) // new JugadorDataManager() (ObjectCreationExpression)
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :51 :20) // Not a variable of known type: jugadorDataManager
%25 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :51 :53) // Not a variable of known type: player
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :51 :53) // player.Apodo (SimpleMemberAccessExpression)
%27 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :51 :20) // jugadorDataManager.CheckNickname(player.Apodo) (InvocationExpression)
cond_br %27, ^6, ^7 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :51 :20)

^6: // BinaryBranchBlock
%28 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :53 :24) // Not a variable of known type: jugadorDataManager
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :53 :54) // Not a variable of known type: player
%30 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :53 :54) // player.Apodo (SimpleMemberAccessExpression)
%31 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :53 :24) // jugadorDataManager.CheckState(player.Apodo) (InvocationExpression)
cond_br %31, ^8, ^9 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :53 :24)

^8: // BinaryBranchBlock
%32 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :55 :28) // Not a variable of known type: jugadorDataManager
%33 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :55 :66) // Not a variable of known type: hashText
%34 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :55 :86) // Not a variable of known type: player
%35 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :55 :86) // player.Contrasenia (SimpleMemberAccessExpression)
%36 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :55 :66) // hashText.TextToHash(player.Contrasenia) (InvocationExpression)
%37 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :55 :107) // Not a variable of known type: player
%38 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :55 :107) // player.Apodo (SimpleMemberAccessExpression)
%39 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :55 :28) // jugadorDataManager.EsPasswordCorrecto(hashText.TextToHash(player.Contrasenia), player.Apodo) (InvocationExpression)
cond_br %39, ^10, ^11 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :55 :28)

^10: // SimpleBlock
%40 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :57 :37) // Not a variable of known type: LoginResult
%41 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :57 :37) // LoginResult.ExisteJugadorVerificado (SimpleMemberAccessExpression)
%42 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :58 :64) // Not a variable of known type: jugadorDataManager
%43 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :58 :103) // Not a variable of known type: player
%44 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :58 :103) // player.Apodo (SimpleMemberAccessExpression)
%45 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :58 :64) // jugadorDataManager.GetPlayerByNickname(player.Apodo) (InvocationExpression)
%47 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :59 :28) // Not a variable of known type: player
%48 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :59 :28) // player.IdLenguaje (SimpleMemberAccessExpression)
%49 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :59 :48) // Not a variable of known type: searchedPlayer
%50 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :59 :48) // searchedPlayer.idioma (SimpleMemberAccessExpression)
br ^5

^11: // SimpleBlock
%51 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :63 :37) // Not a variable of known type: LoginResult
%52 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :63 :37) // LoginResult.PasswordIncorrecto (SimpleMemberAccessExpression)
br ^5

^9: // SimpleBlock
%53 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :68 :33) // Not a variable of known type: LoginResult
%54 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :68 :33) // LoginResult.ExisteJugadorNoVerificado (SimpleMemberAccessExpression)
br ^5

^7: // SimpleBlock
%55 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :73 :29) // Not a variable of known type: LoginResult
%56 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :73 :29) // LoginResult.NoExisteJugador (SimpleMemberAccessExpression)
br ^5

^5: // SimpleBlock
%57 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :77 :12) // Not a variable of known type: Callback
%58 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :77 :36) // Not a variable of known type: result
%59 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :77 :44) // Not a variable of known type: player
%60 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :77 :12) // Callback.GetLoginResult(result, player) (InvocationExpression)
br ^12

^12: // ExitBlock
return

}
// Skipping function SavePlayer(none), it contains poisonous unsupported syntaxes

func @_Contratos.MainService.VerifyPlayer$Dominio.Jugador$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :163 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :163 :33)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :163 :33)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :165 :43) // Not a variable of known type: VerificationResult
%2 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :165 :43) // VerificationResult.NoExisteJugador (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :167 :52) // new JugadorDataManager() (ObjectCreationExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :169 :16) // Not a variable of known type: jugadorDataManager
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :169 :49) // Not a variable of known type: player
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :169 :49) // player.Apodo (SimpleMemberAccessExpression)
%9 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :169 :16) // jugadorDataManager.CheckNickname(player.Apodo) (InvocationExpression)
cond_br %9, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :169 :16)

^1: // BinaryBranchBlock
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :171 :20) // Not a variable of known type: jugadorDataManager
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :171 :51) // Not a variable of known type: player
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :171 :51) // player.Apodo (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :171 :65) // Not a variable of known type: player
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :171 :65) // player.PinConfirmacion (SimpleMemberAccessExpression)
%15 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :171 :20) // jugadorDataManager.PinCorrecto(player.Apodo, player.PinConfirmacion) (InvocationExpression)
cond_br %15, ^3, ^4 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :171 :20)

^3: // BinaryBranchBlock
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :173 :33) // Not a variable of known type: jugadorDataManager
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :173 :68) // new DataAccess.Jugador                      {                          apodo = player.Apodo,                          pinConfirmacion = player.PinConfirmacion,                      } (ObjectCreationExpression)
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :175 :32) // Not a variable of known type: player
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :175 :32) // player.Apodo (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :176 :42) // Not a variable of known type: player
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :176 :42) // player.PinConfirmacion (SimpleMemberAccessExpression)
%22 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :173 :33) // jugadorDataManager.VerifyNewPlayer(new DataAccess.Jugador                      {                          apodo = player.Apodo,                          pinConfirmacion = player.PinConfirmacion,                      }) (InvocationExpression)
%23 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :173 :24) // result
cbde.store %22, %23 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :173 :24)
%24 = cbde.load %23 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :179 :24)
%25 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :179 :33)
%26 = cmpi "sgt", %24, %25 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :179 :24)
cond_br %26, ^5, ^6 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :179 :24)

^5: // SimpleBlock
%27 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :181 :36) // Not a variable of known type: VerificationResult
%28 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :181 :36) // VerificationResult.VerificacionExistosa (SimpleMemberAccessExpression)
br ^6

^4: // SimpleBlock
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :186 :32) // Not a variable of known type: VerificationResult
%30 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :186 :32) // VerificationResult.PinIncorrecto (SimpleMemberAccessExpression)
br ^6

^2: // SimpleBlock
%31 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :191 :28) // Not a variable of known type: VerificationResult
%32 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :191 :28) // VerificationResult.NoExisteJugador (SimpleMemberAccessExpression)
br ^6

^6: // SimpleBlock
%33 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :194 :12) // Not a variable of known type: Callback
%34 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :194 :37) // Not a variable of known type: resultado
%35 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :194 :12) // Callback.GetVerifyResult(resultado) (InvocationExpression)
br ^7

^7: // ExitBlock
return

}
// Skipping function SendMail(none), it contains poisonous unsupported syntaxes

// Skipping function PasswordForgotMail(none), it contains poisonous unsupported syntaxes

func @_Contratos.MainService.VerifyPin$string.string$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :273 :8) {
^entry (%_actualNickname : none, %_playerPin : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :273 :30)
cbde.store %_actualNickname, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :273 :30)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :273 :53)
cbde.store %_playerPin, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :273 :53)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :275 :34) // Not a variable of known type: PinResult
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :275 :34) // PinResult.UnknownPin (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :277 :16) // Not a variable of known type: jugadorDataManager
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :277 :47) // Not a variable of known type: actualNickname
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :277 :63) // Not a variable of known type: playerPin
%8 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :277 :16) // jugadorDataManager.PinCorrecto(actualNickname, playerPin) (InvocationExpression)
cond_br %8, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :277 :16)

^1: // SimpleBlock
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :279 :28) // Not a variable of known type: PinResult
%10 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :279 :28) // PinResult.VerifiedPin (SimpleMemberAccessExpression)
br ^2

^2: // SimpleBlock
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :282 :12) // Not a variable of known type: Callback
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :282 :34) // Not a variable of known type: pinResult
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :282 :45) // Not a variable of known type: actualNickname
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :282 :12) // Callback.GetPinResult(pinResult, actualNickname) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_Contratos.MainService.ChangePassword$string.string$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :285 :8) {
^entry (%_userNickname : none, %_password : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :285 :35)
cbde.store %_userNickname, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :285 :35)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :285 :56)
cbde.store %_password, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :285 :56)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :287 :48) // Not a variable of known type: PasswordChangeResult
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :287 :48) // PasswordChangeResult.ErrorChanging (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :289 :16) // Not a variable of known type: jugadorDataManager
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :289 :49) // Not a variable of known type: userNickname
%7 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :289 :16) // jugadorDataManager.CheckNickname(userNickname) (InvocationExpression)
cond_br %7, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :289 :16)

^1: // BinaryBranchBlock
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :291 :37) // Not a variable of known type: hashText
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :291 :57) // Not a variable of known type: password
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :291 :37) // hashText.TextToHash(password) (InvocationExpression)
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :292 :35) // Not a variable of known type: jugadorDataManager
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :292 :69) // Not a variable of known type: userNickname
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :292 :83) // Not a variable of known type: newPassword
%15 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :292 :35) // jugadorDataManager.ChangePassword(userNickname, newPassword) (InvocationExpression)
%16 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :292 :20) // resultChange
cbde.store %15, %16 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :292 :20)
%17 = cbde.load %16 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :294 :20)
%18 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :294 :35)
%19 = cmpi "sgt", %17, %18 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :294 :20)
cond_br %19, ^3, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :294 :20)

^3: // SimpleBlock
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :296 :35) // Not a variable of known type: PasswordChangeResult
%21 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :296 :35) // PasswordChangeResult.ChangedPassword (SimpleMemberAccessExpression)
br ^2

^2: // SimpleBlock
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :301 :12) // Not a variable of known type: Callback
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :301 :45) // Not a variable of known type: changeResult
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :301 :12) // Callback.GetPasswordChangeResult(changeResult) (InvocationExpression)
br ^4

^4: // ExitBlock
return

}
func @_Contratos.MainService.GetActualPlayer$Dominio.Jugador$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :305 :8) {
^entry (%_actualPlayer : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :305 :36)
cbde.store %_actualPlayer, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :305 :36)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :307 :52) // Not a variable of known type: DataObtainedResult
%2 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :307 :52) // DataObtainedResult.ErrorObtainingData (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :308 :48) // Not a variable of known type: jugadorDataManager
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :308 :87) // Not a variable of known type: actualPlayer
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :308 :87) // actualPlayer.Apodo (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :308 :48) // jugadorDataManager.GetPlayerByNickname(actualPlayer.Apodo) (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :310 :16) // Not a variable of known type: searchedPlayer
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :310 :34) // null (NullLiteralExpression)
%11 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :310 :16) // comparison of unknown type: searchedPlayer != null
cond_br %11, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :310 :16)

^1: // SimpleBlock
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :312 :55) // new Dominio.Jugador                  {                      IdJugador = searchedPlayer.idJugador,                      Apodo = searchedPlayer.apodo,                      CorreoElectronico = searchedPlayer.correoElectronico,                      Status = searchedPlayer.status,                      PreguntaRecuperacion = searchedPlayer.preguntaRecuperacion,                      IdLenguaje = searchedPlayer.idioma                    } (ObjectCreationExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :314 :32) // Not a variable of known type: searchedPlayer
%14 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :314 :32) // searchedPlayer.idJugador (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :315 :28) // Not a variable of known type: searchedPlayer
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :315 :28) // searchedPlayer.apodo (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :316 :40) // Not a variable of known type: searchedPlayer
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :316 :40) // searchedPlayer.correoElectronico (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :317 :29) // Not a variable of known type: searchedPlayer
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :317 :29) // searchedPlayer.status (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :318 :43) // Not a variable of known type: searchedPlayer
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :318 :43) // searchedPlayer.preguntaRecuperacion (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :319 :33) // Not a variable of known type: searchedPlayer
%24 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :319 :33) // searchedPlayer.idioma (SimpleMemberAccessExpression)
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :322 :37) // Not a variable of known type: DataObtainedResult
%27 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :322 :37) // DataObtainedResult.DataObtained (SimpleMemberAccessExpression)
%28 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :323 :16) // Not a variable of known type: Callback
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :323 :42) // Not a variable of known type: dataObtainedResult
%30 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :323 :62) // Not a variable of known type: domainSearchedPlayer
%31 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :323 :16) // Callback.SendActualPlayer(dataObtainedResult, domainSearchedPlayer) (InvocationExpression)
br ^3

^2: // SimpleBlock
%32 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :327 :46) // new Jugador() (ObjectCreationExpression)
%34 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :328 :16) // Not a variable of known type: Callback
%35 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :328 :42) // Not a variable of known type: dataObtainedResult
%36 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :328 :62) // Not a variable of known type: emptyPlayer
%37 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :328 :16) // Callback.SendActualPlayer(dataObtainedResult, emptyPlayer) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_Contratos.MainService.GetRankingData$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :345 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: QueryRankingData
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :348 :45) // QueryRankingData() (InvocationExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :350 :16) // Not a variable of known type: rankings
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :350 :28) // null (NullLiteralExpression)
%5 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :350 :16) // comparison of unknown type: rankings == null
cond_br %5, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :350 :16)

^1: // SimpleBlock
// Entity from another assembly: RankingResult
%6 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :352 :25) // RankingResult.NO_RANKING (SimpleMemberAccessExpression)
br ^3

^2: // SimpleBlock
// Entity from another assembly: RankingResult
%7 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :356 :25) // RankingResult.RANKING_EXISTS (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :358 :16) // Not a variable of known type: RankingCallback
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :358 :49) // Not a variable of known type: result
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :358 :16) // RankingCallback.GetRankingResult(result) (InvocationExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :360 :16) // Not a variable of known type: RankingCallback
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :360 :51) // Not a variable of known type: rankings
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :360 :16) // RankingCallback.ReceiveRankingData(rankings) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
// Skipping function QueryRankingData(), it contains poisonous unsupported syntaxes

func @_Contratos.MainService.Player1Turn$Contratos.Checker$$$$.int.int.int$(none, i32, i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :415 :8) {
^entry (%_updateBoardMatrix : none, %_matchNumber : i32, %_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :415 :32)
cbde.store %_updateBoardMatrix, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :415 :32)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :415 :63)
cbde.store %_matchNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :415 :63)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :415 :80)
cbde.store %_playerTwoCheckers, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :415 :80)
%3 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :415 :103)
cbde.store %_playerOneCheckers, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :415 :103)
br ^0

^0: // SimpleBlock
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :417 :12) // Not a variable of known type: activeMatches
%5 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :417 :26)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :417 :12) // activeMatches[matchNumber] (ElementAccessExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :417 :12) // activeMatches[matchNumber].playerTwoCallback (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :417 :71) // Not a variable of known type: updateBoardMatrix
%9 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :417 :90)
%10 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :417 :109)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :417 :12) // activeMatches[matchNumber].playerTwoCallback.UpdateGameGUI(updateBoardMatrix, playerTwoCheckers, playerOneCheckers) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Contratos.MainService.CreateMatch$Dominio.Jugador.Contratos.CheckersGameMode$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :420 :8) {
^entry (%_currentPlayer : none, %_gameMode : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :420 :32)
cbde.store %_currentPlayer, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :420 :32)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :420 :55)
cbde.store %_gameMode, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :420 :55)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :422 :50) // Not a variable of known type: MatchmakingResult
%3 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :422 :50) // MatchmakingResult.UNABLE_TO_ENTER_MATCH (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :424 :16) // Not a variable of known type: playersQueuedClassic
%6 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :424 :16) // playersQueuedClassic.Count (SimpleMemberAccessExpression)
%7 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :424 :45)
%8 = cmpi "sgt", %6, %7 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :424 :16)
cond_br %8, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :424 :16)

^1: // SimpleBlock
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :426 :40) // new Match() (ObjectCreationExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :427 :34) // Not a variable of known type: playersQueuedClassic
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :427 :34) // playersQueuedClassic.First() (InvocationExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :428 :16) // Not a variable of known type: playersQueuedClassic
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :428 :44) // Not a variable of known type: newCompleteGame
%15 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :428 :16) // playersQueuedClassic.Remove(newCompleteGame) (InvocationExpression)
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :429 :16) // Not a variable of known type: newCompleteGame
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :429 :16) // newCompleteGame.playerTwoCallback (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :429 :52) // Not a variable of known type: GameMatchManagerCallback
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :429 :52) // GameMatchManagerCallback as IGameMatchManagerCallback (AsExpression)
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :430 :16) // Not a variable of known type: newCompleteGame
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :430 :16) // newCompleteGame.playerTwoData (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :430 :48) // Not a variable of known type: currentPlayer
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :431 :16) // Not a variable of known type: newCompleteGame
%24 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :431 :16) // newCompleteGame.matchActiveNumber (SimpleMemberAccessExpression)
%25 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :431 :52) // Not a variable of known type: numberActiveMatches
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :432 :16) // Not a variable of known type: playersQueuedClassic
%27 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :432 :16) // playersQueuedClassic.Sort() (InvocationExpression)
%28 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :433 :36) // Not a variable of known type: MatchmakingResult
%29 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :433 :36) // MatchmakingResult.MATCH_FOUND (SimpleMemberAccessExpression)
%30 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :434 :16) // Not a variable of known type: activeMatches
%31 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :434 :34) // Not a variable of known type: newCompleteGame
%32 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :434 :16) // activeMatches.Add(newCompleteGame) (InvocationExpression)
%33 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :435 :16) // Not a variable of known type: numberActiveMatches
%34 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :435 :16) // Inc/Decrement of field or property numberActiveMatches
%35 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :438 :16) // Not a variable of known type: GameMatchManagerCallback
%36 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :438 :62) // Not a variable of known type: matchmakingResult
%37 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :438 :81) // Not a variable of known type: newCompleteGame
%38 = constant 2 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :438 :98)
%39 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :438 :16) // GameMatchManagerCallback.GetMatchmakingResult(matchmakingResult, newCompleteGame, PLAYER_TWO) (InvocationExpression)
%40 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :439 :16) // Not a variable of known type: newCompleteGame
%41 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :439 :16) // newCompleteGame.playerOneCallback (SimpleMemberAccessExpression)
%42 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :439 :71) // Not a variable of known type: matchmakingResult
%43 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :439 :90) // Not a variable of known type: newCompleteGame
%44 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :439 :107)
%45 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :439 :16) // newCompleteGame.playerOneCallback.GetMatchmakingResult(matchmakingResult, newCompleteGame, PLAYER_ONE) (InvocationExpression)
br ^3

^2: // SimpleBlock
%46 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :444 :32) // new Match()                  {                          currentPlayer = PLAYER_ONE,                          playerOneData = currentPlayer,                          playerOneCallback = GameMatchManagerCallback as IGameMatchManagerCallback,                  } (ObjectCreationExpression)
%47 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :446 :40)
%48 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :447 :40) // Not a variable of known type: currentPlayer
%49 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :448 :44) // Not a variable of known type: GameMatchManagerCallback
%50 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :448 :44) // GameMatchManagerCallback as IGameMatchManagerCallback (AsExpression)
%52 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :451 :16) // Not a variable of known type: playersQueuedClassic
%53 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :451 :41) // Not a variable of known type: newGame
%54 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :451 :16) // playersQueuedClassic.Add(newGame) (InvocationExpression)
%55 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :452 :36) // Not a variable of known type: MatchmakingResult
%56 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :452 :36) // MatchmakingResult.MATCH_NOT_FOUND (SimpleMemberAccessExpression)
%57 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :453 :16) // Not a variable of known type: GameMatchManagerCallback
%58 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :453 :62) // Not a variable of known type: matchmakingResult
%59 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :453 :81) // Not a variable of known type: newGame
%60 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :453 :90)
%61 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :453 :16) // GameMatchManagerCallback.GetMatchmakingResult(matchmakingResult, newGame, PLAYER_ONE) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_Contratos.MainService.Player2Turn$Contratos.Checker$$$$.int.int.int$(none, i32, i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :459 :8) {
^entry (%_updateBoardMatrix : none, %_matchNumber : i32, %_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :459 :32)
cbde.store %_updateBoardMatrix, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :459 :32)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :459 :62)
cbde.store %_matchNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :459 :62)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :459 :78)
cbde.store %_playerTwoCheckers, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :459 :78)
%3 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :459 :101)
cbde.store %_playerOneCheckers, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :459 :101)
br ^0

^0: // SimpleBlock
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :461 :12) // Not a variable of known type: activeMatches
%5 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :461 :26)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :461 :12) // activeMatches[matchNumber] (ElementAccessExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :461 :12) // activeMatches[matchNumber].playerOneCallback (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :461 :71) // Not a variable of known type: updateBoardMatrix
%9 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :461 :90)
%10 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :461 :109)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :461 :12) // activeMatches[matchNumber].playerOneCallback.UpdateGameGUI(updateBoardMatrix, playerTwoCheckers, playerOneCheckers) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Contratos.MainService.FinishPlayerGame$int.int.int.int$(i32, i32, i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :464 :8) {
^entry (%_matchNumber : i32, %_playerNumber : i32, %_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :464 :37)
cbde.store %_matchNumber, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :464 :37)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :464 :54)
cbde.store %_playerNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :464 :54)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :464 :72)
cbde.store %_playerTwoCheckers, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :464 :72)
%3 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :464 :95)
cbde.store %_playerOneCheckers, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :464 :95)
br ^0

^0: // BinaryBranchBlock
%4 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :466 :16)
%5 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :466 :32)
%6 = cmpi "eq", %4, %5 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :466 :16)
cond_br %6, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :466 :16)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :469 :16) // Not a variable of known type: activeMatches
%8 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :469 :30)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :469 :16) // activeMatches[matchNumber] (ElementAccessExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :469 :16) // activeMatches[matchNumber].playerTwoCallback (SimpleMemberAccessExpression)
%11 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :469 :72)
%12 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :469 :91)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :469 :16) // activeMatches[matchNumber].playerTwoCallback.FinishGame(playerTwoCheckers, playerOneCheckers) (InvocationExpression)
br ^3

^2: // SimpleBlock
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :474 :16) // Not a variable of known type: activeMatches
%15 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :474 :30)
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :474 :16) // activeMatches[matchNumber] (ElementAccessExpression)
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :474 :16) // activeMatches[matchNumber].playerOneCallback (SimpleMemberAccessExpression)
%18 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :474 :72)
%19 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :474 :91)
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :474 :16) // activeMatches[matchNumber].playerOneCallback.FinishGame(playerTwoCheckers, playerOneCheckers) (InvocationExpression)
br ^3

^3: // ForInitializerBlock
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :476 :52) // new RankingDataManager() (ObjectCreationExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :477 :12) // Not a variable of known type: rankingDataManager
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :477 :50) // Not a variable of known type: activeMatches
%25 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :477 :64)
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :477 :50) // activeMatches[matchNumber] (ElementAccessExpression)
%27 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :477 :50) // activeMatches[matchNumber].playerOneData (SimpleMemberAccessExpression)
%28 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :477 :91)
%29 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :477 :109) // Not a variable of known type: activeMatches
%30 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :477 :123)
%31 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :477 :109) // activeMatches[matchNumber] (ElementAccessExpression)
%32 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :477 :109) // activeMatches[matchNumber].playerTwoData (SimpleMemberAccessExpression)
%33 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :477 :150)
%34 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :477 :168)
%35 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :477 :12) // rankingDataManager.UpdateMatchResults(activeMatches[matchNumber].playerOneData,playerOneCheckers,activeMatches[matchNumber].playerTwoData,playerTwoCheckers,playerNumber) (InvocationExpression)
%36 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :478 :12) // Not a variable of known type: numberActiveMatches
%37 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :478 :12) // Inc/Decrement of field or property numberActiveMatches
%38 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :479 :12) // Not a variable of known type: activeMatches
%39 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :479 :35)
%40 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :479 :12) // activeMatches.RemoveAt(matchNumber) (InvocationExpression)
%41 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :480 :16) // listPosition
%42 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :481 :32)
cbde.store %42, %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :481 :17)
br ^4

^4: // BinaryBranchBlock
%43 = cbde.load %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :481 :45)
%44 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :481 :59) // Not a variable of known type: activeMatches
%45 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :481 :59) // activeMatches.Count (SimpleMemberAccessExpression)
%46 = cmpi "slt", %43, %45 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :481 :45)
cond_br %46, ^5, ^6 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :481 :45)

^5: // SimpleBlock
%47 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :483 :16) // Not a variable of known type: activeMatches
%48 = cbde.load %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :483 :30)
%49 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :483 :16) // activeMatches[listPosition] (ElementAccessExpression)
%50 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :483 :16) // activeMatches[listPosition].matchActiveNumber (SimpleMemberAccessExpression)
%51 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :483 :16) // Inc/Decrement of unknown identifier
%52 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :484 :16) // Not a variable of known type: activeMatches
%53 = cbde.load %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :484 :30)
%54 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :484 :16) // activeMatches[listPosition] (ElementAccessExpression)
%55 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :484 :16) // activeMatches[listPosition].playerOneCallback (SimpleMemberAccessExpression)
%56 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :484 :80) // Not a variable of known type: activeMatches
%57 = cbde.load %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :484 :94)
%58 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :484 :80) // activeMatches[listPosition] (ElementAccessExpression)
%59 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :484 :80) // activeMatches[listPosition].matchActiveNumber (SimpleMemberAccessExpression)
%60 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :484 :16) // activeMatches[listPosition].playerOneCallback.UpdateMatchNumber(activeMatches[listPosition].matchActiveNumber) (InvocationExpression)
%61 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :485 :16) // Not a variable of known type: activeMatches
%62 = cbde.load %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :485 :30)
%63 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :485 :16) // activeMatches[listPosition] (ElementAccessExpression)
%64 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :485 :16) // activeMatches[listPosition].playerTwoCallback (SimpleMemberAccessExpression)
%65 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :485 :80) // Not a variable of known type: activeMatches
%66 = cbde.load %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :485 :94)
%67 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :485 :80) // activeMatches[listPosition] (ElementAccessExpression)
%68 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :485 :80) // activeMatches[listPosition].matchActiveNumber (SimpleMemberAccessExpression)
%69 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :485 :16) // activeMatches[listPosition].playerTwoCallback.UpdateMatchNumber(activeMatches[listPosition].matchActiveNumber) (InvocationExpression)
br ^7

^7: // SimpleBlock
%70 = cbde.load %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :481 :80)
%71 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :481 :80)
%72 = addi %70, %71 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :481 :80)
cbde.store %72, %41 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :481 :80)
br ^4

^6: // ExitBlock
return

}
func @_Contratos.MainService.GetChatCallback$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :501 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :503 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %0 :  none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :503 :12)

^1: // ExitBlock
return

}
func @_Contratos.MainService.SendText$string.string$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :506 :8) {
^entry (%_destination : none, %_message : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :506 :29)
cbde.store %_destination, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :506 :29)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :506 :49)
cbde.store %_message, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :506 :49)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :508 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %2 :  none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\Contratos\\MainService.cs" :508 :12)

^1: // ExitBlock
return

}
