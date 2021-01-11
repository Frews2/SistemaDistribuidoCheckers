/*
    Date: 28/11/2020
    Author(s): César Sergio Martinez Palacios
*/
using CheckersCliente.MainService;
using LogicaCliente;
using System;
using System.Linq;
using System.Security.Cryptography;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;

namespace CheckersCliente.LogInPages
{
    /// <summary>
    /// Lógica de interacción para RegisterAccount.xaml
    /// </summary>
    public partial class RegisterAccount : Page
    {
        /// <summary>
        /// Valor constante que indica idioma de configuraciones Ingles
        /// </summary>
        public const int ENGLISH_NUMBER = 0;
        /// <summary>
        /// Valor constante que indica idioma de configuraciones Español
        /// </summary>
        public const int SPANISH_NUMBER = 1;
        /// <summary>
        /// Valor constante que indica idioma de configuraciones Italiano
        /// </summary>
        public const int ITALIANO_NUMBER = 2;
        /// <summary>
        /// Valor constante que indica el minimo tamaño de un campo de texto
        /// </summary>
        public const int MINIMUN_LENGHT = 8;
        /// <summary>
        /// Valor constante que indica el tamaño minimo para un email valido
        /// </summary>
        public const int MINIMUM_MAIL_LENGHT = 10;
        /// <summary>
        /// Valor constante que indica el tamaño minimo para una respuesta valida
        /// </summary>
        public const int ANSWER_MINIMUM_LENGHT = 1;

        /// <summary>
        /// Constructor para la pagina <c> RegisterAccount</c> con la funcionalidad
        /// para crear un <c>Jugador</c> para que el jugador pueda accesar el sistema
        /// </summary>
        public RegisterAccount()
        {
            InitializeComponent();
        }

        private void EnableRegisterButton(object sender, RoutedEventArgs e)

        {
            if (NicknameTextBox.Text.Length < MINIMUN_LENGHT || EmailTextBox.Text.Length < MINIMUM_MAIL_LENGHT 
                || PasswordTextBox.Password.Length < MINIMUN_LENGHT || LanguageBox.SelectionBoxItem == null 
                || QuestionTextBox.Text.Length < MINIMUN_LENGHT || AnswerTextBox.Text.Length < ANSWER_MINIMUM_LENGHT 
                || !IsEmail() || !IsQuestion() || !CheckWhiteSpaces())
            {
                RegisterButton.IsEnabled = false;
                LengthBlock.Visibility = Visibility.Visible;
            }
            else
            {
                RegisterButton.IsEnabled = true;
                LengthBlock.Visibility = Visibility.Hidden;
            }
        }

        private bool CheckWhiteSpaces()
        {
            if (String.IsNullOrWhiteSpace(NicknameTextBox.Text) || String.IsNullOrWhiteSpace(PasswordTextBox.Password)
                || String.IsNullOrWhiteSpace(AnswerTextBox.Text) || string.IsNullOrWhiteSpace(EmailTextBox.Text)
                || String.IsNullOrWhiteSpace(QuestionTextBox.Text))
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        private bool IsEmail()
        {
            if (ValidatorText.IsEmail(EmailTextBox.Text) && EmailTextBox.Text.Length > MINIMUM_MAIL_LENGHT 
                && !String.IsNullOrEmpty(EmailTextBox.Text))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        private bool IsQuestion()
        {
            if (ValidatorText.IsQuestion(QuestionTextBox.Text) && QuestionTextBox.Text.Length > MINIMUN_LENGHT
                && !String.IsNullOrEmpty(QuestionTextBox.Text))
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        private void RegisterUser(object sender, RoutedEventArgs e)
        {
            RegisterButton.IsEnabled = false;

            var randomGenerator = RandomNumberGenerator.Create();
            byte[] data = new byte[8];
            randomGenerator.GetBytes(data);

            int dataNumber = Math.Abs(BitConverter.ToInt32(data, 0));
            int numberOfDigits = (int)Math.Floor(Math.Log10(dataNumber));
            int pinNumber = 0;

            if (numberOfDigits >= 4)
            {
                pinNumber = (int)Math.Truncate((dataNumber / Math.Pow(10, numberOfDigits - 4)));
            }

            int selectedLanguage = CheckLanguage();

            PlayerManager.SaveNewPlayer(new Jugador
            {
                Apodo = NicknameTextBox.Text,
                Contrasenia = PasswordTextBox.Password,
                CorreoElectronico = EmailTextBox.Text,
                Status = "",
                RespuestaConfirmacion = AnswerTextBox.Text,
                PreguntaRecuperacion = QuestionTextBox.Text,
                PinConfirmacion = pinNumber.ToString(),
                IdLenguaje = selectedLanguage
            });
        }

        private int CheckLanguage()
        {
            int languageNumber;

            if(LanguageBox.SelectedIndex.Equals(ENGLISH_NUMBER))
            {
                languageNumber = ENGLISH_NUMBER;
            }
            else
            {
                if(LanguageBox.SelectedIndex.Equals(SPANISH_NUMBER))
                {
                    languageNumber = SPANISH_NUMBER;
                }
                else
                {
                    languageNumber = ITALIANO_NUMBER;
                }
            }

            return languageNumber;
        }

        private void CancelRegister(object sender, RoutedEventArgs e)
        {
            LogIn login = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
            login.EnableNavigation();
            NavigationService.GoBack();
        }
    }
}
