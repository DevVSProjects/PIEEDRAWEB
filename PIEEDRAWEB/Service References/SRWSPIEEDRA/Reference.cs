﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PIEEDRAWEB.SRWSPIEEDRA {
    using System.Data;
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="SRWSPIEEDRA.WsPIEEDRASoap")]
    public interface WsPIEEDRASoap {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/AutenticaUser", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserResponse AutenticaUser(PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserRequest request);
        
        // CODEGEN: Generating message contract since the operation has multiple return values.
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/AutenticaUser", ReplyAction="*")]
        System.Threading.Tasks.Task<PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserResponse> AutenticaUserAsync(PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserRequest request);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/RegistraUser", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        PIEEDRAWEB.SRWSPIEEDRA.RegistraUserResponse RegistraUser(PIEEDRAWEB.SRWSPIEEDRA.RegistraUserRequest request);
        
        // CODEGEN: Generating message contract since the operation has multiple return values.
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/RegistraUser", ReplyAction="*")]
        System.Threading.Tasks.Task<PIEEDRAWEB.SRWSPIEEDRA.RegistraUserResponse> RegistraUserAsync(PIEEDRAWEB.SRWSPIEEDRA.RegistraUserRequest request);
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.MessageContractAttribute(WrapperName="AutenticaUser", WrapperNamespace="http://tempuri.org/", IsWrapped=true)]
    public partial class AutenticaUserRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=0)]
        public string usuario;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=1)]
        public string password;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=2)]
        public int _resultado;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=3)]
        public string _mensaje;
        
        public AutenticaUserRequest() {
        }
        
        public AutenticaUserRequest(string usuario, string password, int _resultado, string _mensaje) {
            this.usuario = usuario;
            this.password = password;
            this._resultado = _resultado;
            this._mensaje = _mensaje;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.MessageContractAttribute(WrapperName="AutenticaUserResponse", WrapperNamespace="http://tempuri.org/", IsWrapped=true)]
    public partial class AutenticaUserResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=0)]
        public System.Data.DataSet AutenticaUserResult;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=1)]
        public int _resultado;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=2)]
        public string _mensaje;
        
        public AutenticaUserResponse() {
        }
        
        public AutenticaUserResponse(System.Data.DataSet AutenticaUserResult, int _resultado, string _mensaje) {
            this.AutenticaUserResult = AutenticaUserResult;
            this._resultado = _resultado;
            this._mensaje = _mensaje;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.MessageContractAttribute(WrapperName="RegistraUser", WrapperNamespace="http://tempuri.org/", IsWrapped=true)]
    public partial class RegistraUserRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=0)]
        public string usuario;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=1)]
        public string password;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=2)]
        public string email;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=3)]
        public string nombre;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=4)]
        public string apellidos;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=5)]
        public string ciudad;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=6)]
        public string genero;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=7)]
        public string atencion;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=8)]
        public string ambito;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=9)]
        public int _resultado;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=10)]
        public string _mensaje;
        
        public RegistraUserRequest() {
        }
        
        public RegistraUserRequest(string usuario, string password, string email, string nombre, string apellidos, string ciudad, string genero, string atencion, string ambito, int _resultado, string _mensaje) {
            this.usuario = usuario;
            this.password = password;
            this.email = email;
            this.nombre = nombre;
            this.apellidos = apellidos;
            this.ciudad = ciudad;
            this.genero = genero;
            this.atencion = atencion;
            this.ambito = ambito;
            this._resultado = _resultado;
            this._mensaje = _mensaje;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.MessageContractAttribute(WrapperName="RegistraUserResponse", WrapperNamespace="http://tempuri.org/", IsWrapped=true)]
    public partial class RegistraUserResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=0)]
        public bool RegistraUserResult;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=1)]
        public int _resultado;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=2)]
        public string _mensaje;
        
        public RegistraUserResponse() {
        }
        
        public RegistraUserResponse(bool RegistraUserResult, int _resultado, string _mensaje) {
            this.RegistraUserResult = RegistraUserResult;
            this._resultado = _resultado;
            this._mensaje = _mensaje;
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface WsPIEEDRASoapChannel : PIEEDRAWEB.SRWSPIEEDRA.WsPIEEDRASoap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class WsPIEEDRASoapClient : System.ServiceModel.ClientBase<PIEEDRAWEB.SRWSPIEEDRA.WsPIEEDRASoap>, PIEEDRAWEB.SRWSPIEEDRA.WsPIEEDRASoap {
        
        public WsPIEEDRASoapClient() {
        }
        
        public WsPIEEDRASoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public WsPIEEDRASoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public WsPIEEDRASoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public WsPIEEDRASoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserResponse PIEEDRAWEB.SRWSPIEEDRA.WsPIEEDRASoap.AutenticaUser(PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserRequest request) {
            return base.Channel.AutenticaUser(request);
        }
        
        public System.Data.DataSet AutenticaUser(string usuario, string password, ref int _resultado, ref string _mensaje) {
            PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserRequest inValue = new PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserRequest();
            inValue.usuario = usuario;
            inValue.password = password;
            inValue._resultado = _resultado;
            inValue._mensaje = _mensaje;
            PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserResponse retVal = ((PIEEDRAWEB.SRWSPIEEDRA.WsPIEEDRASoap)(this)).AutenticaUser(inValue);
            _resultado = retVal._resultado;
            _mensaje = retVal._mensaje;
            return retVal.AutenticaUserResult;
        }
        
        public System.Threading.Tasks.Task<PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserResponse> AutenticaUserAsync(PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserRequest request) {
            return base.Channel.AutenticaUserAsync(request);
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        PIEEDRAWEB.SRWSPIEEDRA.RegistraUserResponse PIEEDRAWEB.SRWSPIEEDRA.WsPIEEDRASoap.RegistraUser(PIEEDRAWEB.SRWSPIEEDRA.RegistraUserRequest request) {
            return base.Channel.RegistraUser(request);
        }
        
        public bool RegistraUser(string usuario, string password, string email, string nombre, string apellidos, string ciudad, string genero, string atencion, string ambito, ref int _resultado, ref string _mensaje) {
            PIEEDRAWEB.SRWSPIEEDRA.RegistraUserRequest inValue = new PIEEDRAWEB.SRWSPIEEDRA.RegistraUserRequest();
            inValue.usuario = usuario;
            inValue.password = password;
            inValue.email = email;
            inValue.nombre = nombre;
            inValue.apellidos = apellidos;
            inValue.ciudad = ciudad;
            inValue.genero = genero;
            inValue.atencion = atencion;
            inValue.ambito = ambito;
            inValue._resultado = _resultado;
            inValue._mensaje = _mensaje;
            PIEEDRAWEB.SRWSPIEEDRA.RegistraUserResponse retVal = ((PIEEDRAWEB.SRWSPIEEDRA.WsPIEEDRASoap)(this)).RegistraUser(inValue);
            _resultado = retVal._resultado;
            _mensaje = retVal._mensaje;
            return retVal.RegistraUserResult;
        }
        
        public System.Threading.Tasks.Task<PIEEDRAWEB.SRWSPIEEDRA.RegistraUserResponse> RegistraUserAsync(PIEEDRAWEB.SRWSPIEEDRA.RegistraUserRequest request) {
            return base.Channel.RegistraUserAsync(request);
        }
    }
}
