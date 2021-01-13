// Skipping function EnableRegisterButton(none, none), it contains poisonous unsupported syntaxes

// Skipping function CheckWhiteSpaces(), it contains poisonous unsupported syntaxes

// Skipping function IsEmail(), it contains poisonous unsupported syntaxes

// Skipping function IsQuestion(), it contains poisonous unsupported syntaxes

func @_CheckersCliente.LogInPages.RegisterAccount.RegisterUser$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :85 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :85 :34)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :85 :34)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :85 :49)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :85 :49)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :87 :12) // Not a variable of known type: RegisterButton
%3 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :87 :12) // RegisterButton.IsEnabled (SimpleMemberAccessExpression)
%4 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :87 :39) // false
// Entity from another assembly: RandomNumberGenerator
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :89 :34) // RandomNumberGenerator.Create() (InvocationExpression)
%7 = constant 8 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :90 :35)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :90 :30) // byte[8] (ArrayType)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :90 :26) // new byte[8] (ArrayCreationExpression)
%11 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :91 :12) // Not a variable of known type: randomGenerator
%12 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :91 :37) // Not a variable of known type: data
%13 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :91 :12) // randomGenerator.GetBytes(data) (InvocationExpression)
// Entity from another assembly: Math
// Entity from another assembly: BitConverter
%14 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :93 :59) // Not a variable of known type: data
%15 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :93 :65)
%16 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :93 :38) // BitConverter.ToInt32(data, 0) (InvocationExpression)
%17 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :93 :29) // Math.Abs(BitConverter.ToInt32(data, 0)) (InvocationExpression)
%18 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :93 :16) // dataNumber
cbde.store %17, %18 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :93 :16)
// Entity from another assembly: Math
// Entity from another assembly: Math
%19 = cbde.load %18 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :94 :60)
%20 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :94 :49) // Math.Log10(dataNumber) (InvocationExpression)
%21 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :94 :38) // Math.Floor(Math.Log10(dataNumber)) (InvocationExpression)
%22 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :94 :33) // (int)Math.Floor(Math.Log10(dataNumber)) (CastExpression)
%23 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :94 :16) // numberOfDigits
cbde.store %22, %23 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :94 :16)
%24 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :95 :28)
%25 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :95 :16) // pinNumber
cbde.store %24, %25 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :95 :16)
%26 = cbde.load %23 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :97 :16)
%27 = constant 4 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :97 :34)
%28 = cmpi "sge", %26, %27 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :97 :16)
cond_br %28, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :97 :16)

^1: // SimpleBlock
// Entity from another assembly: Math
%29 = cbde.load %18 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :99 :48)
// Entity from another assembly: Math
%30 = constant 10 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :99 :70)
%31 = cbde.load %23 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :99 :74)
%32 = constant 4 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :99 :91)
%33 = subi %31, %32 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :99 :74)
%34 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :99 :61) // Math.Pow(10, numberOfDigits - 4) (InvocationExpression)
%35 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :99 :48) // Binary expression on unsupported types dataNumber / Math.Pow(10, numberOfDigits - 4)
%36 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :99 :33) // Math.Truncate((dataNumber / Math.Pow(10, numberOfDigits - 4))) (InvocationExpression)
%37 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :99 :28) // (int)Math.Truncate((dataNumber / Math.Pow(10, numberOfDigits - 4))) (CastExpression)
cbde.store %37, %25 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :99 :16)
br ^2

^2: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CheckLanguage
%38 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :102 :35) // CheckLanguage() (InvocationExpression)
%39 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :102 :16) // selectedLanguage
cbde.store %38, %39 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :102 :16)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: JugadorManager
%40 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :104 :41) // new Jugador              {                  Apodo = NicknameTextBox.Text,                  Contrasenia = PasswordTextBox.Password,                  CorreoElectronico = EmailTextBox.Text,                  Status = "",                  RespuestaConfirmacion = AnswerTextBox.Text,                  PreguntaRecuperacion = QuestionTextBox.Text,                  PinConfirmacion = pinNumber.ToString(),                  IdLenguaje = selectedLanguage              } (ObjectCreationExpression)
%41 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :106 :24) // Not a variable of known type: NicknameTextBox
%42 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :106 :24) // NicknameTextBox.Text (SimpleMemberAccessExpression)
%43 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :107 :30) // Not a variable of known type: PasswordTextBox
%44 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :107 :30) // PasswordTextBox.Password (SimpleMemberAccessExpression)
%45 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :108 :36) // Not a variable of known type: EmailTextBox
%46 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :108 :36) // EmailTextBox.Text (SimpleMemberAccessExpression)
%47 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :109 :25) // "" (StringLiteralExpression)
%48 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :110 :40) // Not a variable of known type: AnswerTextBox
%49 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :110 :40) // AnswerTextBox.Text (SimpleMemberAccessExpression)
%50 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :111 :39) // Not a variable of known type: QuestionTextBox
%51 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :111 :39) // QuestionTextBox.Text (SimpleMemberAccessExpression)
%52 = cbde.load %25 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :112 :34)
%53 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :112 :34) // pinNumber.ToString() (InvocationExpression)
%54 = cbde.load %39 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :113 :29)
%55 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :104 :12) // JugadorManager.SaveNewPlayer(new Jugador              {                  Apodo = NicknameTextBox.Text,                  Contrasenia = PasswordTextBox.Password,                  CorreoElectronico = EmailTextBox.Text,                  Status = "",                  RespuestaConfirmacion = AnswerTextBox.Text,                  PreguntaRecuperacion = QuestionTextBox.Text,                  PinConfirmacion = pinNumber.ToString(),                  IdLenguaje = selectedLanguage              }) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.LogInPages.RegisterAccount.CheckLanguage$$() -> i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :117 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :119 :16) // languageNumber
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :121 :15) // Not a variable of known type: LanguageBox
%2 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :121 :15) // LanguageBox.SelectedIndex (SimpleMemberAccessExpression)
%3 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :121 :48)
%4 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :121 :15) // LanguageBox.SelectedIndex.Equals(ENGLISH_NUMBER) (InvocationExpression)
cond_br %4, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :121 :15)

^1: // SimpleBlock
%5 = constant 0 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :123 :33)
cbde.store %5, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :123 :16)
br ^3

^2: // BinaryBranchBlock
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :127 :19) // Not a variable of known type: LanguageBox
%7 = cbde.unknown : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :127 :19) // LanguageBox.SelectedIndex (SimpleMemberAccessExpression)
%8 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :127 :52)
%9 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :127 :19) // LanguageBox.SelectedIndex.Equals(SPANISH_NUMBER) (InvocationExpression)
cond_br %9, ^4, ^5 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :127 :19)

^4: // SimpleBlock
%10 = constant 1 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :129 :37)
cbde.store %10, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :129 :20)
br ^3

^5: // SimpleBlock
%11 = constant 2 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :133 :37)
cbde.store %11, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :133 :20)
br ^3

^3: // JumpBlock
%12 = cbde.load %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :137 :19)
return %12 : i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :137 :12)

^6: // ExitBlock
cbde.unreachable

}
func @_CheckersCliente.LogInPages.RegisterAccount.CancelRegister$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :140 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :140 :36)
cbde.store %_sender, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :140 :36)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :140 :51)
cbde.store %_e, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :140 :51)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: App
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :142 :26) // App.Current (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :142 :26) // App.Current.Windows (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :142 :26) // App.Current.Windows.OfType<LogIn>() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :142 :26) // App.Current.Windows.OfType<LogIn>().FirstOrDefault() (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :143 :12) // Not a variable of known type: login
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :143 :12) // login.EnableNavigation() (InvocationExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :144 :12) // Identifier from another assembly: NavigationService
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\LogInPages\\RegisterAccount.xaml.cs" :144 :12) // NavigationService.GoBack() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
