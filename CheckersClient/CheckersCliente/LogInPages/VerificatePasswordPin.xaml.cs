using LogicaCliente;
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
    /// Lógica de interacción para VerificatePasswordPin.xaml
    /// </summary>
    public partial class VerificatePasswordPin : Page
    {
        public const int MINIMUN_LENGHT = 8;
        private int timeSeconds = 31;
        DispatcherTimer clockTimer;
        private string playerNickname;
        public VerificatePasswordPin(string nickname)
        {
            playerNickname = nickname;
            clockTimer = new DispatcherTimer();
            clockTimer.Interval = new TimeSpan(0, 0, 1);
            clockTimer.Tick += TimerTick;
            clockTimer.Start();
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

        private void ReSendMail(object sender, RoutedEventArgs e)
        {
            JugadorManager.ObtainMailPassword(playerNickname);
            timeSeconds = 31;
            clockTimer.Start();
            CountdownNumber.Visibility = Visibility.Visible;
            CountdownText.Visibility = Visibility.Visible;
            ResendButton.IsEnabled = false;
        }

        private void PINboxPreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!ValidatorText.AreNumbers(e.Text))
            {
                e.Handled = true;

            }
            else
            {
                e.Handled = false;
            }
        }

        private void PINboxTextChanged(object sender, TextChangedEventArgs e)
        {
            if (PINbox.Text.Length == 5 && ValidatorText.AreNumbers(PINbox.Text) && !String.IsNullOrWhiteSpace(PINbox.Text))
            {
                VerifyButton.IsEnabled = true;
            }
            else
            {
                VerifyButton.IsEnabled = false;
            }
        }

        private void VerifyClick(object sender, RoutedEventArgs e)
        {
            JugadorManager.VerifyPin(playerNickname, PINbox.Text);
        }

        private void CancelClick(object sender, RoutedEventArgs e)
        {
            LogIn login = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
            login.NavigationService.Navigate(new LogInPage());
        }
    }
}
