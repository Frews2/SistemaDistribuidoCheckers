// Skipping function CheckNickname(none), it contains poisonous unsupported syntaxes

// Skipping function CheckState(none), it contains poisonous unsupported syntaxes

// Skipping function CheckBannedState(none), it contains poisonous unsupported syntaxes

// Skipping function EsPasswordCorrecto(none, none), it contains poisonous unsupported syntaxes

// Skipping function CorrectAnswer(none, none), it contains poisonous unsupported syntaxes

// Skipping function PinCorrecto(none, none), it contains poisonous unsupported syntaxes

// Skipping function SaveNewPlayer(none), it contains poisonous unsupported syntaxes

// Skipping function VerifyNewPlayer(none), it contains poisonous unsupported syntaxes

// Skipping function CheckEmail(none), it contains poisonous unsupported syntaxes

// Skipping function ChangePinByNickname(none), it contains poisonous unsupported syntaxes

// Skipping function ChangePassword(none, none), it contains poisonous unsupported syntaxes

// Skipping function BanPlayer(none), it contains poisonous unsupported syntaxes

// Skipping function GetPlayerByNickname(none), it contains poisonous unsupported syntaxes

func @_DataAccess.DataManager.JugadorDataManager.GetDomainPlayerByID$int$(i32) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :194 :8) {
^entry (%_playerID : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :194 :51)
cbde.store %_playerID, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :194 :51)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :196 :36) // null (NullLiteralExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :197 :28) // Not a variable of known type: dataBase
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :197 :28) // dataBase.Jugador (SimpleMemberAccessExpression)
%5 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :197 :50)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :197 :28) // dataBase.Jugador.Find(playerID) (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :198 :44) // new Dominio.Jugador              {                  Apodo = queriedPlayer.apodo,                  Contrasenia = queriedPlayer.contrasenia,                  CorreoElectronico = queriedPlayer.correoElectronico,                  Status = queriedPlayer.status,                  RespuestaConfirmacion = queriedPlayer.respuestaConfirmacion,                  PreguntaRecuperacion = queriedPlayer.preguntaRecuperacion,                  PinConfirmacion = queriedPlayer.pinConfirmacion,                  IdCreador = queriedPlayer.idCreador,                  IdLenguaje = queriedPlayer.idioma              } (ObjectCreationExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :200 :24) // Not a variable of known type: queriedPlayer
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :200 :24) // queriedPlayer.apodo (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :201 :30) // Not a variable of known type: queriedPlayer
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :201 :30) // queriedPlayer.contrasenia (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :202 :36) // Not a variable of known type: queriedPlayer
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :202 :36) // queriedPlayer.correoElectronico (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :203 :25) // Not a variable of known type: queriedPlayer
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :203 :25) // queriedPlayer.status (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :204 :40) // Not a variable of known type: queriedPlayer
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :204 :40) // queriedPlayer.respuestaConfirmacion (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :205 :39) // Not a variable of known type: queriedPlayer
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :205 :39) // queriedPlayer.preguntaRecuperacion (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :206 :34) // Not a variable of known type: queriedPlayer
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :206 :34) // queriedPlayer.pinConfirmacion (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :207 :28) // Not a variable of known type: queriedPlayer
%23 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :207 :28) // queriedPlayer.idCreador (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :208 :29) // Not a variable of known type: queriedPlayer
%25 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :208 :29) // queriedPlayer.idioma (SimpleMemberAccessExpression)
%27 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :211 :19) // Not a variable of known type: matchedPlayer
return %27 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\JugadorDataManager.cs" :211 :12)

^1: // ExitBlock
cbde.unreachable

}
