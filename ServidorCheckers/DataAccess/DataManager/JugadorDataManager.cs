
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

        private readonly JugadoresDBEntities dataBase = new JugadoresDBEntities();

        public bool CheckNickname(string nickname)
        {
            bool existe = false;

            existe = dataBase.Jugador.Any(jugador => jugador.apodo.Equals(nickname));

            return existe;
        }

        public bool CheckState(string nickname)
        {
            bool existe = false;

            existe = dataBase.Jugador.Any(jugador => jugador.apodo.Equals(nickname) && jugador.status.Equals(ACTIVE_STATE));

            return existe;
        }

        public bool CheckBannedState(string nickname)
        {
            bool banned = false;

            banned = dataBase.Jugador.Any(jugador => jugador.apodo.Equals(nickname) && jugador.status.Equals(DOWN_STATE));

            return banned;
        }

        public bool EsPasswordCorrecto(string password, string nickname)
        {
            bool correctPassword = false;

            var playerSearched = dataBase.Jugador.Where(player => player.apodo.Equals(nickname)).FirstOrDefault<Jugador>();

            if (HashManager.CompareHash(password, playerSearched.contrasenia))
            {
                correctPassword = true;
            }
            return correctPassword;
        }

        public bool CorrectAnswer(string nickname, string answer)
        {
            bool isCorrect = false;

            isCorrect = dataBase.Jugador.Any(jugador => jugador.apodo == nickname && jugador.respuestaConfirmacion == answer);

            return isCorrect;
        }

        public bool PinCorrecto(string nickname, string pinPlayer)
        {
            bool esCorrecto = false;

            esCorrecto = dataBase.Jugador.Any(jugador => jugador.apodo == nickname && jugador.pinConfirmacion == pinPlayer);

            return esCorrecto;
        }

        public int SaveNewPlayer(Jugador jugadorNuevo)
        {
            int guardado;
            dataBase.Jugador.Add(jugadorNuevo);
            try
            {
                guardado = dataBase.SaveChanges();
            }
            catch (DbUpdateException)
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
                var playerState = dataBase.Jugador.Where(player => verifyPlayer.apodo == player.apodo).FirstOrDefault<Jugador>();
                playerState.status = ACTIVE_STATE;
                saved = dataBase.SaveChanges();

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

            existsPlayer = dataBase.Jugador.Any(jugador => jugador.correoElectronico == email);

            return existsPlayer;
        }

        public Jugador ChangePinByNickname(string nickname)
        {
            Random random = new Random();
            Jugador player = dataBase.Jugador.Where(playerSearch => playerSearch.apodo == nickname).FirstOrDefault<Jugador>();

            player.pinConfirmacion = random.Next(10000, 99999).ToString();
            dataBase.SaveChanges();

            return player;
        }

        public int ChangePassword(string nickname, string newPassword)
        {
            int saved = 0;

            try
            {
                var playerState = dataBase.Jugador.Where(player => nickname == player.apodo).FirstOrDefault<Jugador>();
                playerState.contrasenia = newPassword;
                saved = dataBase.SaveChanges();

            }
            catch (DbUpdateException)
            {
                throw new DbUpdateException();
            }

            return saved;
        }

        public int BanPlayer(string nickname)
        {
            const int PLAYER_ALREADY_BANNED = 2;
            int saved = 0;

            try
            {
                var reportedPlayer = dataBase.Jugador.Where(player => nickname == player.apodo).FirstOrDefault<Jugador>();
                if(reportedPlayer.status == DOWN_STATE)
                {
                    saved = PLAYER_ALREADY_BANNED;
                }
                else if (reportedPlayer.status != DOWN_STATE)
                {
                    reportedPlayer.status = DOWN_STATE;
                    saved = dataBase.SaveChanges();
                }
            }
            catch (DbUpdateException)
            {
                throw new DbUpdateException();
            }

            return saved;
        }

        public Jugador GetPlayerByNickname(string playerNickname)
        {
            Jugador searchedPlayer = dataBase.Jugador.Where(playerSearch => playerSearch.apodo == playerNickname).FirstOrDefault<Jugador>();

            return searchedPlayer;
        }

        public Dominio.Jugador GetDomainPlayerByID(int playerID)
        {
            Jugador queriedPlayer = null;
            queriedPlayer = dataBase.Jugador.Find(playerID);
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