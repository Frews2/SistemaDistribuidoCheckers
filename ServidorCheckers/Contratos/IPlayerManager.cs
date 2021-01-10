using Dominio;
using System.ServiceModel;

namespace Contratos
{
    [ServiceContract(CallbackContract = typeof(IPlayerManagerCallback))]
    public interface IPlayerManager
    {
        [OperationContract(IsOneWay = true)]
        void Login(Jugador player);

        [OperationContract(IsOneWay = true)]
        void LoginPlayer(Jugador player);

        [OperationContract(IsOneWay = true)]
        void SavePlayer(Jugador player);

        [OperationContract(IsOneWay = true)]
        void VerifyPlayer(Jugador player);

        [OperationContract(IsOneWay = true)]
        void SendMail(Jugador player);

        [OperationContract(IsOneWay = true)]
        void PasswordForgotMail(string actualNickname);

        [OperationContract(IsOneWay = true)]
        void VerifyPin(string actualNickname, string playerPin, string answerText);

        [OperationContract(IsOneWay = true)]
        void ChangePassword(string userNickname, string password);

        [OperationContract(IsOneWay = true)]
        void GetActualPlayer(Jugador actualPlayer);

        [OperationContract(IsOneWay = true)]
        void CloseSession(string playerNickname);
    }

    [ServiceContract]
    public interface IPlayerManagerCallback
    {
        [OperationContract(IsOneWay = true)]
        void GetAdminLoginResult(LoginResult resultadoLogin,Jugador playerLoged);

        [OperationContract(IsOneWay = true)]
        void GetPlayerLoginResult(LoginResult resultadoLogin, Jugador playerLoged);

        [OperationContract(IsOneWay = true)]
        void GetSaveResult(SaveResult saveResult, Jugador newPlayer);

        [OperationContract(IsOneWay = true)]
        void GetVerifyResult(VerificationResult resultadoVerificacion);

        [OperationContract(IsOneWay = true)]
        void GetResendMailResult(MailResult emailResult, string playerNickname);

        [OperationContract(IsOneWay = true)]
        void GetMailResult(MailResult emailResult, string playerNickname, string securityQuestion);

        [OperationContract(IsOneWay = true)]
        void GetPinResult(PinResult pinResult, string playerNickname);

        [OperationContract(IsOneWay = true)]
        void GetPasswordChangeResult(PasswordChangeResult passwordChangeResult);

        [OperationContract(IsOneWay = true)]
        void SendActualPlayer(DataObtainedResult dataObtainedResult, Dominio.Jugador actualPlayer);
    }


}
