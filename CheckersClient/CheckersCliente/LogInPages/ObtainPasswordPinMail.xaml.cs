using CheckersCliente.MainService;
using LogicaCliente;
using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Threading;

namespace CheckersCliente.LogInPages
{
    /// <summary>
    /// Lógica de interacción para ObtainPassword.xaml
    /// </summary>
    public partial class ObtainPasswordPinMail : Page
    {
        public const int MINIMUN_LENGHT = 8;
        private string playerNickname;

        public ObtainPasswordPinMail()
        {
            InitializeComponent();
        }

        private void SendMail(object sender, RoutedEventArgs e)
        {
            playerNickname = Nicknamebox.Text;
            JugadorManager.ObtainMailPassword(playerNickname);
            
        }
        
        private void CheckNickname(object sender, RoutedEventArgs e)
        {
            if (Nicknamebox.Text.Length < MINIMUN_LENGHT || String.IsNullOrEmpty(Nicknamebox.Text))
            {
                SendButton.IsEnabled = false;
            }
            else
            {
                SendButton.IsEnabled = true;
            }
        }

        private void CancelClick(object sender, RoutedEventArgs e)
        {
            LogIn login = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
            login.NavigationService.Navigate(new LogInPage());
        }

        

    }
}
