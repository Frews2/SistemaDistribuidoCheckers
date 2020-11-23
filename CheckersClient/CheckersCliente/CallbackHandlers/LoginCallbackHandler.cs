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
        ObservableCollection<string> misUsuarios = new ObservableCollection<string>();

        public void GetLoginResult(LoginResult resultado)
        {
            if (resultado == LoginResult.ExisteJugador)
            {
                Menu menu = new Menu();
                menu.Show();
                LogIn logIn = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
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
