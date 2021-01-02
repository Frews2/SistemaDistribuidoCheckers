using CheckersCliente.MainService;
using LogicaCliente;
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CheckersCliente.LogInPages
{
    /// <summary>
    /// Lógica de interacción para RegisterAccount.xaml
    /// </summary>
    public partial class RegisterAccount : Page
    {
        public const int ENGLISH_NUMBER = 0;
        public const int SPANISH_NUMBER = 1;
        public const int ITALIANO_NUMBER = 2;
        public const int MINIMUN_LENGHT = 8;
        public const int MINIMUM_MAIL_LENGHT = 10;
        public const int ANSWER_MINIMUM_LENGHT = 1;
        public RegisterAccount()
        {
            InitializeComponent();
        }

        private void EnableRegisterButton(object sender, RoutedEventArgs e)

        {
            if (NicknameTextBox.Text.Length < MINIMUN_LENGHT || EmailTextBox.Text.Length < MINIMUM_MAIL_LENGHT 
                || PasswordTextBox.Password.Length < MINIMUN_LENGHT || LanguageBox.SelectionBoxItem == null 
                || QuestionTextBox.Text.Length < MINIMUN_LENGHT || AnswerTextBox.Text.Length < ANSWER_MINIMUM_LENGHT 
                || IsEmail() == false || IsQuestion() == false || CheckWhiteSpaces() == false)
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
            if (String.IsNullOrEmpty(NicknameTextBox.Text) || String.IsNullOrEmpty(PasswordTextBox.Password)
                || String.IsNullOrEmpty(AnswerTextBox.Text))
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
            Random random = new Random();

            int selectedLanguage = CheckLanguage();

            JugadorManager.SaveNewPlayer(new Jugador
            {
                Apodo = NicknameTextBox.Text,
                Contrasenia = PasswordTextBox.Password,
                CorreoElectronico = EmailTextBox.Text,
                Status = "",
                RespuestaConfirmacion = AnswerTextBox.Text,
                PreguntaRecuperacion = QuestionTextBox.Text,
                PinConfirmacion = random.Next(10000, 99999).ToString(),
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
            NavigationService.GoBack();
        }
    }
}
