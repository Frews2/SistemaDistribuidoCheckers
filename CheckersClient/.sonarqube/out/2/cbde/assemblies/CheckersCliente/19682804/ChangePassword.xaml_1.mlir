func @_CheckersCliente.LogInPages.ChangePassword.ChangePlayerPassword$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ChangePassword.xaml.cs" :32 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ChangePassword.xaml.cs" :32 :42)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ChangePassword.xaml.cs" :32 :42)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ChangePassword.xaml.cs" :32 :57)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ChangePassword.xaml.cs" :32 :57)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: JugadorManager
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ChangePassword.xaml.cs" :34 :42) // new Jugador              {                  Apodo = playerNick,                  Contrasenia= PasswordTextBox.Password              } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ChangePassword.xaml.cs" :36 :24) // Not a variable of known type: playerNick
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ChangePassword.xaml.cs" :37 :29) // Not a variable of known type: PasswordTextBox
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ChangePassword.xaml.cs" :37 :29) // PasswordTextBox.Password (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ChangePassword.xaml.cs" :34 :12) // JugadorManager.ChangePassword(new Jugador              {                  Apodo = playerNick,                  Contrasenia= PasswordTextBox.Password              }) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function EnableChangeButton(none, none), it contains poisonous unsupported syntaxes

// Skipping function VerifyPassword(none, none), it contains poisonous unsupported syntaxes

