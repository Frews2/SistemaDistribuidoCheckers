/*
 Date: 26/11/2020
 Author(s): Cesar Sergio Martinez Palacios
*/
namespace Dominio
{
    /// <summary>
    /// Clase que representa el Jugador del dominio que accesa partidas de checkers
    /// </summary>
    public class Jugador
    {
        /// <summary>
        /// variable que contiene la identificacion del jugador
        /// </summary>
        public int IdJugador { get; set; }
        /// <summary>
        /// variable que contiene el apodo del jugador
        /// </summary>
        public string Apodo { get; set; }
        /// <summary>
        /// variable que contiene la contraseña del jugador
        /// </summary>
        public string Contrasenia { get; set; }
        /// <summary>
        /// variable que contiene el correo del jugador
        /// </summary>
        public string CorreoElectronico { get; set; }
        /// <summary>
        /// variable que contiene el status del jugador ya sea "Activo", "En activacion", "Baja", "En revision"
        /// </summary>
        public string Status { get; set; }
        /// <summary>
        /// variable que contiene la respuesta a la pregunta de confirmacion de identidad del jugador
        /// </summary>
        public string RespuestaConfirmacion { get; set; }
        /// <summary>
        /// variable que contiene la pregunta de confirmacion de identidad del jugador
        /// </summary>
        public string PreguntaRecuperacion { get; set; }
        /// <summary>
        /// variable que contiene el numero PIN de confirmacion de identidad del jugador
        /// </summary>
        public string PinConfirmacion { get; set; }
        /// <summary>
        /// variable que contiene la identificacion del lenguaje de preferencia del jugador
        /// </summary>
        public int IdLenguaje { get; set; }
        /// <summary>
        /// variable que contiene la identificacion del administrador que creó al jugador
        /// </summary>
        public int IdCreador { get; set; }
    }
}
