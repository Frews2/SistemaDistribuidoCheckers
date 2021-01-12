
/*
 Date: 27/11/2020
 Author(s): Cesar Sergio Martinez Palacios
*/
namespace Contratos
{
    /// <summary>
    /// Enumeraciones para los cuadrados del tablero de checkers
    /// </summary>
    public enum Checker
    {
        freeSpace,
        player1Checker,
        player1King,
        player2Checker,
        player2King
    }

    /// <summary>
    /// Enumeraciones para los modos de juegos posibles de checkers
    /// </summary>
    public enum CheckersGameMode
    {
        ClassicCheckers = 1,
        SuicidalCheckers = 2,
        CanadianCheckers =3,
        ItalianCheckers = 4,
        NoGame = 5
    }

    /// <summary>
    /// Enumeraciones para los posibles resultados de intentar crear partida de juego
    /// </summary>
    public enum MatchmakingResult
    {
        MATCH_FOUND = 1,
        MATCH_NOT_FOUND = 2,
        UNABLE_TO_ENTER_MATCH = 3
    }

    /// <summary>
    /// Enumeraciones para los posibles resultados de intentar verificar un jugador
    /// </summary>
    public enum VerificationResult
    {
        PinIncorrecto = 1,
        NoExisteJugador = 2,
        VerificacionExistosa = 3
    }

    /// <summary>
    /// Enumeraciones para los posibles resultados de inicio de sesión
    /// </summary>
    public enum LoginResult
    {
        PasswordIncorrecto = 1,
        NoExisteJugador = 2,
        ExisteJugadorVerificado = 3,
        ExisteJugadorNoVerificado = 4,
        EsAdmin = 5,
        LOGGED_PLAYER = 6,
        EsBaneado = 7
    }

    /// <summary>
    /// Enumeraciones para los posibles resultados de intentar guardar un jugador al sistema
    /// </summary>
    public enum SaveResult
    {
        JugadorGuardado = 1,
        NicknameExistente = 2,
        CorreoExistente = 3,
        ErrorGuardado = 4,
    }

    /// <summary>
    /// Enumeraciones para los posibles resultados de consultar reportes de jugadores acusados
    /// </summary>
    public enum AdminReportResult
    {
        NO_REPORTS_EXIST = 1,
        REPORT_EXISTS = 2
    }

    /// <summary>
    /// Enumeraciones para los posibles resultados de intentar guardar un reporte de acuso al sistema
    /// </summary>
    public enum ReportSaveResult
    {
        SAVED_REPORT = 1,
        ERROR_SAVING = 2
    }

    /// <summary>
    /// Enumeraciones para los posibles resultados de consultar rankings de jugadores
    /// </summary>
    public enum RankingResult
    {
        NO_RANKING = 1,
        RANKING_EXISTS = 2
    }

    /// <summary>
    /// Enumeraciones para los posibles resultados de envio de correo al email de un jugador
    /// </summary>
    public enum MailResult
    {
        MailSend= 1,
        SendError = 2,
        UnknownPlayer = 3
    }

    /// <summary>
    /// Enumeraciones para los posibles resultados de verificacion para cambiar contraseña de jugador
    /// </summary>
    public enum PinResult
    {
        VerifiedPin = 1,
        WrongAnswer =2,
        UnknownPin = 3
    }

    /// <summary>
    /// Enumeraciones para los posibles resultados cuando se cambia la contraseña de jugador
    /// </summary>
    public enum PasswordChangeResult
    {
        ChangedPassword = 1,
        ErrorChanging = 2
    }

    /// <summary>
    /// Enumeraciones para los posibles resultados de obtener datos del jugador
    /// </summary>
    public enum DataObtainedResult
    {
        DataObtained = 1,
        ErrorObtainingData = 2
    }

    /// <summary>
    /// Enumeraciones para los posibles resultados de intentar prohibir a un jugador acceso al sistema
    /// </summary>
    public enum BanResult
    {
        PLAYER_BANNED = 1,
        PLAYER_ALREADY_BANNED = 2,
        ERROR_BANNING = 3
    }
}
