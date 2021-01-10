/*
    Date: 23/11/2020
    Author(s): César Sergio Martinez Palacios
*/
using CheckersCliente.MainService;
using CheckersCliente.MenuPages;
using System.Globalization;
using System.Threading;
using System.Windows.Navigation;

namespace CheckersCliente
{
    /// <summary>
    /// Lógica de interacción para Menu.xaml
    /// </summary>
    public partial class Menu : NavigationWindow
    {
        private string playerNickname;
        private bool changeLanguage = false;
        private bool navigate = false;

        public Menu(Jugador player)
        {
            InitializeComponent();
            lookLanguage(player.IdLenguaje);
            navigate = true;
            NavigationService.Navigate(new PrincipalMenu(player));
            playerNickname = player.Apodo;

        }


        private void lookLanguage(int idLanguage)
        {
            switch(idLanguage)
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
        }
        public void ChangeLanguage()
        {
            changeLanguage = true;
        }

        private void WindowClose(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if (changeLanguage)
            {
                e.Cancel = false;
            }
            else
            {
                bool close = Windows.DialogWindowManager.ShowConfirmationWindow(Properties.Resources.LogOutQuestion);
                if (close)
                {
                    e.Cancel = false;
                    JugadorManager.EndSession(playerNickname);
                }
                else
                {
                    e.Cancel = true;
                }
            }
        }

        public void EnableNavigation()
        {
            navigate = true;
        }


        private void NavigationWindowNavigating(object sender, NavigatingCancelEventArgs e)
        {
            if (!navigate)
            {
                e.Cancel = true;
            }
            else
            {
                e.Cancel = false;
                navigate = false;
            }
        }


    }
}
