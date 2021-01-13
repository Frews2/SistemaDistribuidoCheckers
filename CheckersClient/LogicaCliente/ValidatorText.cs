/*
    Date: 23/11/2020
    Author(s): César Sergio Martinez Palacios
*/
using System.Text.RegularExpressions;

namespace LogicaCliente
{
    /// <summary>
    /// Clase de utilidad para validar textos, numeros y simbolos en camppos de texto utilizados
    /// </summary>
    public static class ValidatorText
    {
        private const int MINIMUM_LENGHT = 5;

        /// <summary>
        /// Verifica si el argumento es un valor numerico
        /// </summary>
        /// <param name="numbers"></param>
        /// <returns></returns>
        public static bool AreNumbers(string numbers)
        {
            Regex numberRegularExpression = new Regex(@"^[0-9]\S*$");

            return numberRegularExpression.IsMatch(numbers);
        }

        /// <summary>
        /// Verifica si el argumento es una entrada para email valido con '@'
        /// </summary>
        /// <param name="email"></param>
        /// <returns></returns>
        public static bool IsEmail(string email)
        {
            Regex emailRegularExpresion = new Regex(@"^(?("")("".+?(?<!\\)""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-z])@))" +
                    @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-0-9a-z]*[0-9a-z]*\.)+[a-z0-9][\-a-z0-9]{0,22}[a-z0-9]))$");
            return emailRegularExpresion.IsMatch(email);
        }

        /// <summary>
        /// Verifica si el argumento es una sentencia valida como pregunta terminando en '?'
        /// </summary>
        /// <param name="question"></param>
        /// <returns></returns>
        public static bool IsQuestion(string question)
        {
            Regex questionRegularExpresion = new Regex(@"[\w \s]+[?]+$");

            return questionRegularExpresion.IsMatch(question);
        }

        /// <summary>
        /// Verifica si el argumento es una entrada alfanumerica libre de simbolos
        /// </summary>
        /// <param name="text"></param>
        /// <returns></returns>
        public static bool IsRightExpression(string text)
        {
            Regex rightRegularExpression = new Regex(@"([a-zA-Z]{1,}\s{0,1}){10,}");

            return rightRegularExpression.IsMatch(text);
        }

        /// <summary>
        /// Verifica si el argumento es una entrada valida para ser Apodo
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static bool IsNickname(string name)
        {
            Regex nameRegularExpression = new Regex(@"([A-Z])\w+");

            return nameRegularExpression.IsMatch(name);
        }

        /// <summary>
        /// Verifica si el argumento es un valor numerico de 4 valores significativos
        /// </summary>
        /// <param name="number"></param>
        /// <returns></returns>
        public static bool IsANumber(string number)
        {
            Regex numberRegularExpression = new Regex(@"(\d{1,4})$");

            return numberRegularExpression.IsMatch(number);
        }

        /// <summary>
        /// Verifica si el argumento es un valor alfanumerico con longitud minima valida
        /// </summary>
        /// <param name="textToValidate"></param>
        /// <returns></returns>
        public static bool IsTextRight(string textToValidate)
        {
            bool isTextRight = false;

            if (IsRightExpression(textToValidate) && textToValidate.Length > MINIMUM_LENGHT)
            {
                isTextRight = true;
            }

            return isTextRight;
        }
    }
}