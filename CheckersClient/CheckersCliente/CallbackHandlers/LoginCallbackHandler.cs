using CheckersCliente.MainService;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Timers;
using System.Windows;

namespace CheckersCliente
{
    [CallbackBehavior(ConcurrencyMode = ConcurrencyMode.Reentrant)]
    public class LoginCallbackHandler : ILoginManagerCallback
    {
        public void GetLoginResult(LoginResult resultado)
        {
            if (resultado == LoginResult.ExisteJugador)
            {
                
                LogIn logIn = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
                Menu menu = new Menu(logIn.currentPlayer);
                menu.Show();
                logIn.Close();


            }
            else if (resultado == LoginResult.NoExisteJugador)
            {
                MessageBox.Show("No existe jugador");
            }
            else
            {
                MessageBox.Show("Verifica tu contraseña");
            }
        }       
    }
}
