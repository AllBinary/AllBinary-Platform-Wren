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

class GameConfigurationTextInput is JObject {
    static hashtable {
    if (__hashtable_set == null) {
      __hashtable_set = true
      __hashtable = StdUtil.getInstance().createHashtable()
    }
    return __hashtable
  }
  static hashtable=(value) {
    __hashtable_set = true
    __hashtable = value
  }
    static SIMULATOR_IP {
    if (__SIMULATOR_IP_set == null) {
      __SIMULATOR_IP_set = true
      __SIMULATOR_IP = GameConfigurationTextInput.new("IP: ", "192.168.1.3")
    }
    return __SIMULATOR_IP
  }
  static SIMULATOR_IP=(value) {
    __SIMULATOR_IP_set = true
    __SIMULATOR_IP = value
  }
    static SIMULATOR_PORT {
    if (__SIMULATOR_PORT_set == null) {
      __SIMULATOR_PORT_set = true
      __SIMULATOR_PORT = GameConfigurationTextInput.new("Port: ", "8010")
    }
    return __SIMULATOR_PORT
  }
  static SIMULATOR_PORT=(value) {
    __SIMULATOR_PORT_set = true
    __SIMULATOR_PORT = value
  }
  label { _label }
  label=(value) { _label = value }
  text { _text }
  text=(value) { _text = value }

  initFields_GameConfigurationTextInput() {
    _label = null
    _text = null
        _label = StringUtil.getInstance().EMPTY_STRING
        _text = StringUtil.getInstance().EMPTY_STRING
  }
    

    construct new(label, text) {
    super()
    initFields_GameConfigurationTextInput()
        this.setText(text)
        this.setLabel(label)
        GameConfigurationTextInput.hashtable.put(this.getLabel(), this)
    }
    

    static update(textField) {
        var anyType = textField.getLabel()
        var gameConfigurationTextInput = GameConfigurationTextInput.hashtable.get(anyType)
        gameConfigurationTextInput.setText(textField.getString())
    }
    

    setText(text) {
        _text = text
    }
    

    getText() {
        return _text
    }
    

    setLabel(label) {
        _label = label
    }
    

    getLabel() {
        return _label
    }
    

    static getHashtable() {
        return GameConfigurationTextInput.hashtable
    }
}

import "../../../../javax/microedition/lcdui/TextField" for TextField
import "../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/util/ABHashtable" for ABHashtable

