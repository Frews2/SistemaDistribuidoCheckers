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
    /// <summary>
    /// Crea un cliente para crear solicitudes al servidor con respecto a servicios de consultar ranking global
    /// </summary>
    public static class RankingManager
    {
        private static readonly InstanceContext instanceContext = new InstanceContext(new RankingCallbackHandler());
        private static readonly RankingManagerClient server = new RankingManagerClient(instanceContext);

        /// <summary>
        /// Crea una solicitud para consultar las puntuaciones de <c>Ranking</c> en el ranking global del sistema
        /// </summary>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo EndpointNotFoundException
        /// </exception>
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
