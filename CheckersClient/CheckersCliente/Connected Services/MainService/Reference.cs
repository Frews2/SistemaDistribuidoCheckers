﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CheckersCliente.MainService {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="Jugador", Namespace="http://schemas.datacontract.org/2004/07/Dominio")]
    [System.SerializableAttribute()]
    public partial class Jugador : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string ApodoField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string ContraseniaField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string CorreoElectronicoField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int IdCreadorField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int IdJugadorField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string PinConfirmacionField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string PreguntaRecuperacionField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string RespuestaConfirmacionField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string StatusField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Apodo {
            get {
                return this.ApodoField;
            }
            set {
                if ((object.ReferenceEquals(this.ApodoField, value) != true)) {
                    this.ApodoField = value;
                    this.RaisePropertyChanged("Apodo");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Contrasenia {
            get {
                return this.ContraseniaField;
            }
            set {
                if ((object.ReferenceEquals(this.ContraseniaField, value) != true)) {
                    this.ContraseniaField = value;
                    this.RaisePropertyChanged("Contrasenia");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string CorreoElectronico {
            get {
                return this.CorreoElectronicoField;
            }
            set {
                if ((object.ReferenceEquals(this.CorreoElectronicoField, value) != true)) {
                    this.CorreoElectronicoField = value;
                    this.RaisePropertyChanged("CorreoElectronico");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int IdCreador {
            get {
                return this.IdCreadorField;
            }
            set {
                if ((this.IdCreadorField.Equals(value) != true)) {
                    this.IdCreadorField = value;
                    this.RaisePropertyChanged("IdCreador");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int IdJugador {
            get {
                return this.IdJugadorField;
            }
            set {
                if ((this.IdJugadorField.Equals(value) != true)) {
                    this.IdJugadorField = value;
                    this.RaisePropertyChanged("IdJugador");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string PinConfirmacion {
            get {
                return this.PinConfirmacionField;
            }
            set {
                if ((object.ReferenceEquals(this.PinConfirmacionField, value) != true)) {
                    this.PinConfirmacionField = value;
                    this.RaisePropertyChanged("PinConfirmacion");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string PreguntaRecuperacion {
            get {
                return this.PreguntaRecuperacionField;
            }
            set {
                if ((object.ReferenceEquals(this.PreguntaRecuperacionField, value) != true)) {
                    this.PreguntaRecuperacionField = value;
                    this.RaisePropertyChanged("PreguntaRecuperacion");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string RespuestaConfirmacion {
            get {
                return this.RespuestaConfirmacionField;
            }
            set {
                if ((object.ReferenceEquals(this.RespuestaConfirmacionField, value) != true)) {
                    this.RespuestaConfirmacionField = value;
                    this.RaisePropertyChanged("RespuestaConfirmacion");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Status {
            get {
                return this.StatusField;
            }
            set {
                if ((object.ReferenceEquals(this.StatusField, value) != true)) {
                    this.StatusField = value;
                    this.RaisePropertyChanged("Status");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="LoginResult", Namespace="http://schemas.datacontract.org/2004/07/Contratos")]
    public enum LoginResult : int {
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        PasswordIncorrecto = 1,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        NoExisteJugador = 2,
        
        [System.Runtime.Serialization.EnumMemberAttribute()]
        ExisteJugador = 3,
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="MainService.ILoginManager", CallbackContract=typeof(CheckersCliente.MainService.ILoginManagerCallback))]
    public interface ILoginManager {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/ILoginManager/Login")]
        void Login(CheckersCliente.MainService.Jugador jugador);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/ILoginManager/Login")]
        System.Threading.Tasks.Task LoginAsync(CheckersCliente.MainService.Jugador jugador);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ILoginManagerCallback {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/ILoginManager/GetLoginResult")]
        void GetLoginResult(CheckersCliente.MainService.LoginResult resultado);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ILoginManagerChannel : CheckersCliente.MainService.ILoginManager, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class LoginManagerClient : System.ServiceModel.DuplexClientBase<CheckersCliente.MainService.ILoginManager>, CheckersCliente.MainService.ILoginManager {
        
        public LoginManagerClient(System.ServiceModel.InstanceContext callbackInstance) : 
                base(callbackInstance) {
        }
        
        public LoginManagerClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName) : 
                base(callbackInstance, endpointConfigurationName) {
        }
        
        public LoginManagerClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, string remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public LoginManagerClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public LoginManagerClient(System.ServiceModel.InstanceContext callbackInstance, System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, binding, remoteAddress) {
        }
        
        public void Login(CheckersCliente.MainService.Jugador jugador) {
            base.Channel.Login(jugador);
        }
        
        public System.Threading.Tasks.Task LoginAsync(CheckersCliente.MainService.Jugador jugador) {
            return base.Channel.LoginAsync(jugador);
        }
    }
}