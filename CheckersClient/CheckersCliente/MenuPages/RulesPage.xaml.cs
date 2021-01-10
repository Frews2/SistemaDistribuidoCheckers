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
