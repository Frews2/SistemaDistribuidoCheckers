using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contratos
{
    public enum VerificationResult
    {
        PinIncorrecto = 1,
        NoExisteJugador = 2,
        VerificacionExistosa = 3
    }
    public enum LoginResult
    {
        PasswordIncorrecto = 1,
        NoExisteJugador = 2,
        ExisteJugadorVerificado = 3,
        ExisteJugadorNoVerificado = 4,
    }

    public enum SaveResult
    {
        JugadorGuardado = 1,
        NicknameExistente = 2,
        CorreoExistente = 3,
        ErrorGuardado = 4,
    }

    public enum MailResult
    {
        MailSend= 1,
        SendError = 2,
        UnknownPlayer = 3
    }

    public enum PinResult
    {
        VerifiedPin = 1,
        UnknownPin = 2
    }

    public enum PasswordChangeResult
    {
        ChangedPassword = 1,
        ErrorChanging = 2
    }

    public enum DataObtainedResult
    {
        DataObtained = 1,
        ErrorObtainingData = 2
    }
}
