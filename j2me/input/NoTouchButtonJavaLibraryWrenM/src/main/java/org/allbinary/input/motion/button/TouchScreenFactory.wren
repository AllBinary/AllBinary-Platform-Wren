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
  multiTouch { _multiTouch }
  multiTouch=(value) { _multiTouch = value }
  touch { _touch }
  touch=(value) { _touch = value }
  touchScreenType { _touchScreenType }
  touchScreenType=(value) { _touchScreenType = value }

  initFields_TouchScreenFactory() {
    _multiTouch = false
    _touch = false
    _touchScreenType = null
        _multiTouch = false
        _touch = false
        _touchScreenType = TouchScreenTypesFactory.getInstance().NOTOUCH
  }
    

    construct new() {
    super()
    initFields_TouchScreenFactory()
    }
    

    static getInstance() {
        return TouchScreenFactory.SINGLETON
    }
    

    isMultiTouch() {
        return _multiTouch
    }
    

    setTouch(touch) {
    }
    

    isTouch() {
        return _touch
    }
    

    getTouchScreenType() {
        return _touchScreenType
    }
}

import "./TouchScreenTypesFactory" for TouchScreenTypesFactory
import "./TouchScreenType" for TouchScreenType

