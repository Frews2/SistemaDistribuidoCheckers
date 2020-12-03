/*
    Date: 23/11/2020
    Author(s): César Sergio Martinez Palacios
*/

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
using LogicaCliente;

namespace CheckersCliente.LogInPages
{
    /// <summary>
    /// Lógica de interacción para LogIn.xaml
    /// </summary>
    public partial class LogInPage : Page
    {
        public LogInPage()
        {
            InitializeComponent();
        }

        private void LogInClick(object sender, RoutedEventArgs e)
        {

            JugadorManager.Login(new Jugador
            {
                Apodo = NicknameTextBox.Text,
                Contrasenia = PasswordTextBox.Password
            });
        }

        private void EnableLoginButton(object sender, RoutedEventArgs e)
        {
            if (PasswordTextBox.SecurePassword.Length < 5 || NicknameTextBox.Text.Length < 5)
            {
                LogInButton.IsEnabled = false;
            }
            else
            {
                LogInButton.IsEnabled = true;
            }
        }

        private void GetPassword(object sender, MouseButtonEventArgs e)
        {
            NavigationService.Navigate(new ObtainPasswordNickname());
        }
        private void RegisterAccount(object sender, MouseButtonEventArgs e)
        {
            NavigationService.Navigate(new RegisterAccount());
        }

       
    }
}
