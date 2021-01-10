/*
 Date: 25/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using CheckersCliente.CallbackHandlers;
using CheckersCliente.MainService;
using CheckersCliente.Properties;
using System.ServiceModel;
using System.Windows;

namespace CheckersCliente.Managers
{
    public static class RankingManager
    {
        private static readonly InstanceContext instanceContext = new InstanceContext(new RankingCallbackHandler());
        private static readonly RankingManagerClient server = new RankingManagerClient(instanceContext);

        public static void AddRankingPetitionCallback()
        {
            try
            {
                server.GetRankingData();
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Resources.NoConnectionMessage);
            }
        }
    }
}
