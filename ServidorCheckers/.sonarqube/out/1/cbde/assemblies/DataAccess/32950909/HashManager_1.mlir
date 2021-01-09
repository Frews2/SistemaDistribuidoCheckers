func @_DataAccess.DataManager.HashManager.TextToHash$string$(none) -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :10 :8) {
^entry (%_sourceData : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :10 :33)
cbde.store %_sourceData, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :10 :33)
br ^0

^0: // JumpBlock
// Entity from another assembly: BCrypt
%1 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :12 :19) // BCrypt.Net.BCrypt (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :12 :50) // Not a variable of known type: sourceData
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :12 :19) // BCrypt.Net.BCrypt.HashPassword(sourceData) (InvocationExpression)
return %3 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :12 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_DataAccess.DataManager.HashManager.CompareHash$string.string$(none, none) -> i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :15 :8) {
^entry (%_inputText : none, %_hashText : none):
%0 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :15 :39)
cbde.store %_inputText, %0 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :15 :39)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :15 :57)
cbde.store %_hashText, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :15 :57)
br ^0

^0: // BinaryBranchBlock
%2 = constant 0 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :17 :35) // false
%3 = cbde.alloca i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :17 :17) // correctPassword
cbde.store %2, %3 : memref<i1> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :17 :17)
// Entity from another assembly: BCrypt
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :18 :16) // BCrypt.Net.BCrypt (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :18 :41) // Not a variable of known type: inputText
%6 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :18 :52) // Not a variable of known type: hashText
%7 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :18 :16) // BCrypt.Net.BCrypt.Verify(inputText, hashText) (InvocationExpression)
cond_br %7, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :18 :16)

^1: // SimpleBlock
%8 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :20 :34) // true
cbde.store %8, %3 : memref<i1> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :20 :16)
br ^2

^2: // JumpBlock
%9 = cbde.load %3 : memref<i1> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :22 :19)
return %9 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\HashManager.cs" :22 :12)

^3: // ExitBlock
cbde.unreachable

}
