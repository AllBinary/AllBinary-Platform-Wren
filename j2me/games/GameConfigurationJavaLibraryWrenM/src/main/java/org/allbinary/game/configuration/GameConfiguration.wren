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
// package org.allbinary.game.configuration

import "../../../../allbinary_java" for JObject, JException, JR

class GameConfiguration is JObject {
    static MIN_VALUE {
    if (__MIN_VALUE_set == null) {
      __MIN_VALUE_set = true
      __MIN_VALUE = Integer.MIN_VALUE
    }
    return __MIN_VALUE
  }
  static MIN_VALUE=(value) {
    __MIN_VALUE_set = true
    __MIN_VALUE = value
  }
  name { _name }
  name=(value) { _name = value }
  defaultValue { _defaultValue }
  defaultValue=(value) { _defaultValue = value }
  value { _value }
  value=(value) { _value = value }
  minValue { _minValue }
  minValue=(value) { _minValue = value }
  maxValue { _maxValue }
  maxValue=(value) { _maxValue = value }
  modifiable { _modifiable }
  modifiable=(value) { _modifiable = value }

  initFields_GameConfiguration() {
    _name = null
    _defaultValue = null
    _value = null
    _minValue = null
    _maxValue = null
    _modifiable = null
        _name = StringUtil.getInstance().EMPTY_STRING
        _defaultValue = SmallIntegerSingletonFactory.getInstance().getAt(0)
        _value = GameConfiguration.MIN_VALUE
        _minValue = _defaultValue
        _maxValue = _defaultValue
        _modifiable = BooleanFactory.getInstance().TRUE
  }
    

    construct new(name, defaultValue, minValue, maxValue) {
    super()
    initFields_GameConfiguration()
        this.setName(name)
        this.setDefaultValue(defaultValue)
        _value = this.getDefaultValue()
        this.setMinValue(minValue)
        this.setMaxValue(maxValue)
        GameConfigurationSingleton.getInstance().getHashtable().put(this.getName(), this)
    }
    

    setValue(value) {
        if ((_value != value)) {
            var oldValue = _value
            _value = value
            GameFeatureEventHandler.getInstance().fireEvent(GameFeatureEvent.new(this, StringMaker.new().append(_name).append(" value: from: ").appendint(JR.i32(oldValue.intValue())).append(" to ").appendint(JR.i32(_value.intValue())).toString()))
        }
    }
    

    getValue() {
        return _value
    }
    

    setMaxValue(maxValue) {
        _maxValue = maxValue
    }
    

    getMaxValue() {
        return _maxValue
    }
    

    setMinValue(minValue) {
        _minValue = minValue
    }
    

    getMinValue() {
        return _minValue
    }
    

    setName(name) {
        _name = name
    }
    

    getName() {
        return _name
    }
    

    setDefaultValue(defaultValue) {
        _defaultValue = defaultValue
    }
    

    getDefaultValue() {
        return _defaultValue
    }
    

    setDefault() {
        this.setValue(this.getDefaultValue())
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append("Name: ")
        stringBuffer.append(_name)
        stringBuffer.append(" Min: ")
        stringBuffer.appendint(JR.i32(this.getMinValue().intValue()))
        stringBuffer.append(" Max: ")
        stringBuffer.appendint(JR.i32(this.getMaxValue().intValue()))
        stringBuffer.append(" Value: ")
        stringBuffer.appendint(JR.i32(this.getValue().intValue()))
        stringBuffer.append(" Default: ")
        stringBuffer.appendint(JR.i32(this.getDefaultValue().intValue()))
        stringBuffer.append(" Modifiable: ")
        stringBuffer.appendboolean(this.isModifiable().booleanValue())
        return stringBuffer.toString()
    }
    

    setModifiable(modifiable) {
        _modifiable = modifiable
    }
    

    isModifiable() {
        return _modifiable
    }
}

import "../../../../org/allbinary/game/configuration/event/GameFeatureEvent" for GameFeatureEvent
import "../../../../org/allbinary/game/configuration/event/GameFeatureEventHandler" for GameFeatureEventHandler
import "../../../../org/allbinary/logic/java/bool/BooleanFactory" for BooleanFactory
import "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../java/lang/Integer" for Integer
import "../../../../java/lang/Boolean" for Boolean
import "./GameConfigurationSingleton" for GameConfigurationSingleton

