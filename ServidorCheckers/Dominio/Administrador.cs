
/*
 Date: 02/01/2021
 Author(s): Ricardo Moguel Sanchez
*/
namespace Dominio
{
    /// <summary>
    /// Clase que representa el Administrador del dominio que gestiona jugadores
    /// </summary>
    public class Administrador
    {
        /// <summary>
        /// variable que contiene la identificacion del administrador
        /// </summary>
        public int IdAdministrador { get; set; }
        /// <summary>
        /// variable que contiene el apodo del administrador
        /// </summary>
        public string ApodoAdmin { get; set; }
        /// <summary>
        /// variable que contiene la contraseña del administrador
        /// </summary>
        public string Contrasenia { get; set; }
        /// <summary>
        /// variable que contiene el email del administrador
        /// </summary>
        public string CorreoElectronico { get; set; }

    }
}
