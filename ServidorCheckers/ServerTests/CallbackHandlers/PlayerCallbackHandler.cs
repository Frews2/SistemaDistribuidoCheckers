/*
 Date: 11/01/2021
 Author(s): Ricardo Moguel Sanchez
*/
using Contratos;
using Dominio;

namespace ServerTests.CallbackHandlers
{
    class PlayerCallbackHandler : IPlayerManagerCallback
    {
        public LoginResult loginResult { get; set; }
        public MailResult mailResult { get; set; }
        public PasswordChangeResult passwordChangeResult { get; set; }
        public PinResult pinResult { get; set; }
        public SaveResult saveResult { get; set; }
        public VerificationResult verificationResult { get; set; }
        public DataObtainedResult dataObtainedResult { get; set; }

        public void GetAdminLoginResult(LoginResult resultadoLogin, Jugador playerLoged)
        {
            loginResult = resultadoLogin;
        }

        public void GetMailResult(MailResult emailResult, string playerNickname, string securityQuestion)
        {
            mailResult = emailResult;
        }

        public void GetPasswordChangeResult(PasswordChangeResult passwordChangeResult)
        {
            this.passwordChangeResult = passwordChangeResult;
        }

        public void GetPinResult(PinResult pinResult, string playerNickname)
        {
            this.pinResult = pinResult;
        }

        public void GetPlayerLoginResult(LoginResult resultadoLogin, Jugador playerLoged)
        {
            loginResult = resultadoLogin;
        }

        public void GetResendMailResult(MailResult emailResult, string playerNickname)
        {
            mailResult = emailResult;
        }

        public void GetSaveResult(SaveResult saveResult, Jugador newPlayer)
        {
            this.saveResult = saveResult;
        }

        public void GetVerifyResult(VerificationResult resultadoVerificacion)
        {
            verificationResult = resultadoVerificacion;
        }

        public void SendActualPlayer(DataObtainedResult dataObtainedResult, Jugador actualPlayer)
        {
            this.dataObtainedResult = dataObtainedResult;
        }
    }
}
