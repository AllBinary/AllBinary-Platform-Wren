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
// package org.allbinary.game.input

import "../../../../allbinary_java" for JObject, JException, JR

class InputFactory is JObject {
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
  KEY_CODE_LABEL { _KEY_CODE_LABEL }
  KEY_CODE_LABEL=(value) { _KEY_CODE_LABEL = value }
  DEVICE_ID_LABEL { _DEVICE_ID_LABEL }
  DEVICE_ID_LABEL=(value) { _DEVICE_ID_LABEL = value }
  MAX { _MAX }
  MAX=(value) { _MAX = value }
  inputIntegerArray { _inputIntegerArray }
  inputIntegerArray=(value) { _inputIntegerArray = value }
  NO_INPUT { _NO_INPUT }
  NO_INPUT=(value) { _NO_INPUT = value }

  initFields_InputFactory() {
    _logUtil = null
    _commonStrings = null
    _KEY_CODE_LABEL = null
    _DEVICE_ID_LABEL = null
    _MAX = 0
    _inputIntegerArray = null
    _NO_INPUT = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _KEY_CODE_LABEL = "KeyCode: "
        _DEVICE_ID_LABEL = "DeviceId: "
        _MAX = SmallIntegerSingletonFactory.getInstance().getMin()
        _inputIntegerArray = List.filled(_MAX, null)
        _NO_INPUT = Input.new(0, _commonStrings.UNKNOWN)
  }
    

    static getInstance() {
        if ((InputFactory.instance == NullUtil.getInstance().NULL_OBJECT)) {
            InputFactory.instance = InputFactory.new()
        }
        return InputFactory.instance
    }
    

    construct new() {
    super()
    initFields_InputFactory()
        var size = _inputIntegerArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            _inputIntegerArray[index] = _NO_INPUT
            }
        }
    }
    

    add(id, input) {
        _inputIntegerArray[id] = input
    }
    

    getInstanceById(id) {
        if ((id < 0)) {
            id = -id
        }
        if ((id > _inputIntegerArray.count)) {
            _logUtil.putF(StringMaker.new().append("Warning id: ").appendint(id).toString(), this, _commonStrings.GET_INSTANCE)
            return _NO_INPUT
        }
        return _inputIntegerArray[id]
    }
}

import "../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./Input" for Input

