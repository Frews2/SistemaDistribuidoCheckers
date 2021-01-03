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

        public int SaveNewPlayer(Jugador jugadorNuevo)
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

        public int VerifyNewPlayer(Jugador verifyPlayer)
        {
            int saved = 0;
            try
            {
                var playerState = context.Jugador.Where(player => verifyPlayer.apodo == player.apodo).FirstOrDefault<Jugador>();
                playerState.status = ACTIVE_STATE;
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

        public Jugador ChangePinByNickname(string nickname)
        {
            Random random = new Random();
            Jugador player = context.Jugador.Where(playerSearch => playerSearch.apodo == nickname).FirstOrDefault<Jugador>();

            player.pinConfirmacion = random.Next(10000, 99999).ToString();
            context.SaveChanges();

            return player;
        }

        public int ChangePassword(string nickname, string newPassword)
        {

            int saved = 0;

            try
            {
                var playerState = context.Jugador.Where(player => nickname == player.apodo).FirstOrDefault<Jugador>();
                playerState.contrasenia = ACTIVE_STATE;
                saved = context.SaveChanges();

            }
            catch (DbUpdateException)
            {
                throw new DbUpdateException();
            }

            return saved;
        }

        public int BanPlayer(string nickname)
        {

            int saved = 0;

            try
            {
                var reportedPlayer = context.Jugador.Where(player => nickname == player.apodo).FirstOrDefault<Jugador>();
                reportedPlayer.status = DOWN_STATE;
                saved = context.SaveChanges();

            }
            catch (DbUpdateException)
            {
                throw new DbUpdateException();
            }

            return saved;
        }

        public Jugador GetPlayerByNickname(string playerNickname)
        {
            Jugador searchedPlayer = context.Jugador.Where(playerSearch => playerSearch.apodo == playerNickname).FirstOrDefault<Jugador>();

            return searchedPlayer;
        }

        public Dominio.Jugador GetDomainPlayerByID(int playerID)
        {
            Jugador queriedPlayer = null;
            queriedPlayer = context.Jugador.Find(playerID);
            Dominio.Jugador matchedPlayer = new Dominio.Jugador
            {
                Apodo = queriedPlayer.apodo,
                Contrasenia = queriedPlayer.contrasenia,
                CorreoElectronico = queriedPlayer.correoElectronico,
                Status = queriedPlayer.status,
                RespuestaConfirmacion = queriedPlayer.respuestaConfirmacion,
                PreguntaRecuperacion = queriedPlayer.preguntaRecuperacion,
                PinConfirmacion = queriedPlayer.pinConfirmacion,
                IdCreador = queriedPlayer.idCreador,
                IdLenguaje = queriedPlayer.idioma
            };

            return matchedPlayer;
        }
    }
}

