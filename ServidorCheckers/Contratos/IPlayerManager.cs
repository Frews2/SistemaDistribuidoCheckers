using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace Contratos
{
    [ServiceContract(CallbackContract = typeof(IPlayerManagerCallback))]
    public interface IPlayerManager
    {
        [OperationContract(IsOneWay = true)]
        void Login(Jugador player);

        [OperationContract(IsOneWay = true)]
        void SavePlayer(Jugador player);

        [OperationContract(IsOneWay = true)]
        void VerifyPlayer(Jugador player);

        [OperationContract(IsOneWay = true)]
        void SendMail(Jugador player);

        [OperationContract(IsOneWay = true)]
        void PasswordForgotMail(string nickname);

        [OperationContract(IsOneWay = true)]
        void VerifyPin(string nickname, string pin);

        [OperationContract(IsOneWay = true)]
        void ChangePassword(string nickname, string newPassword);

        [OperationContract(IsOneWay = true)]
        void GetActualPlayer(Jugador actualPlayer);
    }

    [ServiceContract]
    public interface IPlayerManagerCallback
    {
        [OperationContract(IsOneWay = true)]
        void GetLoginResult(LoginResult resultadoLogin,Jugador player);

        [OperationContract(IsOneWay = true)]
        void GetSaveResult(SaveResult resultadoGuardado, Jugador player);

        [OperationContract(IsOneWay = true)]
        void GetVerifyResult(VerificationResult resultadoVerificacion);

        [OperationContract(IsOneWay = true)]
        void GetMailResult(MailResult resultadoCorreo, string actualNickname);

        [OperationContract(IsOneWay = true)]
        void GetPinResult(PinResult verifiedPinResult, string playerNickname);

        [OperationContract(IsOneWay = true)]
        void GetPasswordChangeResult(PasswordChangeResult passwordChangedResult);

        [OperationContract(IsOneWay = true)]
        void SendActualPlayer(DataObtainedResult dataObtainedResult, Dominio.Jugador actualPlayer);
    }


}
