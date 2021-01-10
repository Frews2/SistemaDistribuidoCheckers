/*
    Date: 23/11/2020
    Author(s): César Sergio Martinez Palacios
*/
using System.Windows.Navigation;

namespace CheckersCliente
{
    
    /// <summary>
    /// Lógica de interacción para LogIn.xaml
    /// </summary>
    public partial class LogIn : NavigationWindow
    {
        private bool navigate = false;
        public LogIn()
        {
            InitializeComponent();
            navigate = true;
            NavigationService.Navigate(new LogInPages.LogInPage());
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
