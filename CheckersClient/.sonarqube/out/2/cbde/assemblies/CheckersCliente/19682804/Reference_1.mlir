func @_CheckersCliente.MainService.Jugador.RaisePropertyChanged$string$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :196 :8) {
^entry (%_propertyName : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :196 :44)
cbde.store %_propertyName, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :196 :44)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :197 :80) // this (ThisExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :197 :80) // this.PropertyChanged (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :198 :17) // Not a variable of known type: propertyChanged
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :198 :36) // null (NullLiteralExpression)
%6 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :198 :17) // comparison of unknown type: propertyChanged != null
cond_br %6, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :198 :17)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :199 :16) // Not a variable of known type: propertyChanged
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :199 :32) // this (ThisExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :199 :89) // Not a variable of known type: propertyName
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :199 :38) // new System.ComponentModel.PropertyChangedEventArgs(propertyName) (ObjectCreationExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :199 :16) // propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName)) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_CheckersCliente.MainService.Ranking.RaisePropertyChanged$string$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :446 :8) {
^entry (%_propertyName : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :446 :44)
cbde.store %_propertyName, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :446 :44)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :447 :80) // this (ThisExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :447 :80) // this.PropertyChanged (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :448 :17) // Not a variable of known type: propertyChanged
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :448 :36) // null (NullLiteralExpression)
%6 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :448 :17) // comparison of unknown type: propertyChanged != null
cond_br %6, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :448 :17)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :449 :16) // Not a variable of known type: propertyChanged
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :449 :32) // this (ThisExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :449 :89) // Not a variable of known type: propertyName
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :449 :38) // new System.ComponentModel.PropertyChangedEventArgs(propertyName) (ObjectCreationExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :449 :16) // propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName)) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_CheckersCliente.MainService.Match.RaisePropertyChanged$string$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :653 :8) {
^entry (%_propertyName : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :653 :44)
cbde.store %_propertyName, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :653 :44)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :654 :80) // this (ThisExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :654 :80) // this.PropertyChanged (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :655 :17) // Not a variable of known type: propertyChanged
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :655 :36) // null (NullLiteralExpression)
%6 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :655 :17) // comparison of unknown type: propertyChanged != null
cond_br %6, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :655 :17)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :656 :16) // Not a variable of known type: propertyChanged
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :656 :32) // this (ThisExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :656 :89) // Not a variable of known type: propertyName
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :656 :38) // new System.ComponentModel.PropertyChangedEventArgs(propertyName) (ObjectCreationExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :656 :16) // propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName)) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_CheckersCliente.MainService.PlayerManagerClient.Login$CheckersCliente.MainService.Jugador$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :767 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :767 :26)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :767 :26)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :768 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :768 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :768 :31) // Not a variable of known type: player
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :768 :12) // base.Channel.Login(player) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.PlayerManagerClient.LoginAsync$CheckersCliente.MainService.Jugador$(none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :771 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :771 :54)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :771 :54)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :772 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :772 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :772 :43) // Not a variable of known type: player
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :772 :19) // base.Channel.LoginAsync(player) (InvocationExpression)
return %4 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :772 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.PlayerManagerClient.SavePlayer$CheckersCliente.MainService.Jugador$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :775 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :775 :31)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :775 :31)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :776 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :776 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :776 :36) // Not a variable of known type: player
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :776 :12) // base.Channel.SavePlayer(player) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.PlayerManagerClient.SavePlayerAsync$CheckersCliente.MainService.Jugador$(none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :779 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :779 :59)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :779 :59)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :780 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :780 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :780 :48) // Not a variable of known type: player
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :780 :19) // base.Channel.SavePlayerAsync(player) (InvocationExpression)
return %4 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :780 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.PlayerManagerClient.VerifyPlayer$CheckersCliente.MainService.Jugador$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :783 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :783 :33)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :783 :33)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :784 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :784 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :784 :38) // Not a variable of known type: player
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :784 :12) // base.Channel.VerifyPlayer(player) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.PlayerManagerClient.VerifyPlayerAsync$CheckersCliente.MainService.Jugador$(none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :787 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :787 :61)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :787 :61)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :788 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :788 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :788 :50) // Not a variable of known type: player
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :788 :19) // base.Channel.VerifyPlayerAsync(player) (InvocationExpression)
return %4 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :788 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.PlayerManagerClient.SendMail$CheckersCliente.MainService.Jugador$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :791 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :791 :29)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :791 :29)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :792 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :792 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :792 :34) // Not a variable of known type: player
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :792 :12) // base.Channel.SendMail(player) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.PlayerManagerClient.SendMailAsync$CheckersCliente.MainService.Jugador$(none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :795 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :795 :57)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :795 :57)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :796 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :796 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :796 :46) // Not a variable of known type: player
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :796 :19) // base.Channel.SendMailAsync(player) (InvocationExpression)
return %4 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :796 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.PlayerManagerClient.PasswordForgotMail$string$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :799 :8) {
^entry (%_nickname : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :799 :39)
cbde.store %_nickname, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :799 :39)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :800 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :800 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :800 :44) // Not a variable of known type: nickname
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :800 :12) // base.Channel.PasswordForgotMail(nickname) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.PlayerManagerClient.PasswordForgotMailAsync$string$(none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :803 :8) {
^entry (%_nickname : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :803 :67)
cbde.store %_nickname, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :803 :67)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :804 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :804 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :804 :56) // Not a variable of known type: nickname
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :804 :19) // base.Channel.PasswordForgotMailAsync(nickname) (InvocationExpression)
return %4 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :804 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.PlayerManagerClient.VerifyPin$string.string$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :807 :8) {
^entry (%_nickname : none, %_pin : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :807 :30)
cbde.store %_nickname, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :807 :30)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :807 :47)
cbde.store %_pin, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :807 :47)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :808 :12) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :808 :12) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :808 :35) // Not a variable of known type: nickname
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :808 :45) // Not a variable of known type: pin
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :808 :12) // base.Channel.VerifyPin(nickname, pin) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.PlayerManagerClient.VerifyPinAsync$string.string$(none, none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :811 :8) {
^entry (%_nickname : none, %_pin : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :811 :58)
cbde.store %_nickname, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :811 :58)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :811 :75)
cbde.store %_pin, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :811 :75)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :812 :19) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :812 :19) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :812 :47) // Not a variable of known type: nickname
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :812 :57) // Not a variable of known type: pin
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :812 :19) // base.Channel.VerifyPinAsync(nickname, pin) (InvocationExpression)
return %6 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :812 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.PlayerManagerClient.ChangePassword$string.string$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :815 :8) {
^entry (%_nickname : none, %_newPassword : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :815 :35)
cbde.store %_nickname, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :815 :35)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :815 :52)
cbde.store %_newPassword, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :815 :52)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :816 :12) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :816 :12) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :816 :40) // Not a variable of known type: nickname
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :816 :50) // Not a variable of known type: newPassword
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :816 :12) // base.Channel.ChangePassword(nickname, newPassword) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.PlayerManagerClient.ChangePasswordAsync$string.string$(none, none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :819 :8) {
^entry (%_nickname : none, %_newPassword : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :819 :63)
cbde.store %_nickname, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :819 :63)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :819 :80)
cbde.store %_newPassword, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :819 :80)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :820 :19) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :820 :19) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :820 :52) // Not a variable of known type: nickname
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :820 :62) // Not a variable of known type: newPassword
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :820 :19) // base.Channel.ChangePasswordAsync(nickname, newPassword) (InvocationExpression)
return %6 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :820 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.PlayerManagerClient.GetActualPlayer$CheckersCliente.MainService.Jugador$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :823 :8) {
^entry (%_actualPlayer : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :823 :36)
cbde.store %_actualPlayer, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :823 :36)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :824 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :824 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :824 :41) // Not a variable of known type: actualPlayer
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :824 :12) // base.Channel.GetActualPlayer(actualPlayer) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.PlayerManagerClient.GetActualPlayerAsync$CheckersCliente.MainService.Jugador$(none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :827 :8) {
^entry (%_actualPlayer : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :827 :64)
cbde.store %_actualPlayer, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :827 :64)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :828 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :828 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :828 :53) // Not a variable of known type: actualPlayer
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :828 :19) // base.Channel.GetActualPlayerAsync(actualPlayer) (InvocationExpression)
return %4 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :828 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.RankingManagerClient.GetRankingData$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :881 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :882 :12) // base (BaseExpression)
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :882 :12) // base.Channel (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :882 :12) // base.Channel.GetRankingData() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.RankingManagerClient.GetRankingDataAsync$$() -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :885 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :886 :19) // base (BaseExpression)
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :886 :19) // base.Channel (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :886 :19) // base.Channel.GetRankingDataAsync() (InvocationExpression)
return %2 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :886 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.ChatManagerClient.SendText$string.string$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :945 :8) {
^entry (%_destination : none, %_message : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :945 :29)
cbde.store %_destination, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :945 :29)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :945 :49)
cbde.store %_message, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :945 :49)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :946 :12) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :946 :12) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :946 :34) // Not a variable of known type: destination
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :946 :47) // Not a variable of known type: message
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :946 :12) // base.Channel.SendText(destination, message) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.ChatManagerClient.SendTextAsync$string.string$(none, none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :949 :8) {
^entry (%_destination : none, %_message : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :949 :57)
cbde.store %_destination, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :949 :57)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :949 :77)
cbde.store %_message, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :949 :77)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :950 :19) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :950 :19) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :950 :46) // Not a variable of known type: destination
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :950 :59) // Not a variable of known type: message
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :950 :19) // base.Channel.SendTextAsync(destination, message) (InvocationExpression)
return %6 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :950 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.ChatManagerClient.GetChatCallback$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :953 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :954 :12) // base (BaseExpression)
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :954 :12) // base.Channel (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :954 :12) // base.Channel.GetChatCallback() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.ChatManagerClient.GetChatCallbackAsync$$() -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :957 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :958 :19) // base (BaseExpression)
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :958 :19) // base.Channel (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :958 :19) // base.Channel.GetChatCallbackAsync() (InvocationExpression)
return %2 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :958 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.GameMatchManagerClient.CreateMatch$CheckersCliente.MainService.Jugador.CheckersCliente.MainService.CheckersGameMode$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1035 :8) {
^entry (%_currentPlayer : none, %_gameMode : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1035 :32)
cbde.store %_currentPlayer, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1035 :32)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1035 :83)
cbde.store %_gameMode, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1035 :83)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1036 :12) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1036 :12) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1036 :37) // Not a variable of known type: currentPlayer
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1036 :52) // Not a variable of known type: gameMode
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1036 :12) // base.Channel.CreateMatch(currentPlayer, gameMode) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.GameMatchManagerClient.CreateMatchAsync$CheckersCliente.MainService.Jugador.CheckersCliente.MainService.CheckersGameMode$(none, none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1039 :8) {
^entry (%_currentPlayer : none, %_gameMode : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1039 :60)
cbde.store %_currentPlayer, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1039 :60)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1039 :111)
cbde.store %_gameMode, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1039 :111)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1040 :19) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1040 :19) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1040 :49) // Not a variable of known type: currentPlayer
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1040 :64) // Not a variable of known type: gameMode
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1040 :19) // base.Channel.CreateMatchAsync(currentPlayer, gameMode) (InvocationExpression)
return %6 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1040 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.GameMatchManagerClient.Player1Turn$CheckersCliente.MainService.Checker$$$$.int.int.int$(none, i32, i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1043 :8) {
^entry (%_updateBoardMatrix : none, %_matchNumber : i32, %_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1043 :32)
cbde.store %_updateBoardMatrix, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1043 :32)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1043 :91)
cbde.store %_matchNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1043 :91)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1043 :108)
cbde.store %_playerTwoCheckers, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1043 :108)
%3 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1043 :131)
cbde.store %_playerOneCheckers, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1043 :131)
br ^0

^0: // SimpleBlock
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1044 :12) // base (BaseExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1044 :12) // base.Channel (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1044 :37) // Not a variable of known type: updateBoardMatrix
%7 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1044 :56)
%8 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1044 :69)
%9 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1044 :88)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1044 :12) // base.Channel.Player1Turn(updateBoardMatrix, matchNumber, playerTwoCheckers, playerOneCheckers) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.GameMatchManagerClient.Player1TurnAsync$CheckersCliente.MainService.Checker$$$$.int.int.int$(none, i32, i32, i32) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1047 :8) {
^entry (%_updateBoardMatrix : none, %_matchNumber : i32, %_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1047 :60)
cbde.store %_updateBoardMatrix, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1047 :60)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1047 :119)
cbde.store %_matchNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1047 :119)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1047 :136)
cbde.store %_playerTwoCheckers, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1047 :136)
%3 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1047 :159)
cbde.store %_playerOneCheckers, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1047 :159)
br ^0

^0: // JumpBlock
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1048 :19) // base (BaseExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1048 :19) // base.Channel (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1048 :49) // Not a variable of known type: updateBoardMatrix
%7 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1048 :68)
%8 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1048 :81)
%9 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1048 :100)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1048 :19) // base.Channel.Player1TurnAsync(updateBoardMatrix, matchNumber, playerTwoCheckers, playerOneCheckers) (InvocationExpression)
return %10 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1048 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.GameMatchManagerClient.Player2Turn$CheckersCliente.MainService.Checker$$$$.int.int.int$(none, i32, i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1051 :8) {
^entry (%_updateBoardMatrix : none, %_matchNumber : i32, %_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1051 :32)
cbde.store %_updateBoardMatrix, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1051 :32)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1051 :91)
cbde.store %_matchNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1051 :91)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1051 :108)
cbde.store %_playerTwoCheckers, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1051 :108)
%3 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1051 :131)
cbde.store %_playerOneCheckers, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1051 :131)
br ^0

^0: // SimpleBlock
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1052 :12) // base (BaseExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1052 :12) // base.Channel (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1052 :37) // Not a variable of known type: updateBoardMatrix
%7 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1052 :56)
%8 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1052 :69)
%9 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1052 :88)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1052 :12) // base.Channel.Player2Turn(updateBoardMatrix, matchNumber, playerTwoCheckers, playerOneCheckers) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.GameMatchManagerClient.Player2TurnAsync$CheckersCliente.MainService.Checker$$$$.int.int.int$(none, i32, i32, i32) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1055 :8) {
^entry (%_updateBoardMatrix : none, %_matchNumber : i32, %_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1055 :60)
cbde.store %_updateBoardMatrix, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1055 :60)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1055 :119)
cbde.store %_matchNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1055 :119)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1055 :136)
cbde.store %_playerTwoCheckers, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1055 :136)
%3 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1055 :159)
cbde.store %_playerOneCheckers, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1055 :159)
br ^0

^0: // JumpBlock
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1056 :19) // base (BaseExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1056 :19) // base.Channel (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1056 :49) // Not a variable of known type: updateBoardMatrix
%7 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1056 :68)
%8 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1056 :81)
%9 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1056 :100)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1056 :19) // base.Channel.Player2TurnAsync(updateBoardMatrix, matchNumber, playerTwoCheckers, playerOneCheckers) (InvocationExpression)
return %10 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1056 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.GameMatchManagerClient.FinishPlayerGame$int.int.int.int$(i32, i32, i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1059 :8) {
^entry (%_matchNumber : i32, %_playerNumber : i32, %_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1059 :37)
cbde.store %_matchNumber, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1059 :37)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1059 :54)
cbde.store %_playerNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1059 :54)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1059 :72)
cbde.store %_playerTwoCheckers, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1059 :72)
%3 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1059 :95)
cbde.store %_playerOneCheckers, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1059 :95)
br ^0

^0: // SimpleBlock
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1060 :12) // base (BaseExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1060 :12) // base.Channel (SimpleMemberAccessExpression)
%6 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1060 :42)
%7 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1060 :55)
%8 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1060 :69)
%9 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1060 :88)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1060 :12) // base.Channel.FinishPlayerGame(matchNumber, playerNumber, playerTwoCheckers, playerOneCheckers) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.GameMatchManagerClient.FinishPlayerGameAsync$int.int.int.int$(i32, i32, i32, i32) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1063 :8) {
^entry (%_matchNumber : i32, %_playerNumber : i32, %_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1063 :65)
cbde.store %_matchNumber, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1063 :65)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1063 :82)
cbde.store %_playerNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1063 :82)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1063 :100)
cbde.store %_playerTwoCheckers, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1063 :100)
%3 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1063 :123)
cbde.store %_playerOneCheckers, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1063 :123)
br ^0

^0: // JumpBlock
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1064 :19) // base (BaseExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1064 :19) // base.Channel (SimpleMemberAccessExpression)
%6 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1064 :54)
%7 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1064 :67)
%8 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1064 :81)
%9 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1064 :100)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1064 :19) // base.Channel.FinishPlayerGameAsync(matchNumber, playerNumber, playerTwoCheckers, playerOneCheckers) (InvocationExpression)
return %10 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1064 :12)

^1: // ExitBlock
cbde.unreachable

}
