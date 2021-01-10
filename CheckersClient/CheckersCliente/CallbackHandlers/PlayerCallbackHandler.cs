/*
    Date: 23/11/2020
    Author(s): César Sergio Martinez Palacios
*/

using CheckersCliente.MainService;
using System.Linq;
using System.ServiceModel;
using CheckersCliente.Windows;
using CheckersCliente.LogInPages;
using CheckersCliente.MenuPages;
using CheckersCliente.Properties;

namespace CheckersCliente
{
    [CallbackBehavior(ConcurrencyMode = ConcurrencyMode.Reentrant)]
    public class PlayerCallbackHandler : IPlayerManagerCallback
    {
        /// <summary>
        /// Obtiene el resultado del inicio de sesion del servidor del administrador
        /// </summary>
        /// <param name="resultadoLogin"></param>
        /// <param name="playerLoged"></param>
        public void GetAdminLoginResult(LoginResult resultadoLogin, Jugador playerLoged)
        {
            if (resultadoLogin == LoginResult.EsAdmin)
            {
                AdminPage adminPage = new AdminPage(playerLoged);
                adminPage.Show();
                LogIn logIn = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
                logIn.Close();
            }
            else
            {
                if (resultadoLogin == LoginResult.PasswordIncorrecto)
                {
                    DialogWindowManager.ShowErrorWindow(Resources.IncorrectPasswordMessage);
                }
                else
                {
                    DialogWindowManager.ShowErrorWindow(Resources.LoggedPlayer);
                }
            }
            
        }

        /// <summary>
        /// Obtiene el resultado del inicio de sesion del servidor del jugador
        /// </summary>
        /// <param name="resultadoLogin"></param>
        /// <param name="playerLoged"></param>
        public void GetPlayerLoginResult(LoginResult resultadoLogin, Jugador playerLoged)
        {
            if (resultadoLogin == LoginResult.ExisteJugadorVerificado)
            {
                Menu menu = new Menu(playerLoged);
                menu.Show();
                LogIn logIn = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
                logIn.Close();
            }
            else
            {
                if (resultadoLogin == LoginResult.ExisteJugadorNoVerificado)
                {
                    DialogWindowManager.ShowErrorWindow(Resources.NotVerifiedMessage);
                    LogIn login = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
                    login.NavigationService.Navigate(new FinalizeRegister(playerLoged));
                }
                else
                {
                    LoginBanCheck(resultadoLogin);
                }
            }
        }

        private void LoginBanCheck(LoginResult resultadoLogin)
        {
            if (resultadoLogin == LoginResult.EsBaneado)
            {
                DialogWindowManager.ShowErrorWindow(Resources.BannedLoginMessage);
            }
            else
            {
                if (resultadoLogin == LoginResult.NoExisteJugador)
                {
                    DialogWindowManager.ShowErrorWindow(Resources.DoesNotExistLoginMessage);
                }
                else
                {
                    if (resultadoLogin == LoginResult.LOGGED_PLAYER)
                    {
                        DialogWindowManager.ShowErrorWindow(Resources.LoggedPlayer);
                    }
                    else
                    {
                        DialogWindowManager.ShowErrorWindow(Resources.IncorrectPasswordMessage);
                    }
                }
            }
        }

        /// <summary>
        /// Obtiene el resultado de un intento a guardar un Jugador y sus datos a la base de datos.
        /// </summary>
        /// <param name="saveResult"></param>
        /// <param name="newPlayer"></param>
        public void GetSaveResult(SaveResult saveResult, Jugador newPlayer)
        {
            if(saveResult == SaveResult.JugadorGuardado)
            {
                DialogWindowManager.ShowSuccessWindow(Resources.SuccessfulRegisterMessage);
                LogIn login = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
                login.NavigationService.Navigate(new FinalizeRegister(newPlayer));
            }
            else
            {
                if (saveResult == SaveResult.NicknameExistente)
                {
                    DialogWindowManager.ShowErrorWindow(Resources.DuplicateNicknameMessage);
                }
                else
                {
                    if (saveResult == SaveResult.CorreoExistente)
                    {
                        DialogWindowManager.ShowErrorWindow(Resources.DuplicateEmailMessage);
                    }
                    else
                    {
                        DialogWindowManager.ShowErrorWindow(Resources.UnexplainedErrorMessage);
                    }
                }
            }
        }

        public void GetVerifyResult(VerificationResult resultadoVerificacion)
        {
            if(resultadoVerificacion == VerificationResult.VerificacionExistosa)
            {
                DialogWindowManager.ShowSuccessWindow(Resources.SuccessfulVerificationMessage);
                LogIn logIn = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
                logIn.NavigationService.Navigate(new LogInPage());
            }
            else if (resultadoVerificacion == VerificationResult.NoExisteJugador)
            {
                DialogWindowManager.ShowErrorWindow(Resources.DoesNotExistLoginMessage);
            }
            else
            {
                DialogWindowManager.ShowErrorWindow(Resources.WrongPINMessage);
            }
        }

        public void GetResendMailResult(MailResult emailResult, string playerNickname)
        {
            if (emailResult == MailResult.MailSend)
            {
                DialogWindowManager.ShowSuccessWindow(Resources.EmailSentMessage);
            }
            else
            {
                if (emailResult == MailResult.UnknownPlayer)
                {
                    DialogWindowManager.ShowErrorWindow(Resources.DoesNotExistLoginMessage);
                }
                else
                {
                    DialogWindowManager.ShowErrorWindow(Resources.EmailNotSentMessage);
                }

            }
        }

        public void GetMailResult(MailResult emailResult, string playerNickname, string securityQuestion)
        {
            if(emailResult == MailResult.MailSend)
            {
                DialogWindowManager.ShowSuccessWindow(Resources.EmailSentMessage);
                LogIn login = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
                login.EnableNavigation();
                login.NavigationService.Navigate(new VerificatePasswordPin(playerNickname,securityQuestion));
            }
            else
            {
                if (emailResult == MailResult.UnknownPlayer)
                {
                    DialogWindowManager.ShowErrorWindow(Resources.DoesNotExistLoginMessage);
                }
                else
                {
                    DialogWindowManager.ShowErrorWindow(Resources.EmailNotSentMessage);
                }
            }
        }
    
        public void GetPinResult(PinResult pinResult, string playerNickname)
        {
            if(pinResult == PinResult.VerifiedPin)
            {
                LogIn login = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
                login.EnableNavigation();
                login.NavigationService.Navigate(new ChangePassword(playerNickname));
            }
            else
            {
                if (pinResult == PinResult.WrongAnswer)
                {
                    DialogWindowManager.ShowErrorWindow(Resources.WrongAnswerMessage);
                }
                else
                {
                    DialogWindowManager.ShowErrorWindow(Resources.WrongPINMessage);
                }
            }
        }

        public void GetPasswordChangeResult(PasswordChangeResult passwordChangeResult)
        {
            if (passwordChangeResult == PasswordChangeResult.ChangedPassword)
            {
                DialogWindowManager.ShowSuccessWindow(Resources.SuccessfulPasswordChangeMessage);
                LogIn login = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
                login.NavigationService.Navigate(new LogInPage());

            }
            else
            {
                DialogWindowManager.ShowErrorWindow(Resources.PasswordChangeErrorMessage);
            }

        }

        public void SendActualPlayer(DataObtainedResult dataObtainedResult, Jugador actualPlayer)
        {
            if (dataObtainedResult == DataObtainedResult.DataObtained)
            {
                Menu menu = App.Current.Windows.OfType<Menu>().FirstOrDefault();
                menu.EnableNavigation();
                menu.NavigationService.Navigate(new UserConfiguration(actualPlayer));
            }
            else
            {
                DialogWindowManager.ShowErrorWindow(Resources.NoConnectionMessage);
            }
        }

        
    }
}
