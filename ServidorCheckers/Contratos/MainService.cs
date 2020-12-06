using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using DataAccess.DataManager;
using Dominio;


namespace Contratos
{

    [ServiceBehavior(InstanceContextMode = InstanceContextMode.Single, ConcurrencyMode = ConcurrencyMode.Multiple)]
    public partial class MainService : IPlayerManager
    {
        public static readonly string ACTIVATION_STATE = "En activacion";
        public static readonly string ACTIVE_STATE = "Activo";
        public static readonly string REPORTED_STATE = "En revision";
        public static readonly string DOWN_STATE = "Baja";

        JugadorDataManager jugadorDataManager = new JugadorDataManager();
        HashManager hashText = new HashManager();

        public void Login(Jugador jugador)
        {
            LoginResult resultado;

            JugadorDataManager jugadorDataManager = new JugadorDataManager();

            if (jugadorDataManager.CheckNickname(jugador.Apodo))
            {
                if (jugadorDataManager.CheckState(jugador.Apodo))
                {
                    if (jugadorDataManager.EsPasswordCorrecto(hashText.TextToHash(jugador.Contrasenia), jugador.Apodo))
                    {
                        resultado = LoginResult.ExisteJugadorVerificado;
                    }
                    else
                    {
                        resultado = LoginResult.PasswordIncorrecto;
                    }
                }
                else
                {
                    resultado = LoginResult.ExisteJugadorNoVerificado;
                }
            }
            else
            {
                resultado = LoginResult.NoExisteJugador;
            }

            Callback.GetLoginResult(resultado, jugador);
        }

        public void SavePlayer(Dominio.Jugador jugador)
        {
            JugadorDataManager playerDataManager = new JugadorDataManager();

            int columnasAfectadas = 0;
            string eMail = jugador.CorreoElectronico;
            SaveResult exitoGuardado = SaveResult.ErrorGuardado;

            bool nicknameExists = playerDataManager.CheckNickname(jugador.Apodo);
            
            if (nicknameExists == false)
            {
                bool emailExists = playerDataManager.CheckEmail(jugador.CorreoElectronico);

                if (emailExists == false)
                {
                    DataAccess.Jugador newPlayer = new DataAccess.Jugador
                    {
                        apodo = jugador.Apodo,
                        contrasenia = hashText.TextToHash(jugador.Contrasenia),
                        correoElectronico = jugador.CorreoElectronico,
                        status = ACTIVATION_STATE,
                        respuestaConfirmacion = jugador.RespuestaConfirmacion,
                        preguntaRecuperacion = jugador.PreguntaRecuperacion,
                        pinConfirmacion = jugador.PinConfirmacion,
                        idCreador = 1,
                        idioma = jugador.IdLenguaje
                    };

                    JugadorDataManager jugadorDataManager = new JugadorDataManager();
                    columnasAfectadas = jugadorDataManager.SaveNewPlayer(newPlayer);

                    if (columnasAfectadas > 0)
                    {
                        exitoGuardado = SaveResult.JugadorGuardado;
                        Callback.GetSaveResult(exitoGuardado, jugador);

                        System.Net.Mail.MailMessage mensaje = new System.Net.Mail.MailMessage();

                        mensaje.To.Add(newPlayer.correoElectronico);
                        mensaje.Subject = "Confirmación de creación de cuenta " + jugador.Apodo;
                        mensaje.Body = "Hola " + jugador.Apodo + " estas a un paso de verificar tu cuenta!, " +
                            "el código de verificación de cuenta es el siguiente: " + newPlayer.pinConfirmacion;
                        mensaje.From = new System.Net.Mail.MailAddress("checkersGame124@gmail.com", "Checkers Game Proyect");

                        System.Net.Mail.SmtpClient cliente = new System.Net.Mail.SmtpClient
                        {
                            Credentials = new System.Net.NetworkCredential("checkersGame124@gmail.com", "checkersJuego1."),
                            Port = 587,
                            EnableSsl = true,
                            Host = "smtp.gmail.com",
                        };
                        try
                        {
                            cliente.Send(mensaje);
                        }
                        catch (System.Net.Mail.SmtpException)
                        {
                            throw new System.Net.Mail.SmtpException("No se ha podido enviar el correo, favor de verificar su correo");
                        }
                    }
                    else
                    {
                        exitoGuardado = SaveResult.ErrorGuardado;
                        Callback.GetSaveResult(exitoGuardado, jugador);
                    }
                }
                else
                {
                    exitoGuardado = SaveResult.CorreoExistente;
                    Callback.GetSaveResult(exitoGuardado, jugador);
                }
            }
            else
            {
                exitoGuardado = SaveResult.NicknameExistente;
                Callback.GetSaveResult(exitoGuardado, jugador);
            }

        }

        public void VerifyPlayer(Dominio.Jugador player)
        {
            VerificationResult resultado = VerificationResult.NoExisteJugador;

            JugadorDataManager jugadorDataManager = new JugadorDataManager();

            if (jugadorDataManager.CheckNickname(player.Apodo))
            {
                if (jugadorDataManager.PinCorrecto(player.Apodo, player.PinConfirmacion))
                {
                    int result = jugadorDataManager.VerifyNewPlayer(new DataAccess.Jugador{
                        apodo = player.Apodo,
                        pinConfirmacion = player.PinConfirmacion,
                    });

                    if(result > 0)
                    {
                        resultado = VerificationResult.VerificacionExistosa;
                    }
                }
                else
                {
                    resultado = VerificationResult.PinIncorrecto;
                }
            }
            else
            {
                resultado = VerificationResult.NoExisteJugador;
            }

            Callback.GetVerifyResult(resultado);
        }

        public void SendMail(Jugador player)
        {
            MailResult mailSuccesResult = MailResult.SendError;

            System.Net.Mail.MailMessage mailMesagge = new System.Net.Mail.MailMessage();

            mailMesagge.To.Add(player.CorreoElectronico);
            mailMesagge.Subject = "Confirmación de creación de cuenta " + player.Apodo;
            mailMesagge.Body = "Hola " + player.Apodo + " estas a un paso de verificar tu cuenta!, " +
                "el código de verificación de cuenta es el siguiente: " + player.PinConfirmacion;
            mailMesagge.From = new System.Net.Mail.MailAddress("checkersGame124@gmail.com", "Checkers Game Proyect");

            System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient
            {
                Credentials = new System.Net.NetworkCredential("checkersGame124@gmail.com", "checkersJuego1."),
                Port = 587,
                EnableSsl = true,
                Host = "smtp.gmail.com",
            };
            try
            {
                client.Send(mailMesagge);
                mailSuccesResult = MailResult.MailSend;
                Callback.GetMailResult(mailSuccesResult, player.Apodo);
            }
            catch (System.Net.Mail.SmtpException)
            {
                Callback.GetMailResult(mailSuccesResult, player.Apodo);
                throw new System.Net.Mail.SmtpException("No se ha podido enviar el correo, favor de verificar su correo");
            }
        }

        public void PasswordForgotMail(string actualNickname)
        {
            JugadorDataManager jugadorDataManager = new JugadorDataManager();
            MailResult mailSuccesResult = MailResult.SendError;

            if (jugadorDataManager.CheckNickname(actualNickname))
            {
                DataAccess.Jugador player = new DataAccess.Jugador();
                player = jugadorDataManager.GetPlayerByNickname(actualNickname);

                System.Net.Mail.MailMessage mailMesagge = new System.Net.Mail.MailMessage();

                mailMesagge.To.Add(player.correoElectronico);
                mailMesagge.Subject = "Recuperacion de cuenta del jugador " + player.apodo;
                mailMesagge.Body = "Hola " + player.apodo + " has solicitado una recuperacion de cuenta, " +
                    "el código de verificación para cambiar tu contraseña es el siguiente: " + player.pinConfirmacion;
                mailMesagge.From = new System.Net.Mail.MailAddress("checkersGame124@gmail.com", "Checkers Game Proyect");

                System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient
                {
                    Credentials = new System.Net.NetworkCredential("checkersGame124@gmail.com", "checkersJuego1."),
                    Port = 587,
                    EnableSsl = true,
                    Host = "smtp.gmail.com",
                };
                try
                {
                    client.Send(mailMesagge);
                    mailSuccesResult = MailResult.MailSend;
                    Callback.GetMailResult(mailSuccesResult, actualNickname);
                }
                catch (System.Net.Mail.SmtpException)
                {
                    Callback.GetMailResult(mailSuccesResult, actualNickname);
                    throw new System.Net.Mail.SmtpException("No se ha podido enviar el correo, favor de verificar su correo");
                }
            }
            else
            {
                mailSuccesResult = MailResult.UnknownPlayer;
                Callback.GetMailResult(mailSuccesResult, actualNickname);
            }
        }

        public void VerifyPin(string actualNickname, string playerPin)
        {
            PinResult pinResult = PinResult.UnknownPin;
            
            if(jugadorDataManager.PinCorrecto(actualNickname, playerPin))
            {
                pinResult = PinResult.VerifiedPin;
            }

            Callback.GetPinResult(pinResult,actualNickname);
        }

        public void ChangePassword(string userNickname, string password)
        {
            PasswordChangeResult passwordChangeResult = PasswordChangeResult.ErrorChanging;

        }

        IPlayerManagerCallback Callback
        {
            get
            {
                return OperationContext.Current.GetCallbackChannel<IPlayerManagerCallback>();
            }
        }
    }
}