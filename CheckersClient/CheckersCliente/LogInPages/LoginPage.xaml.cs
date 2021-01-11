/*
    Date: 23/11/2020
    Author(s): César Sergio Martinez Palacios
*/

using CheckersCliente.MainService;
using System;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Navigation;

namespace CheckersCliente.LogInPages
{
    /// <summary>
    /// Lógica de interacción para LogIn.xaml
    /// </summary>
    public partial class LogInPage : Page
    {
        /// <summary>
        /// Constructor para la pagina <c>LogInPage</c> con la funcionalidad
        /// para iniciar sesion al sistema.
        /// </summary>
        public LogInPage()
        {
            InitializeComponent();
        }

        private void LogInClick(object sender, RoutedEventArgs e)
        {
            LogInButton.IsEnabled = false;

            PlayerManager.Login(new Jugador
            {
                Apodo = NicknameTextBox.Text,
                Contrasenia = PasswordTextBox.Password
            });
        }

        private void EnableLoginButton(object sender, RoutedEventArgs e)
        {
            if (PasswordTextBox.SecurePassword.Length < 5 || NicknameTextBox.Text.Length < 5
                || !ChekWhiteSpaces())
            {
                LogInButton.IsEnabled = false;
            }
            else
            {
                LogInButton.IsEnabled = true;
            }
        }

        private bool ChekWhiteSpaces()
        {
            if (String.IsNullOrWhiteSpace(PasswordTextBox.Password) || String.IsNullOrWhiteSpace(NicknameTextBox.Text))
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        private void GetPassword(object sender, MouseButtonEventArgs e)
        {
            LogIn login = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
            login.EnableNavigation();
            NavigationService.Navigate(new ObtainPasswordPinMail());
        }

        private void RegisterAccount(object sender, MouseButtonEventArgs e)
        {
            LogIn login = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
            login.EnableNavigation();
            NavigationService.Navigate(new RegisterAccount());
        }

        private void LanguageSelect(object sender, RoutedEventArgs e)
        {
            switch (LanguageBox.SelectedIndex)
            {
                case 0:
                    Thread.CurrentThread.CurrentUICulture = new CultureInfo("en");
                    break;
                case 1:
                    Thread.CurrentThread.CurrentUICulture = new CultureInfo("es-MX");
                    break;
                case 2:
                    Thread.CurrentThread.CurrentUICulture = new CultureInfo("it");
                    break;
            }
            LogIn logIn = new LogIn();
            logIn.EnableNavigation();
            logIn.Show();
            LogIn actualLogin = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
            actualLogin.Close();
        }
    }
}
