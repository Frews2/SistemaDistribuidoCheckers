using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
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
            SendButton.IsEnabled = false;
            playerNickname = Nicknamebox.Text;
            JugadorManager.ObtainMailPassword(playerNickname);
            
        }
        
        private void CheckNickname(object sender, RoutedEventArgs e)
        {
            if (Nicknamebox.Text.Length < MINIMUN_LENGHT || String.IsNullOrWhiteSpace(Nicknamebox.Text))
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
            login.EnableNavigation();
            NavigationService.GoBack();
        }

        

    }
}
