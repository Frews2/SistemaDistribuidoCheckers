using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.DataManager
{
    public class JugadorDataManager
    {
        private readonly JugadoresDBEntities context = new JugadoresDBEntities();

        public bool ExisteNickname(string nickname)
        {
            bool existe = false;

            existe = context.Jugador.Any(jugador => jugador.apodo.Equals(nickname));

            return existe;
        }

        public bool EsPasswordCorrecto(string password)
        {
            bool esCorrecto = false;

            esCorrecto = context.Jugador.Any(jugador => jugador.contrasenia.Equals(password));

            return esCorrecto;
        }
    }
}

