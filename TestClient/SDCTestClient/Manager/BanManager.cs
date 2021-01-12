/*
 Date: 09/01/2020
 Author(s): Ricardo Moguel Sanchez
*/
using SDCTestClient.CallbackHandlers;
using SDCTestClient.MainService;
using System;
using System.ServiceModel;

namespace SDCTestClient.Managers
{
    public class BanManager
    {
        private static readonly InstanceContext instanceContext = new InstanceContext(new BanCallbackHandler());
        private static readonly BanManagerClient client = new BanManagerClient(instanceContext);

        public static void GetReportedList()
        {
            try
            {
                client.GetReportData();
            }
            catch (EndpointNotFoundException)
            {
                client.Abort();
            }
            catch (CommunicationException e)
            {
                client.Abort();
            }
            catch (TimeoutException e)
            {
                client.Abort();
            }
            catch (Exception e)
            {
                client.Abort();
                throw;
            }
        }

        public static void BanPlayer(string playerName)
        {
            try
            {
                client.BanPlayer(playerName);
            }
            catch (EndpointNotFoundException)
            {
                throw;
            }
            catch (CommunicationException e)
            {
                client.Abort();
            }
            catch (TimeoutException e)
            {
                client.Abort();
            }
            catch (Exception e)
            {
                client.Abort();
                throw;
            }
        }
    }
}
