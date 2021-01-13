/*
 Date: 02/01/2020
 Author(s): Ricardo Moguel Sanchez
*/

using CheckersCliente.MainService;
using System.Windows.Navigation;
using CheckersCliente.AdminPages;
using System.Threading;
using System.Globalization;

namespace CheckersCliente
{
    /// <summary>
    /// Lógica de interacción para AdminPage.xaml
    /// </summary>
    public partial class AdminPage : NavigationWindow
    {
        private Jugador administrator;
        private bool changeLanguage = false;
        private bool navigate = false;

        /// <summary>
        /// Constructor para la ventana <c>AdminPage</c> que contiene la funcionalidad asociada al Administrador
        /// </summary>
        /// <param name="admin"></param>
        public AdminPage(Jugador admin)
        {
            InitializeComponent();
            administrator = admin;
            navigate = true;
            LookLanguage(admin.IdLenguaje);
            NavigationService.Navigate(new AdminMenu(admin));

        }
        /// <summary>
        /// variable que indica el lenguaje a cambiar a en caso de que el 
        /// administrador desea cambiar lenguaje de configuración
        /// </summary>
        public string LangSwitch { get; private set; } = null;

        private void LookLanguage(int idLanguage)
        {
            switch (idLanguage)
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
    }
}