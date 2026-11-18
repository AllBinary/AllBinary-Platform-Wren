/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// package org.allbinary.game.input.mapping

import "../../../../../allbinary_java" for JObject, JException, JR

//GameInputNoPersistanceLibrary
class PersistentInputMapping is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = NullUtil.getInstance().NULL_OBJECT
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  enumerationUtil { _enumerationUtil }
  enumerationUtil=(value) { _enumerationUtil = value }
  inputMapping { _inputMapping }
  inputMapping=(value) { _inputMapping = value }
  inputMappingEventListenerInterface { _inputMappingEventListenerInterface }
  inputMappingEventListenerInterface=(value) { _inputMappingEventListenerInterface = value }
  inputPersistance { _inputPersistance }
  inputPersistance=(value) { _inputPersistance = value }
  inputMappingEvent { _inputMappingEvent }
  inputMappingEvent=(value) { _inputMappingEvent = value }

  initFields_PersistentInputMapping() {
    _logUtil = null
    _commonStrings = null
    _enumerationUtil = null
    _inputMapping = null
    _inputMappingEventListenerInterface = null
    _inputPersistance = null
    _inputMappingEvent = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _enumerationUtil = EnumerationUtil.getInstance()
        _inputMapping = InputToGameKeyMapping.new()
        _inputMappingEventListenerInterface = NullInputMappingEventListener.NULL_INPUT_MAPPING_EVENT_LISTENER
        
        _inputMappingEvent = InputMappingEvent.new(this)
  }
    

    static getNullInstance() {
        if ((PersistentInputMapping.instance == NullUtil.getInstance().NULL_OBJECT)) {
            PersistentInputMapping.instance = PersistentInputMapping.new(GamePersistanceStrings.getInstance().SAVED_INPUT_CONFIGURATION_RECORD_ID)
        }
        return PersistentInputMapping.instance
    }
    

    construct new(name) {
    super()
    initFields_PersistentInputMapping()
        _inputPersistance = InputPersistance.new(name)
    }
    

    getTotalMapped() {
        return this.getInputMapping().getHashtable().size()
    }
    

    isDefaultNew() {
        return false
    }
    

    getDefault() {
        return InputToGameKeyMapping.getNullInstance()
    }
    

    setDefault(abeClientInformation) {
        this.getInputMapping().removeAll()
        this.getInputMapping().addMapping(this.getDefault())
        this.save(abeClientInformation)
    }
    

    update(abeClientInformation) {
        _inputPersistance.deleteAll(abeClientInformation)
        this.save(abeClientInformation)
    }
    

    save(abeClientInformation) {
        _inputPersistance.save(abeClientInformation, this.getInputMapping().getHashtable())
        _inputMappingEvent.setInputToGameKeyMapping(this.getInputMapping())
        if ((this.getInputMappingEventListenerInterface() != null)) {
            this.getInputMappingEventListenerInterface().onInputMappingEvent(_inputMappingEvent)
        }
    }
    

    init(abeClientInformation) {
        _logUtil.putF(_commonStrings.START, this, _commonStrings.INIT)
        var jerror0 = Fiber.new {
            _inputPersistance.loadAll(abeClientInformation)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            PreLogUtil.putOE(_commonStrings.EXCEPTION, this, _commonStrings.INIT, e)
            _inputPersistance.deleteRecoreStore(abeClientInformation)
            this.setDefault(abeClientInformation)
            _inputPersistance.loadAll(abeClientInformation)
        }
        var list = _inputPersistance.getList()
        var totalMappedTo = 0
        var size = list.size()
        var hashtable = null
        var enumeration = null
        var mappedToInput = null
        var gameActionInput = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            hashtable = list.objectArray[index]
            enumeration = hashtable.keys()
            while (_enumerationUtil.hasMoreElements(enumeration)) {
                mappedToInput = _enumerationUtil.nextElement(enumeration)
                gameActionInput = hashtable.get(mappedToInput)
                totalMappedTo = JR.i32(totalMappedTo + 1)
                this.getInputMapping().add(gameActionInput, mappedToInput)
            }
            }
        }
        var stringBuffer = StringMaker.new()
        stringBuffer.append("End - Total Loaded Keys Mapped: ")
        stringBuffer.appendint(this.getTotalMapped())
        stringBuffer.append(" to: ")
        stringBuffer.appendint(totalMappedTo)
        _logUtil.putF(stringBuffer.toString(), this, _commonStrings.INIT)
    }
    

    setInputMappingEventListenerInterface(inputMappingEventListenerInterface) {
        _inputMappingEventListenerInterface = inputMappingEventListenerInterface
    }
    

    getInputMappingEventListenerInterface() {
        return _inputMappingEventListenerInterface
    }
    

    getInputMapping() {
        return _inputMapping
    }
    

    isDelete(input) {
        Fiber.abort(JR.exception("Exception", _commonStrings.NOT_IMPLEMENTED))
    }
    

    isSystemInput(input) {
        Fiber.abort(JR.exception("Exception", _commonStrings.NOT_IMPLEMENTED))
    }
}

import "../../../../../java/util/Enumeration" for Enumeration
import "../../../../../org/allbinary/game/configuration/persistance/GamePersistanceStrings" for GamePersistanceStrings
import "../../../../../org/allbinary/game/input/Input" for Input
import "../../../../../org/allbinary/game/input/InputPersistance" for InputPersistance
import "../../../../../org/allbinary/game/input/mapping/event/InputMappingEvent" for InputMappingEvent
import "../../../../../org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface" for InputMappingEventListenerInterface
import "../../../../../org/allbinary/game/input/mapping/event/NullInputMappingEventListener" for NullInputMappingEventListener
import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/EnumerationUtil" for EnumerationUtil
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "./InputToGameKeyMapping" for InputToGameKeyMapping

