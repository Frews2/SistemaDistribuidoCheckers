// Skipping function EnableRegisterButton(none, none), it contains poisonous unsupported syntaxes

// Skipping function CheckWhiteSpaces(), it contains poisonous unsupported syntaxes

// Skipping function IsEmail(), it contains poisonous unsupported syntaxes

// Skipping function IsQuestion(), it contains poisonous unsupported syntaxes

func @_CheckersCliente.LogInPages.RegisterAccount.RegisterUser$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :88 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :88 :34)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :88 :34)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :88 :49)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :88 :49)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :90 :28) // new Random() (ObjectCreationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CheckLanguage
%4 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :92 :35) // CheckLanguage() (InvocationExpression)
%5 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :92 :16) // selectedLanguage
cbde.store %4, %5 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :92 :16)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: JugadorManager
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :94 :41) // new Jugador              {                  Apodo = NicknameTextBox.Text,                  Contrasenia = PasswordTextBox.Password,                  CorreoElectronico = EmailTextBox.Text,                  Status = "",                  RespuestaConfirmacion = AnswerTextBox.Text,                  PreguntaRecuperacion = QuestionTextBox.Text,                  PinConfirmacion = random.Next(10000, 99999).ToString(),                  IdLenguaje = selectedLanguage              } (ObjectCreationExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :96 :24) // Not a variable of known type: NicknameTextBox
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :96 :24) // NicknameTextBox.Text (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :97 :30) // Not a variable of known type: PasswordTextBox
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :97 :30) // PasswordTextBox.Password (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :98 :36) // Not a variable of known type: EmailTextBox
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :98 :36) // EmailTextBox.Text (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :99 :25) // "" (StringLiteralExpression)
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :100 :40) // Not a variable of known type: AnswerTextBox
%15 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :100 :40) // AnswerTextBox.Text (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :101 :39) // Not a variable of known type: QuestionTextBox
%17 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :101 :39) // QuestionTextBox.Text (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :102 :34) // Not a variable of known type: random
%19 = constant 10000 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :102 :46)
%20 = constant 99999 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :102 :53)
%21 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :102 :34) // random.Next(10000, 99999) (InvocationExpression)
%22 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :102 :34) // random.Next(10000, 99999).ToString() (InvocationExpression)
%23 = cbde.load %5 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :103 :29)
%24 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :94 :12) // JugadorManager.SaveNewPlayer(new Jugador              {                  Apodo = NicknameTextBox.Text,                  Contrasenia = PasswordTextBox.Password,                  CorreoElectronico = EmailTextBox.Text,                  Status = "",                  RespuestaConfirmacion = AnswerTextBox.Text,                  PreguntaRecuperacion = QuestionTextBox.Text,                  PinConfirmacion = random.Next(10000, 99999).ToString(),                  IdLenguaje = selectedLanguage              }) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_CheckersCliente.LogInPages.RegisterAccount.CheckLanguage$$() -> i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :107 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :109 :16) // languageNumber
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :111 :15) // Not a variable of known type: LanguageBox
%2 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :111 :15) // LanguageBox.SelectedIndex (SimpleMemberAccessExpression)
%3 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :111 :48)
%4 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :111 :15) // LanguageBox.SelectedIndex.Equals(ENGLISH_NUMBER) (InvocationExpression)
cond_br %4, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :111 :15)

^1: // SimpleBlock
%5 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :113 :33)
cbde.store %5, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :113 :16)
br ^3

^2: // BinaryBranchBlock
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :117 :19) // Not a variable of known type: LanguageBox
%7 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :117 :19) // LanguageBox.SelectedIndex (SimpleMemberAccessExpression)
%8 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :117 :52)
%9 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :117 :19) // LanguageBox.SelectedIndex.Equals(SPANISH_NUMBER) (InvocationExpression)
cond_br %9, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :117 :19)

^4: // SimpleBlock
%10 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :119 :37)
cbde.store %10, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :119 :20)
br ^3

^5: // SimpleBlock
%11 = constant 2 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :123 :37)
cbde.store %11, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :123 :20)
br ^3

^3: // JumpBlock
%12 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :127 :19)
return %12 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :127 :12)

^6: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.LogInPages.RegisterAccount.CancelRegister$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :130 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :130 :36)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :130 :36)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :130 :51)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :130 :51)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :132 :12) // Identifier from another assembly: NavigationService
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :132 :12) // NavigationService.GoBack() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
