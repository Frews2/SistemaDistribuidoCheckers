﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ServerTests.MainService {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="MainService.IPlayerManager", CallbackContract=typeof(ServerTests.MainService.IPlayerManagerCallback))]
    public interface IPlayerManager {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/Login")]
        void Login(Dominio.Jugador player);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/Login")]
        System.Threading.Tasks.Task LoginAsync(Dominio.Jugador player);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/LoginPlayer")]
        void LoginPlayer(Dominio.Jugador player);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/LoginPlayer")]
        System.Threading.Tasks.Task LoginPlayerAsync(Dominio.Jugador player);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/SavePlayer")]
        void SavePlayer(Dominio.Jugador player);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/SavePlayer")]
        System.Threading.Tasks.Task SavePlayerAsync(Dominio.Jugador player);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/VerifyPlayer")]
        void VerifyPlayer(Dominio.Jugador player);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/VerifyPlayer")]
        System.Threading.Tasks.Task VerifyPlayerAsync(Dominio.Jugador player);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/SendMail")]
        void SendMail(Dominio.Jugador player);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/SendMail")]
        System.Threading.Tasks.Task SendMailAsync(Dominio.Jugador player);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/PasswordForgotMail")]
        void PasswordForgotMail(string actualNickname);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/PasswordForgotMail")]
        System.Threading.Tasks.Task PasswordForgotMailAsync(string actualNickname);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/VerifyPin")]
        void VerifyPin(string actualNickname, string playerPin, string answerText);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/VerifyPin")]
        System.Threading.Tasks.Task VerifyPinAsync(string actualNickname, string playerPin, string answerText);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/ChangePassword")]
        void ChangePassword(string userNickname, string password);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/ChangePassword")]
        System.Threading.Tasks.Task ChangePasswordAsync(string userNickname, string password);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/GetActualPlayer")]
        void GetActualPlayer(Dominio.Jugador actualPlayer);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/GetActualPlayer")]
        System.Threading.Tasks.Task GetActualPlayerAsync(Dominio.Jugador actualPlayer);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/CloseSession")]
        void CloseSession(string playerNickname);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/CloseSession")]
        System.Threading.Tasks.Task CloseSessionAsync(string playerNickname);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IPlayerManagerCallback {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/GetAdminLoginResult")]
        void GetAdminLoginResult(Contratos.LoginResult resultadoLogin, Dominio.Jugador playerLoged);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/GetPlayerLoginResult")]
        void GetPlayerLoginResult(Contratos.LoginResult resultadoLogin, Dominio.Jugador playerLoged);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/GetSaveResult")]
        void GetSaveResult(Contratos.SaveResult saveResult, Dominio.Jugador newPlayer);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/GetVerifyResult")]
        void GetVerifyResult(Contratos.VerificationResult resultadoVerificacion);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/GetResendMailResult")]
        void GetResendMailResult(Contratos.MailResult emailResult, string playerNickname);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/GetMailResult")]
        void GetMailResult(Contratos.MailResult emailResult, string playerNickname, string securityQuestion);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/GetPinResult")]
        void GetPinResult(Contratos.PinResult pinResult, string playerNickname);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/GetPasswordChangeResult")]
        void GetPasswordChangeResult(Contratos.PasswordChangeResult passwordChangeResult);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IPlayerManager/SendActualPlayer")]
        void SendActualPlayer(Contratos.DataObtainedResult dataObtainedResult, Dominio.Jugador actualPlayer);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IPlayerManagerChannel : ServerTests.MainService.IPlayerManager, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class PlayerManagerClient : System.ServiceModel.DuplexClientBase<ServerTests.MainService.IPlayerManager>, ServerTests.MainService.IPlayerManager {
        
        public PlayerManagerClient(System.ServiceModel.InstanceContext callbackInstance) : 
                base(callbackInstance) {
        }
        
        public PlayerManagerClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName) : 
                base(callbackInstance, endpointConfigurationName) {
        }
        
        public PlayerManagerClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, string remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public PlayerManagerClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public PlayerManagerClient(System.ServiceModel.InstanceContext callbackInstance, System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, binding, remoteAddress) {
        }
        
        public void Login(Dominio.Jugador player) {
            base.Channel.Login(player);
        }
        
        public System.Threading.Tasks.Task LoginAsync(Dominio.Jugador player) {
            return base.Channel.LoginAsync(player);
        }
        
        public void LoginPlayer(Dominio.Jugador player) {
            base.Channel.LoginPlayer(player);
        }
        
        public System.Threading.Tasks.Task LoginPlayerAsync(Dominio.Jugador player) {
            return base.Channel.LoginPlayerAsync(player);
        }
        
        public void SavePlayer(Dominio.Jugador player) {
            base.Channel.SavePlayer(player);
        }
        
        public System.Threading.Tasks.Task SavePlayerAsync(Dominio.Jugador player) {
            return base.Channel.SavePlayerAsync(player);
        }
        
        public void VerifyPlayer(Dominio.Jugador player) {
            base.Channel.VerifyPlayer(player);
        }
        
        public System.Threading.Tasks.Task VerifyPlayerAsync(Dominio.Jugador player) {
            return base.Channel.VerifyPlayerAsync(player);
        }
        
        public void SendMail(Dominio.Jugador player) {
            base.Channel.SendMail(player);
        }
        
        public System.Threading.Tasks.Task SendMailAsync(Dominio.Jugador player) {
            return base.Channel.SendMailAsync(player);
        }
        
        public void PasswordForgotMail(string actualNickname) {
            base.Channel.PasswordForgotMail(actualNickname);
        }
        
        public System.Threading.Tasks.Task PasswordForgotMailAsync(string actualNickname) {
            return base.Channel.PasswordForgotMailAsync(actualNickname);
        }
        
        public void VerifyPin(string actualNickname, string playerPin, string answerText) {
            base.Channel.VerifyPin(actualNickname, playerPin, answerText);
        }
        
        public System.Threading.Tasks.Task VerifyPinAsync(string actualNickname, string playerPin, string answerText) {
            return base.Channel.VerifyPinAsync(actualNickname, playerPin, answerText);
        }
        
        public void ChangePassword(string userNickname, string password) {
            base.Channel.ChangePassword(userNickname, password);
        }
        
        public System.Threading.Tasks.Task ChangePasswordAsync(string userNickname, string password) {
            return base.Channel.ChangePasswordAsync(userNickname, password);
        }
        
        public void GetActualPlayer(Dominio.Jugador actualPlayer) {
            base.Channel.GetActualPlayer(actualPlayer);
        }
        
        public System.Threading.Tasks.Task GetActualPlayerAsync(Dominio.Jugador actualPlayer) {
            return base.Channel.GetActualPlayerAsync(actualPlayer);
        }
        
        public void CloseSession(string playerNickname) {
            base.Channel.CloseSession(playerNickname);
        }
        
        public System.Threading.Tasks.Task CloseSessionAsync(string playerNickname) {
            return base.Channel.CloseSessionAsync(playerNickname);
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="MainService.IRankingManager", CallbackContract=typeof(ServerTests.MainService.IRankingManagerCallback))]
    public interface IRankingManager {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IRankingManager/GetRankingData")]
        void GetRankingData();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IRankingManager/GetRankingData")]
        System.Threading.Tasks.Task GetRankingDataAsync();
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IRankingManagerCallback {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IRankingManager/GetRankingResult")]
        void GetRankingResult(Contratos.RankingResult result);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IRankingManager/ReceiveRankingData")]
        void ReceiveRankingData(Dominio.Ranking[] rankingList);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IRankingManagerChannel : ServerTests.MainService.IRankingManager, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class RankingManagerClient : System.ServiceModel.DuplexClientBase<ServerTests.MainService.IRankingManager>, ServerTests.MainService.IRankingManager {
        
        public RankingManagerClient(System.ServiceModel.InstanceContext callbackInstance) : 
                base(callbackInstance) {
        }
        
        public RankingManagerClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName) : 
                base(callbackInstance, endpointConfigurationName) {
        }
        
        public RankingManagerClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, string remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public RankingManagerClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public RankingManagerClient(System.ServiceModel.InstanceContext callbackInstance, System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, binding, remoteAddress) {
        }
        
        public void GetRankingData() {
            base.Channel.GetRankingData();
        }
        
        public System.Threading.Tasks.Task GetRankingDataAsync() {
            return base.Channel.GetRankingDataAsync();
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="MainService.IBanManager", CallbackContract=typeof(ServerTests.MainService.IBanManagerCallback))]
    public interface IBanManager {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IBanManager/GetReportData")]
        void GetReportData();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IBanManager/GetReportData")]
        System.Threading.Tasks.Task GetReportDataAsync();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IBanManager/BanPlayer")]
        void BanPlayer(string reportedPlayerName);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IBanManager/BanPlayer")]
        System.Threading.Tasks.Task BanPlayerAsync(string reportedPlayerName);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IBanManagerCallback {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IBanManager/GetReportDataQueryResult")]
        void GetReportDataQueryResult(Contratos.AdminReportResult result);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IBanManager/ReceiveReportData")]
        void ReceiveReportData(Dominio.Reporte[] reportList);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IBanManager/GetBanResult")]
        void GetBanResult(Contratos.BanResult result);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IBanManagerChannel : ServerTests.MainService.IBanManager, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class BanManagerClient : System.ServiceModel.DuplexClientBase<ServerTests.MainService.IBanManager>, ServerTests.MainService.IBanManager {
        
        public BanManagerClient(System.ServiceModel.InstanceContext callbackInstance) : 
                base(callbackInstance) {
        }
        
        public BanManagerClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName) : 
                base(callbackInstance, endpointConfigurationName) {
        }
        
        public BanManagerClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, string remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public BanManagerClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public BanManagerClient(System.ServiceModel.InstanceContext callbackInstance, System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, binding, remoteAddress) {
        }
        
        public void GetReportData() {
            base.Channel.GetReportData();
        }
        
        public System.Threading.Tasks.Task GetReportDataAsync() {
            return base.Channel.GetReportDataAsync();
        }
        
        public void BanPlayer(string reportedPlayerName) {
            base.Channel.BanPlayer(reportedPlayerName);
        }
        
        public System.Threading.Tasks.Task BanPlayerAsync(string reportedPlayerName) {
            return base.Channel.BanPlayerAsync(reportedPlayerName);
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="MainService.IGameManager", CallbackContract=typeof(ServerTests.MainService.IGameManagerCallback))]
    public interface IGameManager {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IGameManager/CreateMatch")]
        void CreateMatch(Dominio.Jugador currentPlayer, Contratos.CheckersGameMode gameMode);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IGameManager/CreateMatch")]
        System.Threading.Tasks.Task CreateMatchAsync(Dominio.Jugador currentPlayer, Contratos.CheckersGameMode gameMode);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IGameManager/Player1Turn")]
        void Player1Turn(Contratos.Checker[][] updateBoardMatrix, int matchNumber, int playerTwoCheckers, int playerOneCheckers);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IGameManager/Player1Turn")]
        System.Threading.Tasks.Task Player1TurnAsync(Contratos.Checker[][] updateBoardMatrix, int matchNumber, int playerTwoCheckers, int playerOneCheckers);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IGameManager/Player2Turn")]
        void Player2Turn(Contratos.Checker[][] updateBoardMatrix, int matchNumber, int playerTwoCheckers, int playerOneCheckers);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IGameManager/Player2Turn")]
        System.Threading.Tasks.Task Player2TurnAsync(Contratos.Checker[][] updateBoardMatrix, int matchNumber, int playerTwoCheckers, int playerOneCheckers);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IGameManager/FinishPlayerGame")]
        void FinishPlayerGame(int matchNumber, int playerNumber, int playerTwoCheckers, int playerOneCheckers);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IGameManager/FinishPlayerGame")]
        System.Threading.Tasks.Task FinishPlayerGameAsync(int matchNumber, int playerNumber, int playerTwoCheckers, int playerOneCheckers);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IGameManager/SendGameMessage")]
        void SendGameMessage(int playerNumber, string message, int matchNumber);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IGameManager/SendGameMessage")]
        System.Threading.Tasks.Task SendGameMessageAsync(int playerNumber, string message, int matchNumber);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IGameManager/ReportPlayer")]
        void ReportPlayer(int playerNumberReporting, int matchNumber, string reportText);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IGameManager/ReportPlayer")]
        System.Threading.Tasks.Task ReportPlayerAsync(int playerNumberReporting, int matchNumber, string reportText);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IGameManager/LeaveMatch")]
        void LeaveMatch(int matchNumber, int playerNumber);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IGameManager/LeaveMatch")]
        System.Threading.Tasks.Task LeaveMatchAsync(int matchNumber, int playerNumber);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IGameManagerCallback {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IGameManager/UpdateGameGUI")]
        void UpdateGameGUI(Contratos.Checker[][] updateBoardMatrix, int playerTwoCheckers, int playerOneCheckers);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IGameManager/FinishGame")]
        void FinishGame(int playerTwoCheckers, int playerOneCheckers);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IGameManager/GetMatchmakingResult")]
        [System.ServiceModel.ServiceKnownTypeAttribute(typeof(Dominio.Jugador))]
        [System.ServiceModel.ServiceKnownTypeAttribute(typeof(Dominio.Ranking[]))]
        [System.ServiceModel.ServiceKnownTypeAttribute(typeof(Dominio.Ranking))]
        [System.ServiceModel.ServiceKnownTypeAttribute(typeof(Dominio.Reporte[]))]
        [System.ServiceModel.ServiceKnownTypeAttribute(typeof(Dominio.Reporte))]
        [System.ServiceModel.ServiceKnownTypeAttribute(typeof(Contratos.LoginResult))]
        [System.ServiceModel.ServiceKnownTypeAttribute(typeof(Contratos.SaveResult))]
        [System.ServiceModel.ServiceKnownTypeAttribute(typeof(Contratos.VerificationResult))]
        [System.ServiceModel.ServiceKnownTypeAttribute(typeof(Contratos.MailResult))]
        [System.ServiceModel.ServiceKnownTypeAttribute(typeof(Contratos.PinResult))]
        [System.ServiceModel.ServiceKnownTypeAttribute(typeof(Contratos.PasswordChangeResult))]
        [System.ServiceModel.ServiceKnownTypeAttribute(typeof(Contratos.DataObtainedResult))]
        [System.ServiceModel.ServiceKnownTypeAttribute(typeof(Contratos.RankingResult))]
        [System.ServiceModel.ServiceKnownTypeAttribute(typeof(Contratos.AdminReportResult))]
        [System.ServiceModel.ServiceKnownTypeAttribute(typeof(Contratos.BanResult))]
        [System.ServiceModel.ServiceKnownTypeAttribute(typeof(Contratos.CheckersGameMode))]
        [System.ServiceModel.ServiceKnownTypeAttribute(typeof(Contratos.Checker[][]))]
        [System.ServiceModel.ServiceKnownTypeAttribute(typeof(Contratos.Checker[]))]
        [System.ServiceModel.ServiceKnownTypeAttribute(typeof(Contratos.Checker))]
        [System.ServiceModel.ServiceKnownTypeAttribute(typeof(Contratos.MatchmakingResult))]
        [System.ServiceModel.ServiceKnownTypeAttribute(typeof(Contratos.ReportSaveResult))]
        void GetMatchmakingResult(Contratos.MatchmakingResult result, Contratos.Match match, int playerNumber);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IGameManager/UpdateMatchNumber")]
        void UpdateMatchNumber(int newMatchNumber);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IGameManager/RecieveGameMessage")]
        void RecieveGameMessage(string message, int playerNumber);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IGameManager/ReportResult")]
        void ReportResult(Contratos.ReportSaveResult reportSaveResult);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IGameManager/EndAbandonedGame")]
        void EndAbandonedGame();
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IGameManagerChannel : ServerTests.MainService.IGameManager, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class GameManagerClient : System.ServiceModel.DuplexClientBase<ServerTests.MainService.IGameManager>, ServerTests.MainService.IGameManager {
        
        public GameManagerClient(System.ServiceModel.InstanceContext callbackInstance) : 
                base(callbackInstance) {
        }
        
        public GameManagerClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName) : 
                base(callbackInstance, endpointConfigurationName) {
        }
        
        public GameManagerClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, string remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public GameManagerClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public GameManagerClient(System.ServiceModel.InstanceContext callbackInstance, System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, binding, remoteAddress) {
        }
        
        public void CreateMatch(Dominio.Jugador currentPlayer, Contratos.CheckersGameMode gameMode) {
            base.Channel.CreateMatch(currentPlayer, gameMode);
        }
        
        public System.Threading.Tasks.Task CreateMatchAsync(Dominio.Jugador currentPlayer, Contratos.CheckersGameMode gameMode) {
            return base.Channel.CreateMatchAsync(currentPlayer, gameMode);
        }
        
        public void Player1Turn(Contratos.Checker[][] updateBoardMatrix, int matchNumber, int playerTwoCheckers, int playerOneCheckers) {
            base.Channel.Player1Turn(updateBoardMatrix, matchNumber, playerTwoCheckers, playerOneCheckers);
        }
        
        public System.Threading.Tasks.Task Player1TurnAsync(Contratos.Checker[][] updateBoardMatrix, int matchNumber, int playerTwoCheckers, int playerOneCheckers) {
            return base.Channel.Player1TurnAsync(updateBoardMatrix, matchNumber, playerTwoCheckers, playerOneCheckers);
        }
        
        public void Player2Turn(Contratos.Checker[][] updateBoardMatrix, int matchNumber, int playerTwoCheckers, int playerOneCheckers) {
            base.Channel.Player2Turn(updateBoardMatrix, matchNumber, playerTwoCheckers, playerOneCheckers);
        }
        
        public System.Threading.Tasks.Task Player2TurnAsync(Contratos.Checker[][] updateBoardMatrix, int matchNumber, int playerTwoCheckers, int playerOneCheckers) {
            return base.Channel.Player2TurnAsync(updateBoardMatrix, matchNumber, playerTwoCheckers, playerOneCheckers);
        }
        
        public void FinishPlayerGame(int matchNumber, int playerNumber, int playerTwoCheckers, int playerOneCheckers) {
            base.Channel.FinishPlayerGame(matchNumber, playerNumber, playerTwoCheckers, playerOneCheckers);
        }
        
        public System.Threading.Tasks.Task FinishPlayerGameAsync(int matchNumber, int playerNumber, int playerTwoCheckers, int playerOneCheckers) {
            return base.Channel.FinishPlayerGameAsync(matchNumber, playerNumber, playerTwoCheckers, playerOneCheckers);
        }
        
        public void SendGameMessage(int playerNumber, string message, int matchNumber) {
            base.Channel.SendGameMessage(playerNumber, message, matchNumber);
        }
        
        public System.Threading.Tasks.Task SendGameMessageAsync(int playerNumber, string message, int matchNumber) {
            return base.Channel.SendGameMessageAsync(playerNumber, message, matchNumber);
        }
        
        public void ReportPlayer(int playerNumberReporting, int matchNumber, string reportText) {
            base.Channel.ReportPlayer(playerNumberReporting, matchNumber, reportText);
        }
        
        public System.Threading.Tasks.Task ReportPlayerAsync(int playerNumberReporting, int matchNumber, string reportText) {
            return base.Channel.ReportPlayerAsync(playerNumberReporting, matchNumber, reportText);
        }
        
        public void LeaveMatch(int matchNumber, int playerNumber) {
            base.Channel.LeaveMatch(matchNumber, playerNumber);
        }
        
        public System.Threading.Tasks.Task LeaveMatchAsync(int matchNumber, int playerNumber) {
            return base.Channel.LeaveMatchAsync(matchNumber, playerNumber);
        }
    }
}