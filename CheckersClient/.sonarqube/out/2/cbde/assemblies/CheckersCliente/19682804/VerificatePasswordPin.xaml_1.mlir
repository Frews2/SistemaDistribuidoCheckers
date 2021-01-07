func @_CheckersCliente.LogInPages.VerificatePasswordPin.TimerTick$object.System.EventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :37 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :37 :23)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :37 :23)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :37 :38)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :37 :38)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :39 :16) // Not a variable of known type: timeSeconds
%3 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :39 :30)
%4 = cmpi "sgt", %2, %3 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :39 :16)
cond_br %4, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :39 :16)

^1: // SimpleBlock
%5 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :41 :16) // Not a variable of known type: timeSeconds
%6 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :41 :16) // Inc/Decrement of field or property timeSeconds
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :42 :16) // Not a variable of known type: CountdownNumber
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :42 :16) // CountdownNumber.Text (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :42 :39) // string (PredefinedType)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :42 :53) // "{1}" (StringLiteralExpression)
%11 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :42 :60) // Not a variable of known type: timeSeconds
%12 = constant 60 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :42 :74)
%13 = divis %11, %12 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :42 :60)
%14 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :42 :78) // Not a variable of known type: timeSeconds
%15 = constant 60 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :42 :92)
%16 = remis %14, %15 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :42 :78)
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :42 :39) // string.Format("{1}", timeSeconds / 60, timeSeconds % 60) (InvocationExpression)
br ^3

^2: // SimpleBlock
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :46 :16) // Not a variable of known type: clockTimer
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :46 :16) // clockTimer.Stop() (InvocationExpression)
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :47 :16) // Not a variable of known type: CountdownNumber
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :47 :16) // CountdownNumber.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: Visibility
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :47 :45) // Visibility.Hidden (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :48 :16) // Not a variable of known type: CountdownText
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :48 :16) // CountdownText.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: Visibility
%25 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :48 :43) // Visibility.Hidden (SimpleMemberAccessExpression)
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :49 :16) // Not a variable of known type: ResendButton
%27 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :49 :16) // ResendButton.IsEnabled (SimpleMemberAccessExpression)
%28 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :49 :41) // true
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.LogInPages.VerificatePasswordPin.ReSendMail$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :53 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :53 :32)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :53 :32)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :53 :47)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :53 :47)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: JugadorManager
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :55 :46) // Not a variable of known type: playerNickname
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :55 :12) // JugadorManager.ObtainMailPassword(playerNickname) (InvocationExpression)
%4 = constant 31 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :56 :26)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :57 :12) // Not a variable of known type: clockTimer
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :57 :12) // clockTimer.Start() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :58 :12) // Not a variable of known type: CountdownNumber
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :58 :12) // CountdownNumber.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: Visibility
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :58 :41) // Visibility.Visible (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :59 :12) // Not a variable of known type: CountdownText
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :59 :12) // CountdownText.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: Visibility
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :59 :39) // Visibility.Visible (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :60 :12) // Not a variable of known type: ResendButton
%14 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :60 :12) // ResendButton.IsEnabled (SimpleMemberAccessExpression)
%15 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :60 :37) // false
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.LogInPages.VerificatePasswordPin.PINboxPreviewTextInput$object.System.Windows.Input.TextCompositionEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :63 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :63 :44)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :63 :44)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :63 :59)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :63 :59)
br ^0

^0: // BinaryBranchBlock
// Entity from another assembly: ValidatorText
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :65 :42) // Not a variable of known type: e
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :65 :42) // e.Text (SimpleMemberAccessExpression)
%4 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :65 :17) // ValidatorText.AreNumbers(e.Text) (InvocationExpression)
%5 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :65 :16) // !ValidatorText.AreNumbers(e.Text) (LogicalNotExpression)
cond_br %5, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :65 :16)

^1: // SimpleBlock
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :67 :16) // Not a variable of known type: e
%7 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :67 :16) // e.Handled (SimpleMemberAccessExpression)
%8 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :67 :28) // true
br ^3

^2: // SimpleBlock
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :72 :16) // Not a variable of known type: e
%10 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :72 :16) // e.Handled (SimpleMemberAccessExpression)
%11 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :72 :28) // false
br ^3

^3: // ExitBlock
return

}
// Skipping function PINboxTextChanged(none, none), it contains poisonous unsupported syntaxes

func @_CheckersCliente.LogInPages.VerificatePasswordPin.VerifyClick$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :88 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :88 :33)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :88 :33)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :88 :48)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :88 :48)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: JugadorManager
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :90 :37) // Not a variable of known type: playerNickname
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :90 :53) // Not a variable of known type: PINbox
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :90 :53) // PINbox.Text (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :90 :12) // JugadorManager.VerifyPin(playerNickname, PINbox.Text) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.LogInPages.VerificatePasswordPin.CancelClick$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :93 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :93 :33)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :93 :33)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :93 :48)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :93 :48)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :95 :26) // App.Current (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :95 :26) // App.Current.Windows (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :95 :26) // App.Current.Windows.OfType<LogIn>() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :95 :26) // App.Current.Windows.OfType<LogIn>().FirstOrDefault() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :96 :12) // Not a variable of known type: login
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :96 :12) // login.NavigationService (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :96 :45) // new LogInPage() (ObjectCreationExpression)
%10 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :96 :12) // login.NavigationService.Navigate(new LogInPage()) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
