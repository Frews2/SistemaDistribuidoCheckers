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
        void SendMailResult(MailResult resultadoCorreo);
    }


}
