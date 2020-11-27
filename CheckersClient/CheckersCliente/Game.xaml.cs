/*
 Date: 25/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using CheckersCliente.MenuPages;
using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Navigation;

namespace CheckersCliente
{
    /// <summary>
    /// Interaction logic for Game.xaml
    /// </summary>
    public partial class Game : Window
    {
        ObservableCollection<string> messageList = new ObservableCollection<string>();

        public Game()
        {
            InitializeComponent();
        }

        public void RefreshMessageList()
        {
            refreshChat.Navigate(new GameChat());
        }

        private void Return(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
