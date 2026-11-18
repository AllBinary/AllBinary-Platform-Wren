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
import "./CurrentlyPressedTouchButtonSingleton" for CurrentlyPressedTouchButtonSingleton

class CurrentlyPressedTouchButtonSingletonDebug is CurrentlyPressedTouchButtonSingleton {
    static instanceC {
    if (__instanceC_set == null) {
      __instanceC_set = true
      __instanceC = CurrentlyPressedTouchButtonSingletonDebug.new()
    }
    return __instanceC
  }
  static instanceC=(value) {
    __instanceC_set = true
    __instanceC = value
  }
  string { _string }
  string=(value) { _string = value }
  listString { _listString }
  listString=(value) { _listString = value }
  appendText { _appendText }
  appendText=(value) { _appendText = value }
  PRESSED_AND_FIRED { _PRESSED_AND_FIRED }
  PRESSED_AND_FIRED=(value) { _PRESSED_AND_FIRED = value }
  PRESSED_AND_NOT_FIRED { _PRESSED_AND_NOT_FIRED }
  PRESSED_AND_NOT_FIRED=(value) { _PRESSED_AND_NOT_FIRED = value }
  ASSOCIATED_RELEASED_AND_FIRED { _ASSOCIATED_RELEASED_AND_FIRED }
  ASSOCIATED_RELEASED_AND_FIRED=(value) { _ASSOCIATED_RELEASED_AND_FIRED = value }
  RELEASED_AND_FIRED { _RELEASED_AND_FIRED }
  RELEASED_AND_FIRED=(value) { _RELEASED_AND_FIRED = value }
  RELEASED_AND_FIRED_2 { _RELEASED_AND_FIRED_2 }
  RELEASED_AND_FIRED_2=(value) { _RELEASED_AND_FIRED_2 = value }
  RELEASED_AND_NOT_FIRED { _RELEASED_AND_NOT_FIRED }
  RELEASED_AND_NOT_FIRED=(value) { _RELEASED_AND_NOT_FIRED = value }

  initFields_CurrentlyPressedTouchButtonSingletonDebug() {
    _string = null
    _listString = null
    _appendText = null
    _PRESSED_AND_FIRED = null
    _PRESSED_AND_NOT_FIRED = null
    _ASSOCIATED_RELEASED_AND_FIRED = null
    _RELEASED_AND_FIRED = null
    _RELEASED_AND_FIRED_2 = null
    _RELEASED_AND_NOT_FIRED = null
        _string = StringUtil.getInstance().EMPTY_STRING
        _listString = StringUtil.getInstance().EMPTY_STRING
        _appendText = StringUtil.getInstance().EMPTY_STRING
        _PRESSED_AND_FIRED = "pressed & fired"
        _PRESSED_AND_NOT_FIRED = "pressed in button but not fired"
        _ASSOCIATED_RELEASED_AND_FIRED = "assoc. rel & fired"
        _RELEASED_AND_FIRED = "rel & fired 1"
        _RELEASED_AND_FIRED_2 = "rel & fired 2"
        _RELEASED_AND_NOT_FIRED = "rel & not fired"
  }

  construct new() {
    super()
    initFields_CurrentlyPressedTouchButtonSingletonDebug()
  }
    

    static getInstance() {
        return CurrentlyPressedTouchButtonSingletonDebug.instanceC
    }
    

    appendTouchButtonInput(append, touchButtonInput) {
        var stringBuffer = StringMaker.new()
        stringBuffer.append(touchButtonInput.toString())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(append)
        _appendText = stringBuffer.toString()
        _string = StringMaker.new().append(_listString).append(_appendText).toString()
    }
    

    append(append) {
        _appendText = StringMaker.new().append(_appendText).append(append).toString()
        _string = StringMaker.new().append(_listString).append(_appendText).toString()
    }
    

    clearLog(x, y) {
        _appendText = StringMaker.new().append(GPoint.toStringStatic(x, y, 0)).append(CommonSeps.getInstance().SPACE).toString()
        _string = StringMaker.new().append(_listString).append(_appendText).toString()
    }
    

    releaseAndNotFired() {
        this.append(_RELEASED_AND_NOT_FIRED)
    }
    

    releaseAndFired(touchButtonInput) {
        this.appendTouchButtonInput(_RELEASED_AND_FIRED, touchButtonInput)
    }
    

    releaseAndFired2(touchButtonInput) {
        this.appendTouchButtonInput(_RELEASED_AND_FIRED_2, touchButtonInput)
    }
    

    releaseAndFiredAssociated(touchButtonInput) {
        this.appendTouchButtonInput(_ASSOCIATED_RELEASED_AND_FIRED, touchButtonInput)
    }
    

    pressedAndFired(touchButtonInput) {
        this.appendTouchButtonInput(_PRESSED_AND_FIRED, touchButtonInput)
    }
    

    pressedAndNotFired(touchButtonInput) {
        this.appendTouchButtonInput(_PRESSED_AND_NOT_FIRED, touchButtonInput)
    }
    

    removeAt(index) {
        var touchButtonInput = super.removeAt(index)
        _listString = this.list.toString()
        _string = StringMaker.new().append(_listString).append(_appendText).toString()
        return touchButtonInput
    }
    

    remove(touchButtonInput) {
        var isRemoved = super.remove(touchButtonInput)
        _listString = this.list.toString()
        _string = StringMaker.new().append(_listString).append(_appendText).toString()
        return isRemoved
    }
    

    add(touchButtonInput) {
        super.add(touchButtonInput)
        _listString = this.list.toString()
        _string = StringMaker.new().append(_listString).append(_appendText).toString()
    }
    

    toString() {
        return _string
    }
}

import "../../../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "./TouchButtonInput" for TouchButtonInput

