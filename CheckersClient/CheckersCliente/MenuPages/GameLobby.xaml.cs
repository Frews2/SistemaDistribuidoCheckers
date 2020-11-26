/*
 Date: 25/11/2020
 Author(s): Ricardo Moguel Sanchez
*/

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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CheckersCliente.MenuPages
{
    /// <summary>
    /// Interaction logic for GameLobby.xaml
    /// </summary>
    public partial class GameLobby : Page
    {
        ObservableCollection<string> messageList = new ObservableCollection<string>();

        public GameLobby()
        {
            InitializeComponent();
            messages.ItemsSource = messageList;
        }

        private void SendMessage(object sender, RoutedEventArgs e)
        {
            Menu menu = App.Current.Windows.OfType<Menu>().FirstOrDefault();

            string destination = menu.usuariosConectadosList.SelectedItem as string;
            MessageManager.EnviarMensaje(destination, mensaje.Text);
            listaMensaje.Add("Yo: " + mensaje.Text);
        }

        public void AgregarMensaje(string fuente, string mensaje)
        {
            listaMensaje.Add(fuente + ": " + mensaje);
        }
    }
}
