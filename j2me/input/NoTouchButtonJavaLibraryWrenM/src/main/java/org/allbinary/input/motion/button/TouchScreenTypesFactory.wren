/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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

class TouchScreenTypesFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = TouchScreenTypesFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  FINGER { _FINGER }
  FINGER=(value) { _FINGER = value }
  NOTOUCH { _NOTOUCH }
  NOTOUCH=(value) { _NOTOUCH = value }
  STYLUS { _STYLUS }
  STYLUS=(value) { _STYLUS = value }
  UNDEFINED { _UNDEFINED }
  UNDEFINED=(value) { _UNDEFINED = value }

  initFields_TouchScreenTypesFactory() {
    _FINGER = null
    _NOTOUCH = null
    _STYLUS = null
    _UNDEFINED = null
        _FINGER = TouchScreenType.new("Finger")
        _NOTOUCH = TouchScreenType.new("No Touch")
        _STYLUS = TouchScreenType.new("Stylus")
        _UNDEFINED = TouchScreenType.new("Undefined")
  }

  construct new() {
    super()
    initFields_TouchScreenTypesFactory()
  }
    

    static getInstance() {
        return TouchScreenTypesFactory.instance
    }
}

import "./TouchScreenType" for TouchScreenType

