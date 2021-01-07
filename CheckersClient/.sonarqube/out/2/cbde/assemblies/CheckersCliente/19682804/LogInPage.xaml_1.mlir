func @_CheckersCliente.LogInPages.LogInPage.LogInClick$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :34 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :34 :32)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :34 :32)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :34 :47)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :34 :47)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: JugadorManager
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :37 :33) // new Jugador              {                  Apodo = NicknameTextBox.Text,                  Contrasenia = PasswordTextBox.Password              } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :39 :24) // Not a variable of known type: NicknameTextBox
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :39 :24) // NicknameTextBox.Text (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :40 :30) // Not a variable of known type: PasswordTextBox
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :40 :30) // PasswordTextBox.Password (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :37 :12) // JugadorManager.Login(new Jugador              {                  Apodo = NicknameTextBox.Text,                  Contrasenia = PasswordTextBox.Password              }) (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :42 :12) // Not a variable of known type: LogInButton
%9 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :42 :12) // LogInButton.IsEnabled (SimpleMemberAccessExpression)
%10 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :42 :36) // false
br ^1

^1: // ExitBlock
return

}
// Skipping function EnableLoginButton(none, none), it contains poisonous unsupported syntaxes

// Skipping function ChekWhiteSpaces(), it contains poisonous unsupported syntaxes

func @_CheckersCliente.LogInPages.LogInPage.GetPassword$object.System.Windows.Input.MouseButtonEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :70 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :70 :33)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :70 :33)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :70 :48)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :70 :48)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :72 :12) // Identifier from another assembly: NavigationService
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :72 :39) // new ObtainPasswordPinMail() (ObjectCreationExpression)
%4 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :72 :12) // NavigationService.Navigate(new ObtainPasswordPinMail()) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.LogInPages.LogInPage.RegisterAccount$object.System.Windows.Input.MouseButtonEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :74 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :74 :37)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :74 :37)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :74 :52)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :74 :52)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :76 :12) // Identifier from another assembly: NavigationService
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :76 :39) // new RegisterAccount() (ObjectCreationExpression)
%4 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\LogInPage.xaml.cs" :76 :12) // NavigationService.Navigate(new RegisterAccount()) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
