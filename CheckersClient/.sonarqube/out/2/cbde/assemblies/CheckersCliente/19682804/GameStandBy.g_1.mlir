func @_CheckersCliente.MenuPages.GameStandBy.InitializeComponent$$() -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\obj\\Debug\\MenuPages\\GameStandBy.g.cs" :51 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\obj\\Debug\\MenuPages\\GameStandBy.g.cs" :54 :16) // Not a variable of known type: _contentLoaded
cond_br %0, ^1, ^2 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\obj\\Debug\\MenuPages\\GameStandBy.g.cs" :54 :16)

^1: // JumpBlock
return loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\obj\\Debug\\MenuPages\\GameStandBy.g.cs" :55 :16)

^2: // SimpleBlock
%1 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\obj\\Debug\\MenuPages\\GameStandBy.g.cs" :57 :29) // true
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\obj\\Debug\\MenuPages\\GameStandBy.g.cs" :58 :56) // "/CheckersCliente;component/menupages/gamestandby.xaml" (StringLiteralExpression)
// Entity from another assembly: System
%3 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\obj\\Debug\\MenuPages\\GameStandBy.g.cs" :58 :113) // System.UriKind (SimpleMemberAccessExpression)
%4 = constant unit loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\obj\\Debug\\MenuPages\\GameStandBy.g.cs" :58 :113) // System.UriKind.Relative (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\obj\\Debug\\MenuPages\\GameStandBy.g.cs" :58 :41) // new System.Uri("/CheckersCliente;component/menupages/gamestandby.xaml", System.UriKind.Relative) (ObjectCreationExpression)
// Entity from another assembly: System
%7 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\obj\\Debug\\MenuPages\\GameStandBy.g.cs" :61 :12) // System.Windows.Application (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\obj\\Debug\\MenuPages\\GameStandBy.g.cs" :61 :53) // this (ThisExpression)
%9 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\obj\\Debug\\MenuPages\\GameStandBy.g.cs" :61 :59) // Not a variable of known type: resourceLocater
%10 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\obj\\Debug\\MenuPages\\GameStandBy.g.cs" :61 :12) // System.Windows.Application.LoadComponent(this, resourceLocater) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_CheckersCliente.MenuPages.GameStandBy.System.Windows.Markup.IComponentConnector.Connect$int.object$(i32, none) -> () loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\obj\\Debug\\MenuPages\\GameStandBy.g.cs" :67 :8) {
^entry (%_connectionId : i32, %_target : none):
%0 = cbde.alloca i32 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\obj\\Debug\\MenuPages\\GameStandBy.g.cs" :73 :63)
cbde.store %_connectionId, %0 : memref<i32> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\obj\\Debug\\MenuPages\\GameStandBy.g.cs" :73 :63)
%1 = cbde.alloca none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\obj\\Debug\\MenuPages\\GameStandBy.g.cs" :73 :81)
cbde.store %_target, %1 : memref<none> loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\obj\\Debug\\MenuPages\\GameStandBy.g.cs" :73 :81)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\obj\\Debug\\MenuPages\\GameStandBy.g.cs" :74 :12) // this (ThisExpression)
%3 = cbde.unknown : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\obj\\Debug\\MenuPages\\GameStandBy.g.cs" :74 :12) // this._contentLoaded (SimpleMemberAccessExpression)
%4 = constant 1 : i1 loc("D:\\ProyectosVisualStudio\\SistemaDistribuidoCheckers\\CheckersClient\\CheckersCliente\\obj\\Debug\\MenuPages\\GameStandBy.g.cs" :74 :34) // true
br ^1

^1: // ExitBlock
return

}
