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
    public class BanManager
    {
        private static readonly InstanceContext instanceContext = new InstanceContext(new BanCallbackHandler());
        private static readonly BanManagerClient server = new BanManagerClient(instanceContext);

        public static void GetReportedList()
        {
            try
            {
                server.GetReportData();
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show("No se ha podido conectar a la Base de datos, intentar mas tarde");
            }
        }

        public static void BanPlayer(string playerName)
        {
            try
            {
                server.BanPlayer(playerName);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show("No se ha podido conectar a la Base de datos, intentar mas tarde");
            }
        }
    }
}
