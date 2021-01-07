func @_LogicaCliente.ValidatorText.AreNumbers$string$(none) -> i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :14 :12) {
^entry (%_numbers : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :14 :42)
cbde.store %_numbers, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :14 :42)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :16 :58) // @"^[0-9]\S*$" (StringLiteralExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :16 :48) // new Regex(@"^[0-9]\S*$") (ObjectCreationExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :18 :23) // Not a variable of known type: numberRegularExpression
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :18 :55) // Not a variable of known type: numbers
%6 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :18 :23) // numberRegularExpression.IsMatch(numbers) (InvocationExpression)
return %6 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :18 :16)

^1: // ExitBlock
cbde.unreachable

}
func @_LogicaCliente.ValidatorText.IsEmail$string$(none) -> i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :21 :12) {
^entry (%_email : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :21 :39)
cbde.store %_email, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :21 :39)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :23 :56) // @"^(?("")("".+?(?<!\\)""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-z])@))" (StringLiteralExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :24 :20) // @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-0-9a-z]*[0-9a-z]*\.)+[a-z0-9][\-a-z0-9]{0,22}[a-z0-9]))$" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :23 :56) // Binary expression on unsupported types @"^(?("")("".+?(?<!\\)""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-z])@))" +                      @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-0-9a-z]*[0-9a-z]*\.)+[a-z0-9][\-a-z0-9]{0,22}[a-z0-9]))$"
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :23 :46) // new Regex(@"^(?("")("".+?(?<!\\)""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-z])@))" +                      @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-0-9a-z]*[0-9a-z]*\.)+[a-z0-9][\-a-z0-9]{0,22}[a-z0-9]))$") (ObjectCreationExpression)
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :26 :23) // Not a variable of known type: emailRegularExpresion
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :26 :53) // Not a variable of known type: email
%8 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :26 :23) // emailRegularExpresion.IsMatch(email) (InvocationExpression)
return %8 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :26 :16)

^1: // ExitBlock
cbde.unreachable

}
func @_LogicaCliente.ValidatorText.IsQuestion$string$(none) -> i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :29 :12) {
^entry (%_question : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :29 :42)
cbde.store %_question, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :29 :42)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :31 :55) // @"[\w \s]+[?]+$" (StringLiteralExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :31 :45) // new Regex(@"[\w \s]+[?]+$") (ObjectCreationExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :33 :19) // Not a variable of known type: questionRegularExpresion
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :33 :52) // Not a variable of known type: question
%6 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :33 :19) // questionRegularExpresion.IsMatch(question) (InvocationExpression)
return %6 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :33 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_LogicaCliente.ValidatorText.IsRightExpression$string$(none) -> i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :36 :12) {
^entry (%_text : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :36 :49)
cbde.store %_text, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :36 :49)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :38 :57) // @"([a-zA-Z]{1,}\s{0,1}){10,}" (StringLiteralExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :38 :47) // new Regex(@"([a-zA-Z]{1,}\s{0,1}){10,}") (ObjectCreationExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :40 :23) // Not a variable of known type: rightRegularExpression
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :40 :54) // Not a variable of known type: text
%6 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :40 :23) // rightRegularExpression.IsMatch(text) (InvocationExpression)
return %6 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :40 :16)

^1: // ExitBlock
cbde.unreachable

}
func @_LogicaCliente.ValidatorText.IsNickname$string$(none) -> i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :43 :12) {
^entry (%_name : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :43 :42)
cbde.store %_name, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :43 :42)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :45 :56) // @"([A-Z])\w+" (StringLiteralExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :45 :46) // new Regex(@"([A-Z])\w+") (ObjectCreationExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :47 :23) // Not a variable of known type: nameRegularExpression
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :47 :53) // Not a variable of known type: name
%6 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :47 :23) // nameRegularExpression.IsMatch(name) (InvocationExpression)
return %6 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :47 :16)

^1: // ExitBlock
cbde.unreachable

}
func @_LogicaCliente.ValidatorText.IsANumber$string$(none) -> i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :50 :12) {
^entry (%_number : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :50 :41)
cbde.store %_number, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :50 :41)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :52 :58) // @"(\d{1,4})$" (StringLiteralExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :52 :48) // new Regex(@"(\d{1,4})$") (ObjectCreationExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :54 :23) // Not a variable of known type: numberRegularExpression
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :54 :55) // Not a variable of known type: number
%6 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :54 :23) // numberRegularExpression.IsMatch(number) (InvocationExpression)
return %6 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\LogicaCliente\\ValidatorText.cs" :54 :16)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function IsTextRight(none), it contains poisonous unsupported syntaxes

