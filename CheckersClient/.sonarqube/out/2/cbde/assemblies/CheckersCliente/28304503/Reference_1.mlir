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
func @_CheckersCliente.MainService.Ranking.RaisePropertyChanged$string$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :455 :8) {
^entry (%_propertyName : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :455 :44)
cbde.store %_propertyName, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :455 :44)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :456 :80) // this (ThisExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :456 :80) // this.PropertyChanged (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :457 :17) // Not a variable of known type: propertyChanged
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :457 :36) // null (NullLiteralExpression)
%6 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :457 :17) // comparison of unknown type: propertyChanged != null
cond_br %6, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :457 :17)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :458 :16) // Not a variable of known type: propertyChanged
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :458 :32) // this (ThisExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :458 :89) // Not a variable of known type: propertyName
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :458 :38) // new System.ComponentModel.PropertyChangedEventArgs(propertyName) (ObjectCreationExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :458 :16) // propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName)) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_CheckersCliente.MainService.Reporte.RaisePropertyChanged$string$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :559 :8) {
^entry (%_propertyName : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :559 :44)
cbde.store %_propertyName, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :559 :44)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :560 :80) // this (ThisExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :560 :80) // this.PropertyChanged (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :561 :17) // Not a variable of known type: propertyChanged
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :561 :36) // null (NullLiteralExpression)
%6 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :561 :17) // comparison of unknown type: propertyChanged != null
cond_br %6, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :561 :17)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :562 :16) // Not a variable of known type: propertyChanged
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :562 :32) // this (ThisExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :562 :89) // Not a variable of known type: propertyName
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :562 :38) // new System.ComponentModel.PropertyChangedEventArgs(propertyName) (ObjectCreationExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :562 :16) // propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName)) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_CheckersCliente.MainService.Match.RaisePropertyChanged$string$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :773 :8) {
^entry (%_propertyName : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :773 :44)
cbde.store %_propertyName, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :773 :44)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :774 :80) // this (ThisExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :774 :80) // this.PropertyChanged (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :775 :17) // Not a variable of known type: propertyChanged
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :775 :36) // null (NullLiteralExpression)
%6 = cbde.unknown : i1  loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :775 :17) // comparison of unknown type: propertyChanged != null
cond_br %6, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :775 :17)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :776 :16) // Not a variable of known type: propertyChanged
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :776 :32) // this (ThisExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :776 :89) // Not a variable of known type: propertyName
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :776 :38) // new System.ComponentModel.PropertyChangedEventArgs(propertyName) (ObjectCreationExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :776 :16) // propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName)) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_CheckersCliente.MainService.PlayerManagerClient.Login$CheckersCliente.MainService.Jugador$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :916 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :916 :26)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :916 :26)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :917 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :917 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :917 :31) // Not a variable of known type: player
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :917 :12) // base.Channel.Login(player) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.PlayerManagerClient.LoginAsync$CheckersCliente.MainService.Jugador$(none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :920 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :920 :54)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :920 :54)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :921 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :921 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :921 :43) // Not a variable of known type: player
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :921 :19) // base.Channel.LoginAsync(player) (InvocationExpression)
return %4 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :921 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.PlayerManagerClient.LoginPlayer$CheckersCliente.MainService.Jugador$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :924 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :924 :32)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :924 :32)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :925 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :925 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :925 :37) // Not a variable of known type: player
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :925 :12) // base.Channel.LoginPlayer(player) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.PlayerManagerClient.LoginPlayerAsync$CheckersCliente.MainService.Jugador$(none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :928 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :928 :60)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :928 :60)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :929 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :929 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :929 :49) // Not a variable of known type: player
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :929 :19) // base.Channel.LoginPlayerAsync(player) (InvocationExpression)
return %4 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :929 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.PlayerManagerClient.SavePlayer$CheckersCliente.MainService.Jugador$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :932 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :932 :31)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :932 :31)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :933 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :933 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :933 :36) // Not a variable of known type: player
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :933 :12) // base.Channel.SavePlayer(player) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.PlayerManagerClient.SavePlayerAsync$CheckersCliente.MainService.Jugador$(none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :936 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :936 :59)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :936 :59)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :937 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :937 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :937 :48) // Not a variable of known type: player
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :937 :19) // base.Channel.SavePlayerAsync(player) (InvocationExpression)
return %4 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :937 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.PlayerManagerClient.VerifyPlayer$CheckersCliente.MainService.Jugador$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :940 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :940 :33)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :940 :33)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :941 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :941 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :941 :38) // Not a variable of known type: player
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :941 :12) // base.Channel.VerifyPlayer(player) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.PlayerManagerClient.VerifyPlayerAsync$CheckersCliente.MainService.Jugador$(none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :944 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :944 :61)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :944 :61)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :945 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :945 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :945 :50) // Not a variable of known type: player
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :945 :19) // base.Channel.VerifyPlayerAsync(player) (InvocationExpression)
return %4 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :945 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.PlayerManagerClient.SendMail$CheckersCliente.MainService.Jugador$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :948 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :948 :29)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :948 :29)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :949 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :949 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :949 :34) // Not a variable of known type: player
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :949 :12) // base.Channel.SendMail(player) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.PlayerManagerClient.SendMailAsync$CheckersCliente.MainService.Jugador$(none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :952 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :952 :57)
cbde.store %_player, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :952 :57)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :953 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :953 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :953 :46) // Not a variable of known type: player
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :953 :19) // base.Channel.SendMailAsync(player) (InvocationExpression)
return %4 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :953 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.PlayerManagerClient.PasswordForgotMail$string$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :956 :8) {
^entry (%_actualNickname : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :956 :39)
cbde.store %_actualNickname, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :956 :39)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :957 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :957 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :957 :44) // Not a variable of known type: actualNickname
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :957 :12) // base.Channel.PasswordForgotMail(actualNickname) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.PlayerManagerClient.PasswordForgotMailAsync$string$(none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :960 :8) {
^entry (%_actualNickname : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :960 :67)
cbde.store %_actualNickname, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :960 :67)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :961 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :961 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :961 :56) // Not a variable of known type: actualNickname
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :961 :19) // base.Channel.PasswordForgotMailAsync(actualNickname) (InvocationExpression)
return %4 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :961 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.PlayerManagerClient.VerifyPin$string.string.string$(none, none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :964 :8) {
^entry (%_actualNickname : none, %_playerPin : none, %_answerText : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :964 :30)
cbde.store %_actualNickname, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :964 :30)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :964 :53)
cbde.store %_playerPin, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :964 :53)
%2 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :964 :71)
cbde.store %_answerText, %2 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :964 :71)
br ^0

^0: // SimpleBlock
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :965 :12) // base (BaseExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :965 :12) // base.Channel (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :965 :35) // Not a variable of known type: actualNickname
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :965 :51) // Not a variable of known type: playerPin
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :965 :62) // Not a variable of known type: answerText
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :965 :12) // base.Channel.VerifyPin(actualNickname, playerPin, answerText) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.PlayerManagerClient.VerifyPinAsync$string.string.string$(none, none, none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :968 :8) {
^entry (%_actualNickname : none, %_playerPin : none, %_answerText : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :968 :58)
cbde.store %_actualNickname, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :968 :58)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :968 :81)
cbde.store %_playerPin, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :968 :81)
%2 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :968 :99)
cbde.store %_answerText, %2 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :968 :99)
br ^0

^0: // JumpBlock
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :969 :19) // base (BaseExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :969 :19) // base.Channel (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :969 :47) // Not a variable of known type: actualNickname
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :969 :63) // Not a variable of known type: playerPin
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :969 :74) // Not a variable of known type: answerText
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :969 :19) // base.Channel.VerifyPinAsync(actualNickname, playerPin, answerText) (InvocationExpression)
return %8 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :969 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.PlayerManagerClient.ChangePassword$string.string$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :972 :8) {
^entry (%_userNickname : none, %_password : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :972 :35)
cbde.store %_userNickname, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :972 :35)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :972 :56)
cbde.store %_password, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :972 :56)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :973 :12) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :973 :12) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :973 :40) // Not a variable of known type: userNickname
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :973 :54) // Not a variable of known type: password
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :973 :12) // base.Channel.ChangePassword(userNickname, password) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.PlayerManagerClient.ChangePasswordAsync$string.string$(none, none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :976 :8) {
^entry (%_userNickname : none, %_password : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :976 :63)
cbde.store %_userNickname, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :976 :63)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :976 :84)
cbde.store %_password, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :976 :84)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :977 :19) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :977 :19) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :977 :52) // Not a variable of known type: userNickname
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :977 :66) // Not a variable of known type: password
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :977 :19) // base.Channel.ChangePasswordAsync(userNickname, password) (InvocationExpression)
return %6 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :977 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.PlayerManagerClient.GetActualPlayer$CheckersCliente.MainService.Jugador$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :980 :8) {
^entry (%_actualPlayer : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :980 :36)
cbde.store %_actualPlayer, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :980 :36)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :981 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :981 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :981 :41) // Not a variable of known type: actualPlayer
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :981 :12) // base.Channel.GetActualPlayer(actualPlayer) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.PlayerManagerClient.GetActualPlayerAsync$CheckersCliente.MainService.Jugador$(none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :984 :8) {
^entry (%_actualPlayer : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :984 :64)
cbde.store %_actualPlayer, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :984 :64)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :985 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :985 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :985 :53) // Not a variable of known type: actualPlayer
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :985 :19) // base.Channel.GetActualPlayerAsync(actualPlayer) (InvocationExpression)
return %4 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :985 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.PlayerManagerClient.CloseSession$string$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :988 :8) {
^entry (%_playerNickname : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :988 :33)
cbde.store %_playerNickname, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :988 :33)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :989 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :989 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :989 :38) // Not a variable of known type: playerNickname
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :989 :12) // base.Channel.CloseSession(playerNickname) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.PlayerManagerClient.CloseSessionAsync$string$(none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :992 :8) {
^entry (%_playerNickname : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :992 :61)
cbde.store %_playerNickname, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :992 :61)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :993 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :993 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :993 :50) // Not a variable of known type: playerNickname
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :993 :19) // base.Channel.CloseSessionAsync(playerNickname) (InvocationExpression)
return %4 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :993 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.RankingManagerClient.GetRankingData$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1046 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1047 :12) // base (BaseExpression)
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1047 :12) // base.Channel (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1047 :12) // base.Channel.GetRankingData() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.RankingManagerClient.GetRankingDataAsync$$() -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1050 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1051 :19) // base (BaseExpression)
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1051 :19) // base.Channel (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1051 :19) // base.Channel.GetRankingDataAsync() (InvocationExpression)
return %2 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1051 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.BanManagerClient.GetReportData$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1113 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1114 :12) // base (BaseExpression)
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1114 :12) // base.Channel (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1114 :12) // base.Channel.GetReportData() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.BanManagerClient.GetReportDataAsync$$() -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1117 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1118 :19) // base (BaseExpression)
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1118 :19) // base.Channel (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1118 :19) // base.Channel.GetReportDataAsync() (InvocationExpression)
return %2 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1118 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.BanManagerClient.BanPlayer$string$(none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1121 :8) {
^entry (%_reportedPlayerName : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1121 :30)
cbde.store %_reportedPlayerName, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1121 :30)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1122 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1122 :12) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1122 :35) // Not a variable of known type: reportedPlayerName
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1122 :12) // base.Channel.BanPlayer(reportedPlayerName) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.BanManagerClient.BanPlayerAsync$string$(none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1125 :8) {
^entry (%_reportedPlayerName : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1125 :58)
cbde.store %_reportedPlayerName, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1125 :58)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1126 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1126 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1126 :47) // Not a variable of known type: reportedPlayerName
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1126 :19) // base.Channel.BanPlayerAsync(reportedPlayerName) (InvocationExpression)
return %4 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1126 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.GameManagerClient.CreateMatch$CheckersCliente.MainService.Jugador.CheckersCliente.MainService.CheckersGameMode$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1230 :8) {
^entry (%_currentPlayer : none, %_gameMode : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1230 :32)
cbde.store %_currentPlayer, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1230 :32)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1230 :83)
cbde.store %_gameMode, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1230 :83)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1231 :12) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1231 :12) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1231 :37) // Not a variable of known type: currentPlayer
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1231 :52) // Not a variable of known type: gameMode
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1231 :12) // base.Channel.CreateMatch(currentPlayer, gameMode) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.GameManagerClient.CreateMatchAsync$CheckersCliente.MainService.Jugador.CheckersCliente.MainService.CheckersGameMode$(none, none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1234 :8) {
^entry (%_currentPlayer : none, %_gameMode : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1234 :60)
cbde.store %_currentPlayer, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1234 :60)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1234 :111)
cbde.store %_gameMode, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1234 :111)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1235 :19) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1235 :19) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1235 :49) // Not a variable of known type: currentPlayer
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1235 :64) // Not a variable of known type: gameMode
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1235 :19) // base.Channel.CreateMatchAsync(currentPlayer, gameMode) (InvocationExpression)
return %6 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1235 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.GameManagerClient.Player1Turn$CheckersCliente.MainService.Checker$$$$.int.int.int$(none, i32, i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1238 :8) {
^entry (%_updateBoardMatrix : none, %_matchNumber : i32, %_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1238 :32)
cbde.store %_updateBoardMatrix, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1238 :32)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1238 :91)
cbde.store %_matchNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1238 :91)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1238 :108)
cbde.store %_playerTwoCheckers, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1238 :108)
%3 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1238 :131)
cbde.store %_playerOneCheckers, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1238 :131)
br ^0

^0: // SimpleBlock
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1239 :12) // base (BaseExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1239 :12) // base.Channel (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1239 :37) // Not a variable of known type: updateBoardMatrix
%7 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1239 :56)
%8 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1239 :69)
%9 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1239 :88)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1239 :12) // base.Channel.Player1Turn(updateBoardMatrix, matchNumber, playerTwoCheckers, playerOneCheckers) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.GameManagerClient.Player1TurnAsync$CheckersCliente.MainService.Checker$$$$.int.int.int$(none, i32, i32, i32) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1242 :8) {
^entry (%_updateBoardMatrix : none, %_matchNumber : i32, %_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1242 :60)
cbde.store %_updateBoardMatrix, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1242 :60)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1242 :119)
cbde.store %_matchNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1242 :119)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1242 :136)
cbde.store %_playerTwoCheckers, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1242 :136)
%3 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1242 :159)
cbde.store %_playerOneCheckers, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1242 :159)
br ^0

^0: // JumpBlock
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1243 :19) // base (BaseExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1243 :19) // base.Channel (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1243 :49) // Not a variable of known type: updateBoardMatrix
%7 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1243 :68)
%8 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1243 :81)
%9 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1243 :100)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1243 :19) // base.Channel.Player1TurnAsync(updateBoardMatrix, matchNumber, playerTwoCheckers, playerOneCheckers) (InvocationExpression)
return %10 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1243 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.GameManagerClient.Player2Turn$CheckersCliente.MainService.Checker$$$$.int.int.int$(none, i32, i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1246 :8) {
^entry (%_updateBoardMatrix : none, %_matchNumber : i32, %_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1246 :32)
cbde.store %_updateBoardMatrix, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1246 :32)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1246 :91)
cbde.store %_matchNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1246 :91)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1246 :108)
cbde.store %_playerTwoCheckers, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1246 :108)
%3 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1246 :131)
cbde.store %_playerOneCheckers, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1246 :131)
br ^0

^0: // SimpleBlock
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1247 :12) // base (BaseExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1247 :12) // base.Channel (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1247 :37) // Not a variable of known type: updateBoardMatrix
%7 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1247 :56)
%8 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1247 :69)
%9 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1247 :88)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1247 :12) // base.Channel.Player2Turn(updateBoardMatrix, matchNumber, playerTwoCheckers, playerOneCheckers) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.GameManagerClient.Player2TurnAsync$CheckersCliente.MainService.Checker$$$$.int.int.int$(none, i32, i32, i32) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1250 :8) {
^entry (%_updateBoardMatrix : none, %_matchNumber : i32, %_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1250 :60)
cbde.store %_updateBoardMatrix, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1250 :60)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1250 :119)
cbde.store %_matchNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1250 :119)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1250 :136)
cbde.store %_playerTwoCheckers, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1250 :136)
%3 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1250 :159)
cbde.store %_playerOneCheckers, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1250 :159)
br ^0

^0: // JumpBlock
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1251 :19) // base (BaseExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1251 :19) // base.Channel (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1251 :49) // Not a variable of known type: updateBoardMatrix
%7 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1251 :68)
%8 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1251 :81)
%9 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1251 :100)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1251 :19) // base.Channel.Player2TurnAsync(updateBoardMatrix, matchNumber, playerTwoCheckers, playerOneCheckers) (InvocationExpression)
return %10 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1251 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.GameManagerClient.FinishPlayerGame$int.int.int.int$(i32, i32, i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1254 :8) {
^entry (%_matchNumber : i32, %_playerNumber : i32, %_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1254 :37)
cbde.store %_matchNumber, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1254 :37)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1254 :54)
cbde.store %_playerNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1254 :54)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1254 :72)
cbde.store %_playerTwoCheckers, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1254 :72)
%3 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1254 :95)
cbde.store %_playerOneCheckers, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1254 :95)
br ^0

^0: // SimpleBlock
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1255 :12) // base (BaseExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1255 :12) // base.Channel (SimpleMemberAccessExpression)
%6 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1255 :42)
%7 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1255 :55)
%8 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1255 :69)
%9 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1255 :88)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1255 :12) // base.Channel.FinishPlayerGame(matchNumber, playerNumber, playerTwoCheckers, playerOneCheckers) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.GameManagerClient.FinishPlayerGameAsync$int.int.int.int$(i32, i32, i32, i32) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1258 :8) {
^entry (%_matchNumber : i32, %_playerNumber : i32, %_playerTwoCheckers : i32, %_playerOneCheckers : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1258 :65)
cbde.store %_matchNumber, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1258 :65)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1258 :82)
cbde.store %_playerNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1258 :82)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1258 :100)
cbde.store %_playerTwoCheckers, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1258 :100)
%3 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1258 :123)
cbde.store %_playerOneCheckers, %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1258 :123)
br ^0

^0: // JumpBlock
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1259 :19) // base (BaseExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1259 :19) // base.Channel (SimpleMemberAccessExpression)
%6 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1259 :54)
%7 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1259 :67)
%8 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1259 :81)
%9 = cbde.load %3 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1259 :100)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1259 :19) // base.Channel.FinishPlayerGameAsync(matchNumber, playerNumber, playerTwoCheckers, playerOneCheckers) (InvocationExpression)
return %10 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1259 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.GameManagerClient.SendGameMessage$int.string.int$(i32, none, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1262 :8) {
^entry (%_playerNumber : i32, %_message : none, %_matchNumber : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1262 :36)
cbde.store %_playerNumber, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1262 :36)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1262 :54)
cbde.store %_message, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1262 :54)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1262 :70)
cbde.store %_matchNumber, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1262 :70)
br ^0

^0: // SimpleBlock
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1263 :12) // base (BaseExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1263 :12) // base.Channel (SimpleMemberAccessExpression)
%5 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1263 :41)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1263 :55) // Not a variable of known type: message
%7 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1263 :64)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1263 :12) // base.Channel.SendGameMessage(playerNumber, message, matchNumber) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.GameManagerClient.SendGameMessageAsync$int.string.int$(i32, none, i32) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1266 :8) {
^entry (%_playerNumber : i32, %_message : none, %_matchNumber : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1266 :64)
cbde.store %_playerNumber, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1266 :64)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1266 :82)
cbde.store %_message, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1266 :82)
%2 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1266 :98)
cbde.store %_matchNumber, %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1266 :98)
br ^0

^0: // JumpBlock
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1267 :19) // base (BaseExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1267 :19) // base.Channel (SimpleMemberAccessExpression)
%5 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1267 :53)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1267 :67) // Not a variable of known type: message
%7 = cbde.load %2 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1267 :76)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1267 :19) // base.Channel.SendGameMessageAsync(playerNumber, message, matchNumber) (InvocationExpression)
return %8 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1267 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.GameManagerClient.ReportPlayer$int.int.string$(i32, i32, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1270 :8) {
^entry (%_playerNumberReporting : i32, %_matchNumber : i32, %_reportText : none):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1270 :33)
cbde.store %_playerNumberReporting, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1270 :33)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1270 :60)
cbde.store %_matchNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1270 :60)
%2 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1270 :77)
cbde.store %_reportText, %2 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1270 :77)
br ^0

^0: // SimpleBlock
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1271 :12) // base (BaseExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1271 :12) // base.Channel (SimpleMemberAccessExpression)
%5 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1271 :38)
%6 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1271 :61)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1271 :74) // Not a variable of known type: reportText
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1271 :12) // base.Channel.ReportPlayer(playerNumberReporting, matchNumber, reportText) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.GameManagerClient.ReportPlayerAsync$int.int.string$(i32, i32, none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1274 :8) {
^entry (%_playerNumberReporting : i32, %_matchNumber : i32, %_reportText : none):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1274 :61)
cbde.store %_playerNumberReporting, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1274 :61)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1274 :88)
cbde.store %_matchNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1274 :88)
%2 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1274 :105)
cbde.store %_reportText, %2 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1274 :105)
br ^0

^0: // JumpBlock
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1275 :19) // base (BaseExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1275 :19) // base.Channel (SimpleMemberAccessExpression)
%5 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1275 :50)
%6 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1275 :73)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1275 :86) // Not a variable of known type: reportText
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1275 :19) // base.Channel.ReportPlayerAsync(playerNumberReporting, matchNumber, reportText) (InvocationExpression)
return %8 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1275 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.MainService.GameManagerClient.LeaveMatch$int.int$(i32, i32) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1278 :8) {
^entry (%_matchNumber : i32, %_playerNumber : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1278 :31)
cbde.store %_matchNumber, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1278 :31)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1278 :48)
cbde.store %_playerNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1278 :48)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1279 :12) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1279 :12) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1279 :36)
%5 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1279 :49)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1279 :12) // base.Channel.LeaveMatch(matchNumber, playerNumber) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MainService.GameManagerClient.LeaveMatchAsync$int.int$(i32, i32) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1282 :8) {
^entry (%_matchNumber : i32, %_playerNumber : i32):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1282 :59)
cbde.store %_matchNumber, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1282 :59)
%1 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1282 :76)
cbde.store %_playerNumber, %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1282 :76)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1283 :19) // base (BaseExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1283 :19) // base.Channel (SimpleMemberAccessExpression)
%4 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1283 :48)
%5 = cbde.load %1 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1283 :61)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1283 :19) // base.Channel.LeaveMatchAsync(matchNumber, playerNumber) (InvocationExpression)
return %6 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\Connected Services\\MainService\\Reference.cs" :1283 :12)

^1: // ExitBlock
cbde.unreachable

}
