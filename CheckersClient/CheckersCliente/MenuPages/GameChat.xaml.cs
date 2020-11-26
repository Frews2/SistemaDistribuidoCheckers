/*
 Date: 25/11/2020
 Author(s): Ricardo Moguel Sanchez
*/

using CheckersCliente.Managers;
using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace CheckersCliente.MenuPages
{
    /// <summary>
    /// Interaction logic for GameChat.xaml
    /// </summary>
    public partial class GameChat : Page
    {
        ObservableCollection<string> messageList = new ObservableCollection<string>();

        public GameChat()
        {
            InitializeComponent();
            messages.ItemsSource = messageList;
        }

        private void SendMessage(object sender, RoutedEventArgs e)
        {
            Game gameWindow = App.Current.Windows.OfType<Game>().FirstOrDefault();

            string destination = gameWindow.listUsersLoggedIn.SelectedItem as string;
            ChatManager.SendMessage(destination, message.Text);
            messageList.Add("Yo: " + message.Text);
        }

        public void AddMessageToChat(string fuente, string mensaje)
        {
            messageList.Add(fuente + ": " + mensaje);
        }
    }
}
