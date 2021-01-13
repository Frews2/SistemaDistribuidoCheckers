func @_CheckersCliente.LogInPages.VerificatePasswordPin.TimerTick$object.System.EventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :30 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :30 :23)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :30 :23)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :30 :38)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :30 :38)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :32 :16) // Not a variable of known type: timeSeconds
%3 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :32 :30)
%4 = cmpi "sgt", %2, %3 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :32 :16)
cond_br %4, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :32 :16)

^1: // SimpleBlock
%5 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :34 :16) // Not a variable of known type: timeSeconds
%6 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :34 :16) // Inc/Decrement of field or property timeSeconds
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :35 :16) // Not a variable of known type: CountdownNumber
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :35 :16) // CountdownNumber.Text (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :35 :39) // string (PredefinedType)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :35 :53) // "{0} {1}" (StringLiteralExpression)
%11 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :35 :64) // Not a variable of known type: timeSeconds
%12 = constant 60 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :35 :78)
%13 = divis %11, %12 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :35 :64)
%14 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :35 :82) // Not a variable of known type: timeSeconds
%15 = constant 60 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :35 :96)
%16 = remis %14, %15 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :35 :82)
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :35 :39) // string.Format("{0} {1}", timeSeconds / 60, timeSeconds % 60) (InvocationExpression)
br ^3

^2: // SimpleBlock
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :39 :16) // Not a variable of known type: clockTimer
%19 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :39 :16) // clockTimer.Stop() (InvocationExpression)
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :40 :16) // Not a variable of known type: CountdownNumber
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :40 :16) // CountdownNumber.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: Visibility
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :40 :45) // Visibility.Hidden (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :41 :16) // Not a variable of known type: CountdownText
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :41 :16) // CountdownText.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: Visibility
%25 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :41 :43) // Visibility.Hidden (SimpleMemberAccessExpression)
%26 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :42 :16) // Not a variable of known type: ResendButton
%27 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :42 :16) // ResendButton.IsEnabled (SimpleMemberAccessExpression)
%28 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :42 :41) // true
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.LogInPages.VerificatePasswordPin.ReSendMail$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :46 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :46 :32)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :46 :32)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :46 :47)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :46 :47)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: JugadorManager
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :48 :46) // Not a variable of known type: playerNickname
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :48 :12) // JugadorManager.ObtainMailPassword(playerNickname) (InvocationExpression)
%4 = constant 31 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :49 :26)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :50 :12) // Not a variable of known type: clockTimer
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :50 :12) // clockTimer.Start() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :51 :12) // Not a variable of known type: CountdownNumber
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :51 :12) // CountdownNumber.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: Visibility
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :51 :41) // Visibility.Visible (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :52 :12) // Not a variable of known type: CountdownText
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :52 :12) // CountdownText.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: Visibility
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :52 :39) // Visibility.Visible (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :53 :12) // Not a variable of known type: ResendButton
%14 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :53 :12) // ResendButton.IsEnabled (SimpleMemberAccessExpression)
%15 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :53 :37) // false
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.LogInPages.VerificatePasswordPin.PINboxPreviewTextInput$object.System.Windows.Input.TextCompositionEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :56 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :56 :44)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :56 :44)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :56 :59)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :56 :59)
br ^0

^0: // BinaryBranchBlock
// Entity from another assembly: ValidatorText
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :58 :42) // Not a variable of known type: e
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :58 :42) // e.Text (SimpleMemberAccessExpression)
%4 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :58 :17) // ValidatorText.AreNumbers(e.Text) (InvocationExpression)
%5 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :58 :16) // !ValidatorText.AreNumbers(e.Text) (LogicalNotExpression)
cond_br %5, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :58 :16)

^1: // SimpleBlock
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :60 :16) // Not a variable of known type: e
%7 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :60 :16) // e.Handled (SimpleMemberAccessExpression)
%8 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :60 :28) // true
br ^3

^2: // SimpleBlock
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :65 :16) // Not a variable of known type: e
%10 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :65 :16) // e.Handled (SimpleMemberAccessExpression)
%11 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :65 :28) // false
br ^3

^3: // ExitBlock
return

}
// Skipping function PINboxTextChanged(none, none), it contains poisonous unsupported syntaxes

func @_CheckersCliente.LogInPages.VerificatePasswordPin.VerifyClick$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :82 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :82 :33)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :82 :33)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :82 :48)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :82 :48)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :84 :12) // Not a variable of known type: VerifyButton
%3 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :84 :12) // VerifyButton.IsEnabled (SimpleMemberAccessExpression)
%4 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :84 :37) // false
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: JugadorManager
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :85 :37) // Not a variable of known type: playerNickname
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :85 :53) // Not a variable of known type: PINbox
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :85 :53) // PINbox.Text (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :85 :66) // Not a variable of known type: AnswerTextBox
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :85 :66) // AnswerTextBox.Text (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :85 :12) // JugadorManager.VerifyPin(playerNickname, PINbox.Text, AnswerTextBox.Text) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.LogInPages.VerificatePasswordPin.CancelClick$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :88 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :88 :33)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :88 :33)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :88 :48)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :88 :48)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :90 :26) // App.Current (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :90 :26) // App.Current.Windows (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :90 :26) // App.Current.Windows.OfType<LogIn>() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :90 :26) // App.Current.Windows.OfType<LogIn>().FirstOrDefault() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :91 :12) // Not a variable of known type: login
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :91 :12) // login.EnableNavigation() (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :92 :12) // Not a variable of known type: login
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :92 :12) // login.NavigationService (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :92 :45) // new LogInPage() (ObjectCreationExpression)
%12 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\VerificatePasswordPin.xaml.cs" :92 :12) // login.NavigationService.Navigate(new LogInPage()) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
