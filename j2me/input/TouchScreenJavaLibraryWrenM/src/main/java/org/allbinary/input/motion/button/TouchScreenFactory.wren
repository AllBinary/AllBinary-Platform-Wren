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

class TouchScreenFactory is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = TouchScreenFactory.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  touch { _touch }
  touch=(value) { _touch = value }
  multiTouch { _multiTouch }
  multiTouch=(value) { _multiTouch = value }
  multiTouchDistinct { _multiTouchDistinct }
  multiTouchDistinct=(value) { _multiTouchDistinct = value }
  touchScreenType { _touchScreenType }
  touchScreenType=(value) { _touchScreenType = value }

  initFields_TouchScreenFactory() {
    _logUtil = null
    _touch = false
    _multiTouch = false
    _multiTouchDistinct = false
    _touchScreenType = null
        _logUtil = LogUtil.getInstance()
        _touch = false
        _multiTouch = false
        _multiTouchDistinct = false
        _touchScreenType = TouchScreenTypesFactory.getInstance().NOTOUCH
  }
    

    construct new() {
    super()
    initFields_TouchScreenFactory()
        var jerror0 = Fiber.new {
            this.setTouch(true)
            this.setMultiTouch(false)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, TouchScreenFactory.SINGLETON, commonStrings.GET_INSTANCE, e)
        }
    }
    

    static getInstance() {
        return TouchScreenFactory.SINGLETON
    }
    

    setMultiTouch(multiTouch) {
        _multiTouch = multiTouch
    }
    

    isMultiTouch() {
        return _multiTouch
    }
    

    setTouch(touch) {
        _touch = touch
    }
    

    isTouch() {
        return _touch
    }
    

    setMultiTouchDistinct(multiTouchDistinct) {
        _multiTouchDistinct = multiTouchDistinct
    }
    

    isMultiTouchDistinct() {
        return _multiTouchDistinct
    }
    

    setTouchScreenType(touchScreenType) {
        _touchScreenType = touchScreenType
    }
    

    getTouchScreenType() {
        return _touchScreenType
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append("TouchScreen: ")
        stringBuffer.appendboolean(this.isTouch())
        stringBuffer.append(" MultiTouch: ")
        stringBuffer.appendboolean(this.isMultiTouch())
        stringBuffer.append(" Distinct MultiTouch: ")
        stringBuffer.appendboolean(this.isMultiTouchDistinct())
        stringBuffer.append(" TouchScreenType: ")
        stringBuffer.append(StringUtil.getInstance().toString(this.getTouchScreenType()))
        return stringBuffer.toString()
    }
}

import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./TouchScreenTypesFactory" for TouchScreenTypesFactory
import "./TouchScreenType" for TouchScreenType

