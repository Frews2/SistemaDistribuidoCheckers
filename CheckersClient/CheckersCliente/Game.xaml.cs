using CheckersCliente.Managers;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

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

        private void SendMessage(object sender, RoutedEventArgs e)
        {
            Game gameWindow = App.Current.Windows.OfType<Game>().FirstOrDefault();

            string destination = gameWindow.listUsersLoggedIn.SelectedItem as string;
            ChatManager.SendMessage(destination, message.Text);
            messageList.Add("Yo: " + message.Text);
        }

        public void AgregarMensaje(string fuente, string mensaje)
        {
            messageList.Add(fuente + ": " + mensaje);
        }
    }
}
