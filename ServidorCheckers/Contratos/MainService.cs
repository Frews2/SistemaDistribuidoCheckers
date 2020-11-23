using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using DataAccess.DataManager;
using Dominio;


namespace Contratos
{

    [ServiceBehavior(InstanceContextMode = InstanceContextMode.Single, ConcurrencyMode = ConcurrencyMode.Multiple)]
    public partial class MainService : ILoginManager
    {
        private Dictionary<string, ILoginManagerCallback> jugadoresConectados = new Dictionary<string, ILoginManagerCallback>();
        //private Dictionary<string, IMessageManagerCallback> usuariosEnLinea = new Dictionary<string, IMessageManagerCallback>();
        private List<string> jugadoresMensaje = new List<string>();
        private Jugador jugadorActual;

        public void Login(Dominio.Jugador jugador)
        {
            LoginResult resultado;

            JugadorDataManager jugadorDataManager = new JugadorDataManager();

            if (jugadorDataManager.ExisteNickname(jugador.Apodo))
            {
                if (jugadorDataManager.EsPasswordCorrecto(jugador.Contrasenia))
                {
                    resultado = LoginResult.ExisteJugador;
                    jugadoresConectados.Add(jugador.Apodo, Callback);
                    jugadoresMensaje.Add(jugador.Contrasenia);
                    jugadorActual = jugador;

                }
                else
                {
                    resultado = LoginResult.PasswordIncorrecto;
                }
            }
            else
            {
                resultado = LoginResult.NoExisteJugador;
            }


            Callback.GetLoginResult(resultado);

        }



        ILoginManagerCallback Callback
        {
            get
            {
                return OperationContext.Current.GetCallbackChannel<ILoginManagerCallback>();
            }
        }
    }
}