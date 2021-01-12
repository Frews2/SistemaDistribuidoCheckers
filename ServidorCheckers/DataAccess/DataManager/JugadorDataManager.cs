/*
 Date: 25/11/2020
 Author(s): Cesar Sergio Martinez Palacios
*/
using System;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Security.Cryptography;

namespace DataAccess.DataManager
{
    /// <summary>
    /// Clase que gestiona los datos contra consultas de la tabla de Jugador de la base de datos 
    /// </summary>
    public class JugadorDataManager
    {
        /// <summary>
        /// variable estatica que guarda la cadena de estado de jugador ""En activacion"
        /// </summary>
        public static readonly string ACTIVATION_STATE = "En activacion";
        /// <summary>
        /// variable estatica que guarda la cadena de estado de jugador ""Activo"
        /// </summary>
        public static readonly string ACTIVE_STATE = "Activo";
        /// <summary>
        /// variable estatica que guarda la cadena de estado de jugador ""En revision"
        /// </summary>
        public static readonly string REPORTED_STATE = "En revision";
        /// <summary>
        /// variable estatica que guarda la cadena de estado de jugador ""Baja"
        /// </summary>
        public static readonly string DOWN_STATE = "Baja";

        private readonly JugadoresDBEntities dataBase = new JugadoresDBEntities();

        /// <summary>
        /// Verifica si el apodo de argumento existe como apodo de un jugador en la base de datos
        /// </summary>
        /// <param name="nickname"></param>
        /// <returns>retorna un valor booleano</returns>
        public bool CheckNickname(string nickname)
        {
            bool existe = false;

            existe = dataBase.Jugador.Any(jugador => jugador.apodo.Equals(nickname));

            return existe;
        }

        /// <summary>
        /// Verifica si el estado del jugador es "Activo" y por lo tanto tiene acceso al sistema
        /// </summary>
        /// <param name="nickname"></param>
        /// <returns>retorna un valor booleano</returns>
        public bool CheckState(string nickname)
        {
            bool existe = false;

            existe = dataBase.Jugador.Any(jugador => jugador.apodo.Equals(nickname) && jugador.status.Equals(ACTIVE_STATE));

            return existe;
        }

        /// <summary>
        /// Verifica si el estado del jugador es "Baja" y por lo tanto no tiene acceso al sistema
        /// </summary>
        /// <param name="nickname"></param>
        /// <returns>retorna un valor booleano</returns>
        public bool CheckBannedState(string nickname)
        {
            bool banned = false;

            banned = dataBase.Jugador.Any(jugador => jugador.apodo.Equals(nickname) && jugador.status.Equals(DOWN_STATE));

            return banned;
        }

        /// <summary>
        /// Verifica si la contraseña de argumento existe como contraseña del jugador con el mismo apodo en la base de datos
        /// </summary>
        /// <param name="password"></param>
        /// <param name="nickname"></param>
        /// <returns>retorna un valor booleano</returns>
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

        /// <summary>
        /// Verifica si la respuesta de confirmacion de argumento existe como para el jugador con el mismo apodo en la base de datos
        /// </summary>
        /// <param name="nickname"></param>
        /// <param name="answer"></param>
        /// <returns>retorna un valor booleano</returns>
        public bool CorrectAnswer(string nickname, string answer)
        {
            bool isCorrect = false;

            isCorrect = dataBase.Jugador.Any(jugador => jugador.apodo == nickname && jugador.respuestaConfirmacion == answer);

            return isCorrect;
        }

        /// <summary>
        /// Verifica si el numero PIN de confirmacion de argumento existe como para el jugador con el mismo apodo en la base de datos
        /// </summary>
        /// <param name="nickname"></param>
        /// <param name="pinPlayer"></param>
        /// <returns>retorna un valor booleano</returns>
        public bool PinCorrecto(string nickname, string pinPlayer)
        {
            bool esCorrecto = false;

            esCorrecto = dataBase.Jugador.Any(jugador => jugador.apodo == nickname && jugador.pinConfirmacion == pinPlayer);

            return esCorrecto;
        }

        /// <summary>
        /// Intenta guardar en la base de datos un jugador de argumento
        /// </summary>
        /// <param name="jugadorNuevo"></param>
        /// <returns>retorna un valor int</returns>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo DBUpdateException
        /// </exception>
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

        /// <summary>
        /// Intenta cambiar el estatus de un jugador registrado a "Activo" para que este tenga acceso al sistema.
        /// </summary>
        /// <param name="verifyPlayer"></param>
        /// <returns>retorna un valor int</returns>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo DBUpdateException
        /// </exception>
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

        /// <summary>
        /// Verifica si le pertenece el email de argumento a un jugador en la base de datos 
        /// </summary>
        /// <param name="email"></param>
        /// <returns>retorna un valor booleano</returns>
        public bool CheckEmail(string email)
        {
            bool existsPlayer = false;

            existsPlayer = dataBase.Jugador.Any(jugador => jugador.correoElectronico == email);

            return existsPlayer;
        }

        /// <summary>
        /// Guarda un numero PIN de confirmacion automaticamente generado al jugador que le pertenece el apodo de argumento
        /// </summary>
        /// <param name="nickname"></param>
        /// <returns>retorna un valor <c>Jugador</c></returns>
        public Jugador ChangePinByNickname(string nickname)
        {
            var randomGenerator = RandomNumberGenerator.Create();
            byte[] data = new byte[8];
            randomGenerator.GetBytes(data);

            int dataNumber = Math.Abs(BitConverter.ToInt32(data, 0));
            int numberOfDigits = (int)Math.Floor(Math.Log10(dataNumber));
            int pinNumber = 0;

            if (numberOfDigits >= 4)
            {
                pinNumber = (int)Math.Truncate((dataNumber / Math.Pow(10, numberOfDigits - 4)));
            }

            Jugador player = dataBase.Jugador.Where(playerSearch => playerSearch.apodo == nickname).FirstOrDefault<Jugador>();

            player.pinConfirmacion = pinNumber.ToString();
            dataBase.SaveChanges();

            return player;
        }

        /// <summary>
        /// Actualiza la contraseña del jugador al que le pertenece el apodo de argumento en la base de datos
        /// </summary>
        /// <param name="nickname"></param>
        /// <param name="newPassword"></param>
        /// <returns>retorna un valor int</returns>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo DBUpdateException
        /// </exception>
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

        /// <summary>
        /// Actualiza el estado a "Baja"de un jugador al que le pertenece el apodo en la base de datos para prohibir acceso al sistema
        /// </summary>
        /// <param name="nickname"></param>
        /// <returns>retorna una valor int</returns>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo DBUpdateException
        /// </exception>
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

        /// <summary>
        /// Obbtiene un <c>Jugador</c> de la base de datos al que le pertenece el apodo de argumento.
        /// </summary>
        /// <param name="playerNickname"></param>
        /// <returns>retorna un valor <c>DataAccess.Jugador</c></returns>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo DBUpdateException
        /// </exception>
        public Jugador GetPlayerByNickname(string playerNickname)
        {
            Jugador searchedPlayer = dataBase.Jugador.Where(playerSearch => playerSearch.apodo == playerNickname).FirstOrDefault<Jugador>();

            return searchedPlayer;
        }

        /// <summary>
        /// Obtiene un <c>Dominio.Jugador</c> de la base de datos al que le pertenece la identificacion de argumento
        /// </summary>
        /// <param name="playerID"></param>
        /// <returns>reotrna un valor <c>Dominio.Jugador</c></returns>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo DBUpdateException
        /// </exception>
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