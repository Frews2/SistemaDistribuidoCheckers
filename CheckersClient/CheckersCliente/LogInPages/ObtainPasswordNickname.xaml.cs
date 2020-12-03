using System;
using System.Collections.Generic;
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
using System.Windows.Threading;

namespace CheckersCliente.LogInPages
{
    /// <summary>
    /// Lógica de interacción para ObtainPassword.xaml
    /// </summary>
    public partial class ObtainPasswordNickname : Page
    {
        private int timeSeconds = 31;
        DispatcherTimer clockTimer;

        public ObtainPasswordNickname()
        {
            InitializeComponent();
        }

        void TimerTick(object sender, EventArgs e)
        {
            if (timeSeconds > 0)
            {
                timeSeconds--;
                CountdownNumber.Text = string.Format("{1}", timeSeconds / 60, timeSeconds % 60);
            }
            else
            {
                clockTimer.Stop();
                CountdownNumber.Visibility = Visibility.Hidden;
                CountdownText.Visibility = Visibility.Hidden;
                ResendButton.IsEnabled = true;
            }
        }

        private void SendMail(object sender, RoutedEventArgs e)
        {
            
        }
        private void ReSendMail(object sender, RoutedEventArgs e)
        {

            timeSeconds = 31;
            clockTimer.Start();
            CountdownNumber.Visibility = Visibility.Visible;
            CountdownText.Visibility = Visibility.Visible;
            ResendButton.IsEnabled = false;

        }
        private void CancelClick(object sender, RoutedEventArgs e)
        {
            LogIn login = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
            login.NavigationService.Navigate(new LogInPage());
        }
    }
}
