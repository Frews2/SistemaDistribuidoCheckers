/*
 Date: 20/11/2020
 Author(s): Cesar Sergio Martinez Palacios
*/
using Dominio;
using System.ServiceModel;

namespace Contratos
{
    /// <summary>
    /// Interface para servicios con respecto a datos de jugadores
    /// </summary>
    [ServiceContract(CallbackContract = typeof(IPlayerManagerCallback))]
    public interface IPlayerManager
    {
        /// <summary>
        /// Contrato para iniciar sesion al sistema
        /// </summary>
        /// <param name="player"></param>
        [OperationContract(IsOneWay = true)]
        void Login(Jugador player);

        /// <summary>
        /// Contrato para iniciar sesion como Jugador
        /// </summary>
        /// <param name="player"></param>
        [OperationContract(IsOneWay = true)]
        void LoginPlayer(Jugador player);

        /// <summary>
        /// Contrato para guardar un jugador registrado a la base de datos
        /// </summary>
        /// <param name="player"></param>
        [OperationContract(IsOneWay = true)]
        void SavePlayer(Jugador player);

        /// <summary>
        /// Contrato para verificar un jugador antes de ser otorgado acceso al sistema
        /// </summary>
        /// <param name="player"></param>
        [OperationContract(IsOneWay = true)]
        void VerifyPlayer(Jugador player);

        /// <summary>
        /// Contrato para enviar correo al email de un jugador
        /// </summary>
        /// <param name="player"></param>
        [OperationContract(IsOneWay = true)]
        void SendMail(Jugador player);

        /// <summary>
        /// Contrato para enviar email de solicitud de cambio de contraseña a un jugador
        /// </summary>
        /// <param name="actualNickname"></param>
        [OperationContract(IsOneWay = true)]
        void PasswordForgotMail(string actualNickname);

        /// <summary>
        /// Contrato para verificar el PIN de confirmacion para habilitar el cambio de contraseña de un jugador
        /// </summary>
        /// <param name="actualNickname"></param>
        /// <param name="playerPin"></param>
        /// <param name="answerText"></param>
        [OperationContract(IsOneWay = true)]
        void VerifyPin(string actualNickname, string playerPin, string answerText);

        /// <summary>
        /// Contrato para actualizar la contraseña de un jugador
        /// </summary>
        /// <param name="userNickname"></param>
        /// <param name="password"></param>
        [OperationContract(IsOneWay = true)]
        void ChangePassword(string userNickname, string password);

        /// <summary>
        /// Contrato para obtener datos de un jugador
        /// </summary>
        /// <param name="actualPlayer"></param>
        [OperationContract(IsOneWay = true)]
        void GetActualPlayer(Jugador actualPlayer);

        /// <summary>
        /// Contrato para cerrrar sesion dentro del sistema
        /// </summary>
        /// <param name="playerNickname"></param>
        [OperationContract(IsOneWay = true)]
        void CloseSession(string playerNickname);
    }

    /// <summary>
    /// Interface para servicios de callback handlers para <c>Jugador</c> que debe implementar el cliente
    /// </summary>
    [ServiceContract]
    public interface IPlayerManagerCallback
    {
        /// <summary>
        /// Contrato para obtener resultado de inicio de sesion como Administrador
        /// </summary>
        /// <param name="resultadoLogin"></param>
        /// <param name="playerLoged"></param>
        [OperationContract(IsOneWay = true)]
        void GetAdminLoginResult(LoginResult resultadoLogin,Jugador playerLoged);

        /// <summary>
        /// Contrato para obtener resultado de inicio de sesion como Jugador
        /// </summary>
        /// <param name="resultadoLogin"></param>
        /// <param name="playerLoged"></param>
        [OperationContract(IsOneWay = true)]
        void GetPlayerLoginResult(LoginResult resultadoLogin, Jugador playerLoged);

        /// <summary>
        /// Contrato para obtener resultado de intentar registrar un jugador al sistema
        /// </summary>
        /// <param name="saveResult"></param>
        /// <param name="newPlayer"></param>
        [OperationContract(IsOneWay = true)]
        void GetSaveResult(SaveResult saveResult, Jugador newPlayer);

        /// <summary>
        /// Contrato para obtener resultado de intentar verificar un jugador al sistema para permitir acceso
        /// </summary>
        /// <param name="resultadoVerificacion"></param>
        [OperationContract(IsOneWay = true)]
        void GetVerifyResult(VerificationResult resultadoVerificacion);

        /// <summary>
        /// Contrato para obtener resultado de intentar enviar un correo por segunda vez a un jugador
        /// </summary>
        /// <param name="emailResult"></param>
        /// <param name="playerNickname"></param>
        [OperationContract(IsOneWay = true)]
        void GetResendMailResult(MailResult emailResult, string playerNickname);

        /// <summary>
        /// Contrato para obtener resultado de intentar enviar correo para verificar su cuenta y otorgar acceso al sistema
        /// </summary>
        /// <param name="emailResult"></param>
        /// <param name="playerNickname"></param>
        /// <param name="securityQuestion"></param>
        [OperationContract(IsOneWay = true)]
        void GetMailResult(MailResult emailResult, string playerNickname, string securityQuestion);

        /// <summary>
        /// Contrato para obtener resultado de intentar verificar el numero PIN para habilitar el cambio de contraseña
        /// </summary>
        /// <param name="pinResult"></param>
        /// <param name="playerNickname"></param>
        [OperationContract(IsOneWay = true)]
        void GetPinResult(PinResult pinResult, string playerNickname);

        /// <summary>
        /// Contrato para obtener resultado de intentar actualizar la contraseña de un jugador
        /// </summary>
        /// <param name="passwordChangeResult"></param>
        [OperationContract(IsOneWay = true)]
        void GetPasswordChangeResult(PasswordChangeResult passwordChangeResult);

        /// <summary>
        /// Contrato para obtener resultado de consultar datos de un jugador
        /// </summary>
        /// <param name="dataObtainedResult"></param>
        /// <param name="actualPlayer"></param>
        [OperationContract(IsOneWay = true)]
        void SendActualPlayer(DataObtainedResult dataObtainedResult, Dominio.Jugador actualPlayer);
    }


}
