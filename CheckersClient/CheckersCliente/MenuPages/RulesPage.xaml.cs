using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;

namespace CheckersCliente.MenuPages
{
    /// <summary>
    /// Lógica de interacción para RulesPage.xaml
    /// </summary>
    public partial class RulesPage : Page
    {
        /// <summary>
        /// Constructor para la pagina <c>RulesPage</c> que muestra la descripción de las reglas para un juego de checkers
        /// </summary>
        public RulesPage()
        {
            InitializeComponent();
        }

        private void CancelClick(object sender, RoutedEventArgs e)
        {
            Menu actualMenu = App.Current.Windows.OfType<Menu>().FirstOrDefault();
            actualMenu.EnableNavigation();
            NavigationService.GoBack();
        }
    }
}
