/*
    Date: 23/11/2020
    Author(s): César Sergio Martinez Palacios
*/
using System.Text.RegularExpressions;

namespace LogicaCliente
{

        public static class ValidatorText
        {
            private const int MINIMUM_LENGHT = 5;


            public static bool AreNumbers(string numbers)
            {
                Regex numberRegularExpression = new Regex(@"^[0-9]\S*$");

                return numberRegularExpression.IsMatch(numbers);
            }

            public static bool IsEmail(string email)
            {
                Regex emailRegularExpresion = new Regex(@"^(?("")("".+?(?<!\\)""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-z])@))" +
                    @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-0-9a-z]*[0-9a-z]*\.)+[a-z0-9][\-a-z0-9]{0,22}[a-z0-9]))$");

                return emailRegularExpresion.IsMatch(email);
            }
            public static bool IsQuestion(string question)
            {
            Regex questionRegularExpresion = new Regex(@"[\w \s]+[?]+$");

            return questionRegularExpresion.IsMatch(question);
            }

            public static bool IsRightExpression(string text)
            {
                Regex rightRegularExpression = new Regex(@"([a-zA-Z]{1,}\s{0,1}){10,}");

                return rightRegularExpression.IsMatch(text);
            }

            public static bool IsPersonName(string name)
            {
                Regex nameRegularExpression = new Regex(@"^[\p{L}\p{M}' \.\-]+$");

                return nameRegularExpression.IsMatch(name);
            }

            public static bool IsANumber(string number)
            {
                Regex numberRegularExpression = new Regex(@"(\d{1,4})$");

                return numberRegularExpression.IsMatch(number);
            }


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
