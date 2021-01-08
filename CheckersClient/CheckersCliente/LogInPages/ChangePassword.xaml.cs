using CheckersCliente.MainService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CheckersCliente.LogInPages
{
    /// <summary>
    /// Lógica de interacción para ChangePassword.xaml
    /// </summary>
    public partial class ChangePassword : Page
    {
        public const int MINIMUN_LENGHT = 8;
        private string playerNick;

        public ChangePassword(string playerNickname)
        {
            InitializeComponent();
            playerNick = playerNickname;
        }

        private void ChangePlayerPassword(object sender, RoutedEventArgs e)
        {
            RegisterButton.IsEnabled = false;
            JugadorManager.ChangePassword(new Jugador
            {
                Apodo = playerNick,
                Contrasenia = PasswordTextBox.Password
            });
        }

        private void EnableChangeButton(object sender, RoutedEventArgs e)
        {
            if (PasswordTextBox.Password.Length < MINIMUN_LENGHT || !PasswordVerificacionBox.Password.Equals(PasswordTextBox.Password)
                || String.IsNullOrWhiteSpace(PasswordTextBox.Password))
            {
                RegisterButton.IsEnabled = false;
            }
            else
            {
                RegisterButton.IsEnabled = true;
            }
        }

        private void VerifyPassword(Object sender, RoutedEventArgs e)
        {
            if (PasswordVerificacionBox.Password.Equals(PasswordTextBox.Password) && PasswordVerificacionBox.Password.Length > MINIMUN_LENGHT
                && !String.IsNullOrWhiteSpace(PasswordVerificacionBox.Password))
            {
                RegisterButton.IsEnabled = true;
            }
            else
            {
                RegisterButton.IsEnabled = false;
            }

        }

        private void CancelClick(object sender, RoutedEventArgs e)
        {

            LogIn login = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
            login.NavigationService.Navigate(new LogInPage());
        }
    }
}
