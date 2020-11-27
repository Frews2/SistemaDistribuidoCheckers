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
    public class RankingManager
    {
        private static readonly InstanceContext instanceContext = new InstanceContext(new RankingCallbackHandler());
        private static readonly RankingManagerClient server = new RankingManagerClient(instanceContext);

        public static void AddRankingPetitionCallback()
        {
            try
            {
                server.GetRankingCallback();
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show("No se ha podido conectar a la Base de datos, intentar mas tarde");
            }
        }
    }
}
