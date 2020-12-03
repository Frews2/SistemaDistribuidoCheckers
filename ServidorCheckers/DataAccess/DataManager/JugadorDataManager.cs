using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Data.Entity.Migrations;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.DataManager
{

    public class JugadorDataManager
    {
        public static readonly string ACTIVATION_STATE = "En activacion";
        public static readonly string ACTIVE_STATE = "Activo";
        public static readonly string REPORTED_STATE = "En revision";
        public static readonly string DOWN_STATE = "Baja";

        private readonly JugadoresDBEntities context = new JugadoresDBEntities();

        public bool CheckNickname(string nickname)
        {
            bool existe = false;

            existe = context.Jugador.Any(jugador => jugador.apodo.Equals(nickname));

            return existe;
        }

        public bool CheckState(string nickname)
        {
            bool existe = false;

            existe = context.Jugador.Any(jugador => jugador.apodo.Equals(nickname) && jugador.status.Equals(ACTIVE_STATE));

            return existe;
        }

        public bool EsPasswordCorrecto(string password, string nickname)
        {
            bool esCorrecto = false;

            esCorrecto = context.Jugador.Any(jugador => jugador.apodo.Equals(nickname) && jugador.contrasenia.Equals(password));

            return esCorrecto;
        }

        public bool PinCorrecto(string nickname, string pinPlayer)
        {
            bool esCorrecto = false;

            esCorrecto = context.Jugador.Any(jugador => jugador.apodo == nickname && jugador.pinConfirmacion == pinPlayer);

            return esCorrecto;
        }

        public int GuardarJugador(Jugador jugadorNuevo)
        {
            int guardado;
            context.Jugador.Add(jugadorNuevo);
            try
            {
                guardado = context.SaveChanges();
            }
            catch(DbUpdateException)
            {
                throw new DbUpdateException();
            }
            
            return guardado;
        }

        public int VerifyNewPlayer(Jugador jugadorVerificar)
        {
            int saved = 0;
            try
            {
                var jugador = context.Jugador.Where(jugador2 => jugadorVerificar.apodo == jugador2.apodo).FirstOrDefault<Jugador>();
                jugador.status = ACTIVE_STATE;
                saved = context.SaveChanges();

            }
            catch (DbUpdateException)
            {
                throw new DbUpdateException();
            }

            return saved;
        }

        public bool CheckEmail(string email)
        {
            bool existsPlayer = false;

            existsPlayer = context.Jugador.Any(jugador => jugador.apodo == email);

            return existsPlayer;
        }
    }
}

