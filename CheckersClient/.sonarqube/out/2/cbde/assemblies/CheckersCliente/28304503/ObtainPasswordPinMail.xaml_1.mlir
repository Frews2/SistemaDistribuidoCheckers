func @_CheckersCliente.LogInPages.ObtainPasswordPinMail.SendMail$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :19 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :19 :30)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :19 :30)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :19 :45)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :19 :45)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :21 :12) // Not a variable of known type: SendButton
%3 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :21 :12) // SendButton.IsEnabled (SimpleMemberAccessExpression)
%4 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :21 :35) // false
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :22 :29) // Not a variable of known type: Nicknamebox
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :22 :29) // Nicknamebox.Text (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: JugadorManager
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :23 :46) // Not a variable of known type: playerNickname
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :23 :12) // JugadorManager.ObtainMailPassword(playerNickname) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function CheckNickname(none, none), it contains poisonous unsupported syntaxes

func @_CheckersCliente.LogInPages.ObtainPasswordPinMail.CancelClick$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :39 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :39 :33)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :39 :33)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :39 :48)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :39 :48)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :41 :26) // App.Current (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :41 :26) // App.Current.Windows (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :41 :26) // App.Current.Windows.OfType<LogIn>() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :41 :26) // App.Current.Windows.OfType<LogIn>().FirstOrDefault() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :42 :12) // Not a variable of known type: login
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :42 :12) // login.EnableNavigation() (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :43 :12) // Identifier from another assembly: NavigationService
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\ObtainPasswordPinMail.xaml.cs" :43 :12) // NavigationService.GoBack() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
