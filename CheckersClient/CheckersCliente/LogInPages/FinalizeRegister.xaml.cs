using CheckersCliente.MainService;
using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Threading;
using LogicaCliente;

namespace CheckersCliente.LogInPages
{
    /// <summary>
    /// Lógica de interacción para FinalizeRegister.xaml
    /// </summary>
    public partial class FinalizeRegister : Page
    {
        private int timeSeconds = 31;
        DispatcherTimer clockTimer;
        Jugador pagePlayer = new Jugador();

        public  FinalizeRegister(Jugador player)
        {
            pagePlayer = player;
            InitializeComponent();

            clockTimer = new DispatcherTimer();
            clockTimer.Interval = new TimeSpan(0, 0, 1);
            clockTimer.Tick += TimerTick;
            clockTimer.Start();
        }

        void TimerTick(object sender, EventArgs e)
        {
            if (timeSeconds > 0)
            {
                timeSeconds--;
                CountdownNumber.Text = string.Format("{1}", timeSeconds/60,timeSeconds%60);
            }
            else
            {
                clockTimer.Stop();
                CountdownNumber.Visibility = Visibility.Hidden;
                CountdownText.Visibility = Visibility.Hidden;
                ResendButton.IsEnabled = true;
            }
        }

        private void VerifyAccount(object sender, RoutedEventArgs e)
        {
            VerifyButton.IsEnabled = false;
            JugadorManager.VerifyPlayer(new Jugador
            {
                Apodo = pagePlayer.Apodo,
                PinConfirmacion = PINbox.Text
            });
        }

        private void ReSendMail(object sender, RoutedEventArgs e)
        {

            JugadorManager.ResendEmail(pagePlayer);
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
            if (PINbox.Text.Length == 5 && ValidatorText.AreNumbers(PINbox.Text))
            {
                VerifyButton.IsEnabled = true;
            }
            else
            {
                VerifyButton.IsEnabled = false;
            }
        }

    }
}
