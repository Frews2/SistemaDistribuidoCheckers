using CheckersCliente.MainService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CheckersCliente.CallbackHandlers
{
    public class ChatCallbackHandler :IChatManagerCallback
    {
        public void ReceiveText(string source, string message)
        {
            Menu menu = App.Current.Windows.OfType<Menu>().FirstOrDefault();
            (menu.Navigate.Content as Message);
        }
    }
}
