/*
 Date: 27/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using System;

namespace DataAccess.DataManager
{
    /// <summary>
    /// Clase que cifra las contraseñas de usuarios del sistema y 
    /// compara textos no cifrados para equivalencia con contraseñas en la base de datos
    /// </summary>
    public class HashManager
    {
        /// <summary>
        /// Constructor de <c>HashManager</c> para utilizar sus operaciones de cifrar
        /// </summary>
        public HashManager()
        {
        }

        /// <summary>
        /// Cifra la cadena de argumento.
        /// </summary>
        /// <param name="sourceData"></param>
        /// <returns> retorna un valor string </returns>
        public String TextToHash(string sourceData)
        {
            return BCrypt.Net.BCrypt.HashPassword(sourceData);
        }

        /// <summary>
        /// Compara la cadena de argumento con una cadena cifrada para ver si son equivalentes
        /// </summary>
        /// <param name="inputText"></param>
        /// <param name="hashText"></param>
        /// <returns>retorna un valor booleano</returns>
        public static bool CompareHash(string inputText, string hashText)
        {
            bool correctPassword = false;
            if (BCrypt.Net.BCrypt.Verify(inputText, hashText))
            {
                correctPassword = true;
            }
            return correctPassword;
        }

    }
}
