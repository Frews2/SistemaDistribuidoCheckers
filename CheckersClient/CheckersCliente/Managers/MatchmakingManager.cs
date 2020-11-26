/*
 Date: 25/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using CheckersCliente.CallbackHandlers;
using CheckersCliente.MainService;
using System.ServiceModel;
using System.Windows;

namespace CheckersCliente.Managers
{
    public class MatchmakingManager
    {
        private static readonly InstanceContext instanceContext = new InstanceContext(new MatchmakingCallbackHandler());
        private static readonly MatchmakingManagerClient server = new MatchmakingManagerClient(instanceContext);

        public static void EnterMatchmaking()
        {
            try
            {
                server.EnterMatchmaking();
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show("No se ha podido conectar a la Base de datos, intentar mas tarde");
            }
        }
    }
}
