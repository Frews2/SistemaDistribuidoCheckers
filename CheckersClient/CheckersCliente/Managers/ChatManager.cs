/*
 Date: 25/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using CheckersCliente.CallbackHandlers;
using CheckersCliente.MainService;
using System.ServiceModel;


namespace CheckersCliente.Managers
{
    public class ChatManager
    {
        private static readonly InstanceContext instanceContext = new InstanceContext(new ChatCallbackHandler());
        private static readonly ChatManagerClient server = new ChatManagerClient(instanceContext);

        public static void SendMessage(string destination, string message)
        {
            server.SendText(destination, message);
        }

        public static void AddMessageCallback()
        {
            server.GetChatCallback();
        }
    }
}
