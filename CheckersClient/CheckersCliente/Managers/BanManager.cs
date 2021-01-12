/*
 Date: 02/01/2020
 Author(s): Ricardo Moguel Sanchez
*/
using CheckersCliente.CallbackHandlers;
using CheckersCliente.MainService;
using System.ServiceModel;
using System.Windows;

namespace CheckersCliente.Managers
{
    /// <summary>
    /// Crea un cliente para crear solicitudes al servidor con respecto a servicios de prohibiciones de jugadores
    /// </summary>
    public static class BanManager
    {
        private static readonly InstanceContext instanceContext = new InstanceContext(new BanCallbackHandler());
        private static readonly BanManagerClient server = new BanManagerClient(instanceContext);

        /// <summary>
        /// Crea una solicitud para obtener una lista de <c>Reporte</c> de jugadores guardados en el servidor
        /// </summary>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo EndpointNotFoundException
        /// </exception>
        public static void GetReportedList()
        {
            try
            {
                server.GetReportData();
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Resources.NoConnectionMessage);
            }
        }

        /// <summary>
        /// Crea una solicitud para prohibir un <c>Jugador</c> de accesar el sistema por parte del administrador
        /// </summary>
        /// <param name="playerName"></param>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo EndpointNotFoundException
        /// </exception>
        public static void BanPlayer(string playerName)
        {
            try
            {
                server.BanPlayer(playerName);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Resources.NoConnectionMessage);
            }
        }
    }
}
