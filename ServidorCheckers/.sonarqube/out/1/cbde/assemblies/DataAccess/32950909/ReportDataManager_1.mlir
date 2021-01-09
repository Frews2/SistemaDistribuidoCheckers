func @_DataAccess.DataManager.ReportDataManager.GetReportList$$() -> none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\ReportDataManager.cs" :14 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\ReportDataManager.cs" :16 :53) // null (NullLiteralExpression)
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\ReportDataManager.cs" :18 :28) // Not a variable of known type: context
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\ReportDataManager.cs" :18 :28) // context.Reporte (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\ReportDataManager.cs" :18 :28) // context.Reporte.ToList() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\ReportDataManager.cs" :20 :19) // Not a variable of known type: playerReports
return %5 : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\ServidorCheckers\\DataAccess\\DataManager\\ReportDataManager.cs" :20 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function ReportPlayer(i32, i32, none), it contains poisonous unsupported syntaxes

