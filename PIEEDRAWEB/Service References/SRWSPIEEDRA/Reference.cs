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
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="SRWSPIEEDRA.WsPIEEDRASoap")]
    public interface WsPIEEDRASoap {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/AutenticaUser", ReplyAction="*")]
        PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserResponse AutenticaUser(PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserRequest request);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/AutenticaUser", ReplyAction="*")]
        System.Threading.Tasks.Task<PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserResponse> AutenticaUserAsync(PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserRequest request);
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class AutenticaUserRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="AutenticaUser", Namespace="http://tempuri.org/", Order=0)]
        public PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserRequestBody Body;
        
        public AutenticaUserRequest() {
        }
        
        public AutenticaUserRequest(PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class AutenticaUserRequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string usuario;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=1)]
        public string password;
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=2)]
        public int _resultado;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=3)]
        public string _mensaje;
        
        public AutenticaUserRequestBody() {
        }
        
        public AutenticaUserRequestBody(string usuario, string password, int _resultado, string _mensaje) {
            this.usuario = usuario;
            this.password = password;
            this._resultado = _resultado;
            this._mensaje = _mensaje;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class AutenticaUserResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="AutenticaUserResponse", Namespace="http://tempuri.org/", Order=0)]
        public PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserResponseBody Body;
        
        public AutenticaUserResponse() {
        }
        
        public AutenticaUserResponse(PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class AutenticaUserResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=0)]
        public bool AutenticaUserResult;
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=1)]
        public int _resultado;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=2)]
        public string _mensaje;
        
        public AutenticaUserResponseBody() {
        }
        
        public AutenticaUserResponseBody(bool AutenticaUserResult, int _resultado, string _mensaje) {
            this.AutenticaUserResult = AutenticaUserResult;
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
        
        public bool AutenticaUser(string usuario, string password, ref int _resultado, ref string _mensaje) {
            PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserRequest inValue = new PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserRequest();
            inValue.Body = new PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserRequestBody();
            inValue.Body.usuario = usuario;
            inValue.Body.password = password;
            inValue.Body._resultado = _resultado;
            inValue.Body._mensaje = _mensaje;
            PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserResponse retVal = ((PIEEDRAWEB.SRWSPIEEDRA.WsPIEEDRASoap)(this)).AutenticaUser(inValue);
            _resultado = retVal.Body._resultado;
            _mensaje = retVal.Body._mensaje;
            return retVal.Body.AutenticaUserResult;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        System.Threading.Tasks.Task<PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserResponse> PIEEDRAWEB.SRWSPIEEDRA.WsPIEEDRASoap.AutenticaUserAsync(PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserRequest request) {
            return base.Channel.AutenticaUserAsync(request);
        }
        
        public System.Threading.Tasks.Task<PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserResponse> AutenticaUserAsync(string usuario, string password, int _resultado, string _mensaje) {
            PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserRequest inValue = new PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserRequest();
            inValue.Body = new PIEEDRAWEB.SRWSPIEEDRA.AutenticaUserRequestBody();
            inValue.Body.usuario = usuario;
            inValue.Body.password = password;
            inValue.Body._resultado = _resultado;
            inValue.Body._mensaje = _mensaje;
            return ((PIEEDRAWEB.SRWSPIEEDRA.WsPIEEDRASoap)(this)).AutenticaUserAsync(inValue);
        }
    }
}
