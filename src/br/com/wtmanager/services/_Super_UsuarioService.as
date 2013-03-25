/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - UsuarioService.as.
 */
package br.com.wtmanager.services
{
import com.adobe.fiber.core.model_internal;
import br.com.wtmanager.valueObjects.Tempo;
import br.com.wtmanager.valueObjects.Usuario;
import com.adobe.fiber.services.wrapper.RemoteObjectServiceWrapper;
import com.adobe.serializers.utility.TypeUtility;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.remoting.Operation;
import mx.rpc.remoting.RemoteObject;

import mx.collections.ItemResponder;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

[ExcludeClass]
internal class _Super_UsuarioService extends com.adobe.fiber.services.wrapper.RemoteObjectServiceWrapper
{

    // Constructor
    public function _Super_UsuarioService()
    {
        // initialize service control
        _serviceControl = new mx.rpc.remoting.RemoteObject();

        // initialize RemoteClass alias for all entities returned by functions of this service
        br.com.wtmanager.valueObjects.Usuario._initRemoteClassAlias();

        var operations:Object = new Object();
        var operation:mx.rpc.remoting.Operation;

        operation = new mx.rpc.remoting.Operation(null, "adicionaTempo");
        operation.resultType = Boolean;
        operations["adicionaTempo"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getUsuario");
        operation.resultType = br.com.wtmanager.valueObjects.Usuario;
        operations["getUsuario"] = operation;

        _serviceControl.operations = operations;
        _serviceControl.convertResultHandler = com.adobe.serializers.utility.TypeUtility.convertResultHandler;
        _serviceControl.endpoint = "http://localhost:8080/WTManager/messagebroker/amfpolling";


         preInitializeService();
         model_internal::initialize();
    }
    
    //init initialization routine here, child class to override
    protected function preInitializeService():void
    {
        destination = "UsuarioService";
      
    }
    

    /**
      * This method is a generated wrapper used to call the 'adicionaTempo' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function adicionaTempo(arg0:br.com.wtmanager.valueObjects.Tempo) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("adicionaTempo");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getUsuario' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getUsuario(arg0:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getUsuario");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;
        return _internal_token;
    }
     
}

}
