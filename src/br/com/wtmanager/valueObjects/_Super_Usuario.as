/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Usuario.as.
 */

package br.com.wtmanager.valueObjects
{
import br.com.wtmanager.valueObjects.Atividade;
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_Usuario extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("br.com.wt.entities.Usuario") == null)
            {
                flash.net.registerClassAlias("br.com.wt.entities.Usuario", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("br.com.wt.entities.Usuario", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        br.com.wtmanager.valueObjects.Atividade.initRemoteClassAliasSingleChild();
        br.com.wtmanager.valueObjects.Usuario.initRemoteClassAliasSingleChild();
        br.com.wtmanager.valueObjects.Tempo.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _UsuarioEntityMetadata;
    model_internal var _changedObjects:mx.collections.ArrayCollection = new ArrayCollection();

    public function getChangedObjects() : Array
    {
        _changedObjects.addItemAt(this,0);
        return _changedObjects.source;
    }

    public function clearChangedObjects() : void
    {
        _changedObjects.removeAll();
    }

    /**
     * properties
     */
    private var _internal_id : int;
    private var _internal_atividadeList : ArrayCollection;
    model_internal var _internal_atividadeList_leaf:br.com.wtmanager.valueObjects.Atividade;
    private var _internal_dataCriacao : Date;
    private var _internal_chave : String;
    private var _internal_nome : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Usuario()
    {
        _model = new _UsuarioEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get id() : int
    {
        return _internal_id;
    }

    [Bindable(event="propertyChange")]
    public function get atividadeList() : ArrayCollection
    {
        return _internal_atividadeList;
    }

    [Bindable(event="propertyChange")]
    public function get dataCriacao() : Date
    {
        return _internal_dataCriacao;
    }

    [Bindable(event="propertyChange")]
    public function get chave() : String
    {
        return _internal_chave;
    }

    [Bindable(event="propertyChange")]
    public function get nome() : String
    {
        return _internal_nome;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set id(value:int) : void
    {
        var oldValue:int = _internal_id;
        if (oldValue !== value)
        {
            _internal_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id", oldValue, _internal_id));
        }
    }

    public function set atividadeList(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_atividadeList;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_atividadeList = value;
            }
            else if (value is Array)
            {
                _internal_atividadeList = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_atividadeList = null;
            }
            else
            {
                throw new Error("value of atividadeList must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "atividadeList", oldValue, _internal_atividadeList));
        }
    }

    public function set dataCriacao(value:Date) : void
    {
        var oldValue:Date = _internal_dataCriacao;
        if (oldValue !== value)
        {
            _internal_dataCriacao = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dataCriacao", oldValue, _internal_dataCriacao));
        }
    }

    public function set chave(value:String) : void
    {
        var oldValue:String = _internal_chave;
        if (oldValue !== value)
        {
            _internal_chave = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "chave", oldValue, _internal_chave));
        }
    }

    public function set nome(value:String) : void
    {
        var oldValue:String = _internal_nome;
        if (oldValue !== value)
        {
            _internal_nome = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nome", oldValue, _internal_nome));
        }
    }

    /**
     * Data/source property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */


    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();
        var validationFailureMessages:Array = new Array();

        var propertyValidity:Boolean = true;

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
    }

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
        var oldValue:Boolean = model_internal::_isValid;
        if (oldValue !== value)
        {
            model_internal::_isValid = value;
            _model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }
    }

    /**
     * derived property getters
     */

    [Transient]
    [Bindable(event="propertyChange")]
    public function get _model() : _UsuarioEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _UsuarioEntityMetadata) : void
    {
        var oldValue : _UsuarioEntityMetadata = model_internal::_dminternal_model;
        if (oldValue !== value)
        {
            model_internal::_dminternal_model = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }
    }

    /**
     * methods
     */


    /**
     *  services
     */
    private var _managingService:com.adobe.fiber.services.IFiberManagingService;

    public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
    {
        _managingService = managingService;
    }

    model_internal function set invalidConstraints_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_invalidConstraints;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;
            _model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);
        }
    }

    model_internal function set validationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_validationFailureMessages;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;
            _model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);
        }
    }


}

}
