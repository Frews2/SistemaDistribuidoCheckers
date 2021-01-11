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

        /// <summary>
        /// Constructor para la ventana <c>LogIn</c> que contiene la funcionalidad asociada al
        /// inicio de sesion, recuperación de cuenta y registro de cuenta nueva
        /// </summary>
        public LogIn()
        {
            InitializeComponent();
            navigate = true;
            NavigationService.Navigate(new LogInPages.LogInPage());
        }

        /// <summary>
        /// Habilita la navegación entre paginas de la ventana
        /// </summary>
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
