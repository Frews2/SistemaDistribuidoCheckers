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
using System.Windows.Shapes;
using CheckersCliente.MainService;

namespace CheckersCliente
{
    /// <summary>
    /// Lógica de interacción para LogIn.xaml
    /// </summary>
    public partial class LogIn : Window
    {
        List<string> listUsersLoggedIn;

        public LogIn()
        {
            InitializeComponent();
        }

        private void LogInClick(object sender, RoutedEventArgs e)
        {

            LoginManager.Login(new Jugador
            {
                Apodo = Nickname.Text,
                Contrasenia = Password.Text
            });
        }
    }
}
