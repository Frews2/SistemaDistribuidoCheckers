/*
    Date: 09/12/2020
    Author(s): César Sergio Martinez Palacios
*/
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
        /// <summary>
        /// Valor constante para el tamaño minimo de los campos de texto de la 
        /// pagina <c>ObtainPasswordPinMail</c>
        /// </summary>
        public const int MINIMUN_LENGHT = 8;
        private string playerNickname;

        /// <summary>
        /// Constructor para la pagina <c>ObtainPasswordPinMail</c> con la funcionalidad
        /// para enviar un correo con la contraseña PIN para habilitar el cambio de contraseña del jugador
        /// </summary>
        public ObtainPasswordPinMail()
        {
            InitializeComponent();
        }

        private void SendMail(object sender, RoutedEventArgs e)
        {
            SendButton.IsEnabled = false;
            playerNickname = Nicknamebox.Text;
            PlayerManager.ObtainMailPassword(playerNickname);
            
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
