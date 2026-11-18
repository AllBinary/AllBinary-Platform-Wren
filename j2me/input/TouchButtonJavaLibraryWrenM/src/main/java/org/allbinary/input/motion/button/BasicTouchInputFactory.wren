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
// package org.allbinary.input.motion.button

import "../../../../../allbinary_java" for JObject, JException, JR

class BasicTouchInputFactory is JObject {
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
  SPECIAL_BUTTON_SEVEN_TESTING_ONLY { _SPECIAL_BUTTON_SEVEN_TESTING_ONLY }
  SPECIAL_BUTTON_SEVEN_TESTING_ONLY=(value) { _SPECIAL_BUTTON_SEVEN_TESTING_ONLY = value }
  SPECIAL_BUTTON_EIGHT_TESTING_ONLY { _SPECIAL_BUTTON_EIGHT_TESTING_ONLY }
  SPECIAL_BUTTON_EIGHT_TESTING_ONLY=(value) { _SPECIAL_BUTTON_EIGHT_TESTING_ONLY = value }
  SPECIAL_BUTTON_SIX { _SPECIAL_BUTTON_SIX }
  SPECIAL_BUTTON_SIX=(value) { _SPECIAL_BUTTON_SIX = value }
  SPECIAL_BUTTON_FIVE { _SPECIAL_BUTTON_FIVE }
  SPECIAL_BUTTON_FIVE=(value) { _SPECIAL_BUTTON_FIVE = value }
  SPECIAL_BUTTON_FOUR { _SPECIAL_BUTTON_FOUR }
  SPECIAL_BUTTON_FOUR=(value) { _SPECIAL_BUTTON_FOUR = value }
  SPECIAL_BUTTON_THREE { _SPECIAL_BUTTON_THREE }
  SPECIAL_BUTTON_THREE=(value) { _SPECIAL_BUTTON_THREE = value }
  SPECIAL_BUTTON_TWO { _SPECIAL_BUTTON_TWO }
  SPECIAL_BUTTON_TWO=(value) { _SPECIAL_BUTTON_TWO = value }
  SPECIAL_BUTTON_ONE { _SPECIAL_BUTTON_ONE }
  SPECIAL_BUTTON_ONE=(value) { _SPECIAL_BUTTON_ONE = value }
  UP { _UP }
  UP=(value) { _UP = value }
  LEFT { _LEFT }
  LEFT=(value) { _LEFT = value }
  RIGHT { _RIGHT }
  RIGHT=(value) { _RIGHT = value }
  DOWN { _DOWN }
  DOWN=(value) { _DOWN = value }
  NONE { _NONE }
  NONE=(value) { _NONE = value }
  initialized { _initialized }
  initialized=(value) { _initialized = value }
  list { _list }
  list=(value) { _list = value }

  initFields_BasicTouchInputFactory() {
    _logUtil = null
    _SPECIAL_BUTTON_SEVEN_TESTING_ONLY = null
    _SPECIAL_BUTTON_EIGHT_TESTING_ONLY = null
    _SPECIAL_BUTTON_SIX = null
    _SPECIAL_BUTTON_FIVE = null
    _SPECIAL_BUTTON_FOUR = null
    _SPECIAL_BUTTON_THREE = null
    _SPECIAL_BUTTON_TWO = null
    _SPECIAL_BUTTON_ONE = null
    _UP = null
    _LEFT = null
    _RIGHT = null
    _DOWN = null
    _NONE = null
    _initialized = false
    _list = null
        _logUtil = LogUtil.getInstance()
        
        
        
        
        
        
        
        
        
        
        
        
        
        _initialized = false
        _list = BasicArrayListD.new()
  }
    

    static getInstance() {
        if ((BasicTouchInputFactory.instance == NullUtil.getInstance().NULL_OBJECT)) {
            BasicTouchInputFactory.instance = BasicTouchInputFactory.new()
        }
        return BasicTouchInputFactory.instance
    }
    

    construct new() {
    super()
    initFields_BasicTouchInputFactory()
        var MAX = InputFactory.getInstance().MAX
        _SPECIAL_BUTTON_SEVEN_TESTING_ONLY = TouchButtonInput.new(JR.i32(MAX - 41), "Button 7 - Testing Only May Cross Over Key Values")
        _SPECIAL_BUTTON_EIGHT_TESTING_ONLY = TouchButtonInput.new(JR.i32(MAX - 42), "Button 8 - Testing Only May Cross Over Key Values")
        _SPECIAL_BUTTON_SIX = TouchButtonInput.new(JR.i32(MAX - 30), "Button 6")
        _SPECIAL_BUTTON_FIVE = TouchButtonInput.new(JR.i32(MAX - 31), "Button 5")
        _SPECIAL_BUTTON_FOUR = TouchButtonInput.new(JR.i32(MAX - 32), "Button 4")
        _SPECIAL_BUTTON_THREE = TouchButtonInput.new(JR.i32(MAX - 33), "Button 3")
        _SPECIAL_BUTTON_TWO = TouchButtonInput.new(JR.i32(MAX - 34), "Button 2")
        _SPECIAL_BUTTON_ONE = TouchButtonInput.new(JR.i32(MAX - 35), "Button 1")
        _UP = TouchButtonInput.new(JR.i32(MAX - 36), "Up Button")
        _LEFT = TouchButtonInput.new(JR.i32(MAX - 37), "Left Button")
        _RIGHT = TouchButtonInput.new(JR.i32(MAX - 38), "Right Button")
        _DOWN = TouchButtonInput.new(JR.i32(MAX - 39), "Down Button")
        _NONE = TouchButtonInput.new(JR.i32(MAX - 40), "No Button")
    }
    

    init(inputToGameKeyMapping) {
        if (!_initialized) {
            _initialized = true
            _list.add(_UP)
            _list.add(_LEFT)
            _list.add(_RIGHT)
            _list.add(_DOWN)
            _list.add(_SPECIAL_BUTTON_TWO)
            _list.add(_SPECIAL_BUTTON_FOUR)
            _list.add(_SPECIAL_BUTTON_THREE)
            _list.add(_SPECIAL_BUTTON_ONE)
            _list.add(_SPECIAL_BUTTON_FIVE)
            _list.add(_SPECIAL_BUTTON_SIX)
            _list.add(_SPECIAL_BUTTON_SIX)
            _list.add(_SPECIAL_BUTTON_SEVEN_TESTING_ONLY)
            _list.add(_SPECIAL_BUTTON_EIGHT_TESTING_ONLY)
            this.updateAllFromList(_list, inputToGameKeyMapping)
        }
    }
    

    updateAll(inputToGameKeyMapping) {
        this.updateAllFromList(_list, inputToGameKeyMapping)
    }
    

    updateAllFromList(list, inputToGameKeyMapping) {
        _logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().START_LABEL).appendint(list.size()).toString(), this, "updateAll")
        var touchButtonInput = null
        if (true) {
            var index = JR.i32(list.size() - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            touchButtonInput = list.objectArray[index]
            touchButtonInput.update(inputToGameKeyMapping)
            }
        }
    }
    

    getList() {
        return _list
    }
}

import "../../../../../org/allbinary/game/input/InputFactory" for InputFactory
import "../../../../../org/allbinary/game/input/mapping/InputToGameKeyMapping" for InputToGameKeyMapping
import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./TouchButtonInput" for TouchButtonInput

