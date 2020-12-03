/*
 Date: 25/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using CheckersCliente.MainService;
using CheckersCliente.MenuPages;
using System.Linq;

namespace CheckersCliente.CallbackHandlers
{
    public class ChatCallbackHandler :IChatManagerCallback
    {
        public void ReceiveText(string source, string message)
        {
            GameChat gameWindow = App.Current.Windows.OfType<GameChat>().FirstOrDefault();
            (gameWindow.refreshChat.Content as GameChat).AddMessageToChat(source,message);
        }
    }
}
