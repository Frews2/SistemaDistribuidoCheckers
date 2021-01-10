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
    public static class BanManager
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
                MessageBox.Show(Properties.Resources.NoConnectionMessage);
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
                MessageBox.Show(Properties.Resources.NoConnectionMessage);
            }
        }
    }
}
