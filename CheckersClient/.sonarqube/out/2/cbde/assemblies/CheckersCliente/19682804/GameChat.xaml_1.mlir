func @_CheckersCliente.MenuPages.GameChat.SendMessage$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :28 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :28 :33)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :28 :33)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :28 :48)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :28 :48)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :30 :30) // App.Current (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :30 :30) // App.Current.Windows (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :30 :30) // App.Current.Windows.OfType<Game>() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :30 :30) // App.Current.Windows.OfType<Game>().FirstOrDefault() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :32 :12) // Not a variable of known type: messageList
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :32 :28) // "Yo: " (StringLiteralExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :32 :37) // Not a variable of known type: message
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :32 :37) // message.Text (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :32 :28) // Binary expression on unsupported types "Yo: " + message.Text
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :32 :12) // messageList.Add("Yo: " + message.Text) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MenuPages.GameChat.AddMessageToChat$string.string$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :35 :8) {
^entry (%_fuente : none, %_mensaje : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :35 :37)
cbde.store %_fuente, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :35 :37)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :35 :52)
cbde.store %_mensaje, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :35 :52)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :37 :12) // Not a variable of known type: messageList
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :37 :28) // Not a variable of known type: fuente
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :37 :37) // ": " (StringLiteralExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :37 :28) // Binary expression on unsupported types fuente + ": "
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :37 :44) // Not a variable of known type: mensaje
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :37 :28) // Binary expression on unsupported types fuente + ": " + mensaje
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :37 :12) // messageList.Add(fuente + ": " + mensaje) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.MenuPages.GameChat.RegresarAMenu$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :40 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :40 :35)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :40 :35)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :40 :50)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\GamePages\\GameChat.xaml.cs" :40 :50)
br ^0

^0: // ExitBlock
return

}
