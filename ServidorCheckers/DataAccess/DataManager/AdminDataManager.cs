/*
 Date: 02/01/2021
 Author(s): Ricardo Moguel Sanchez
*/
using System.Linq;

namespace DataAccess.DataManager
{
    /// <summary>
    /// Clase que gestiona los datos contra consultas de la tabla de Administrador de la base de datos 
    /// para entidades de <c>Administrador</c>
    /// </summary>
    public class AdminDataManager
    {
        private readonly JugadoresDBEntities dataBase = new JugadoresDBEntities();
        /// <summary>
        /// Verifica si el apodo de argumento existe como apodo de un administrador en la base de datos
        /// </summary>
        /// <param name="nickname"></param>
        /// <returns>retorna un valor booleano</returns>
        public bool CheckNickname(string nickname)
        {
            bool exist = false;

            exist = dataBase.Administrador.Any(admin => admin.apodoAdmin.Equals(nickname));

            return exist;
        }

        /// <summary>
        /// Verifica si la contraseña de argumento existe como contraseña del administrador con el mismo apodo en la base de datos
        /// </summary>
        /// <param name="password"></param>
        /// <param name="nickname"></param>
        /// <returns>retorna un valor booleano</returns>
        public bool EsPasswordCorrecto(string password, string nickname)
        {
            bool correctPassword = false;

            var playerSearched = dataBase.Administrador.Where(admin => admin.apodoAdmin.Equals(nickname)).FirstOrDefault<Administrador>();

            if (HashManager.CompareHash(password, playerSearched.contrasenia))
            {
                correctPassword = true;
            }
            return correctPassword;
        }
    }
}
