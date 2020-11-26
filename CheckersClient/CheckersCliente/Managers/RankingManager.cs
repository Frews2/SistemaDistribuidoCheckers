/*
 Date: 25/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using CheckersCliente.CallbackHandlers;
using CheckersCliente.MainService;
using System.ServiceModel;

namespace CheckersCliente.Managers
{
    public class RankingManager
    {
        private static readonly InstanceContext instanceContext = new InstanceContext(new RankingCallbackHandler());
        private static readonly RankingManagerClient server = new RankingManagerClient(instanceContext);

        public static void AddRankingPetitionCallback()
        {
            server.GetRankingCallback();
        }
    }
}
