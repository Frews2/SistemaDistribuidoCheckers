/*
    Date: 23/11/2020
    Author(s): César Sergio Martinez Palacios y Ricardo Moguel Sanchez
*/

using CheckersCliente.Properties;
using System.Windows;

namespace CheckersCliente.Windows
{
    /// <summary>
    /// Crea ventanillas de dialogo en el caso de error, confirmacion y exito de acciones
    /// </summary>
    public static class DialogWindowManager
    {
        /// <summary>
        /// Crea una ventanilla de error con un botón "OK"
        /// </summary>
        /// <param name="errorMessage"></param>
        public static void ShowErrorWindow(string errorMessage)
        {
            MessageBox.Show(errorMessage, Resources.Error, MessageBoxButton.OK, MessageBoxImage.Error);
        }

        /// <summary>
        /// Crea una ventanilla de confirmación con un decision de "Si" y "No"
        /// </summary>
        /// <param name="confirmMessage"></param>
        /// <returns></returns>
        public static bool ShowConfirmationWindow(string confirmMessage)
        {
            bool confirmation = false;

            MessageBoxResult userAnswer = MessageBox.Show(confirmMessage, Resources.Confirmation,
                MessageBoxButton.YesNo, MessageBoxImage.Question);

            if (userAnswer == MessageBoxResult.Yes)
            {
                confirmation = true;
            }

            return confirmation;
        }

        /// <summary>
        /// Crea una ventanilla de éxito con un botón "OK"
        /// </summary>
        /// <param name="successMessage"></param>
        public static void ShowSuccessWindow(string successMessage)
        {
            MessageBox.Show(successMessage, Resources.Success,
                        MessageBoxButton.OK, MessageBoxImage.Exclamation);
        }

        /// <summary>
        /// Crea una ventanilla de error con un botón "OK" cuando campos ingresados estan vacios
        /// </summary>
        public static void ShowEmptyFieldsErrorWindow()
        {
            MessageBox.Show(Resources.EmptyFieldsError, Resources.Error,
                MessageBoxButton.OK, MessageBoxImage.Error);
        }

        /// <summary>
        /// Crea una ventanilla de error con un botón "OK" cuando campos ingresados son invalidos
        /// </summary>
        public static void ShowWrongFieldsErrorWindow()
        {
            MessageBox.Show(Resources.WrongFieldsError,
                Resources.Error, MessageBoxButton.OK, MessageBoxImage.Error);
        }
        
        /// <summary>
        /// Crea una ventanilla de error con un botón "OK" cuando una lista no contiene información
        /// </summary>
        public static void ShowEmptyListErrorWindow()
        {
            MessageBox.Show(Resources.NoInfoMessage,
                Resources.Error, MessageBoxButton.OK, MessageBoxImage.Error);
        }

        /// <summary>
        /// Crea una ventanilla de error con un botón "OK" cuando no se puede conectar al servidor
        /// </summary>
        public static void ShowConnectionErrorWindow()
        {
            MessageBox.Show(Resources.NoConnectionMessage,
                Resources.Error, MessageBoxButton.OK, MessageBoxImage.Error);
        }

    }
}
