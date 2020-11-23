using CheckersCliente.MainService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace CheckersCliente
{
    public class LoginManager
    {
        public static void Login(Jugador jugador)
        {
            InstanceContext instanceContext = new InstanceContext(new LoginCallbackHandler());
            LoginManagerClient server = new LoginManagerClient(instanceContext);
            try
            {
                server.Login(jugador);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show("No se ha podido conectar a la Base de datos, intentar mas tarde");
            }
        }
    }
}
