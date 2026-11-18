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
// package org.allbinary.animation.transition.shake

import "../../../../../allbinary_java" for JObject, JException, JR

class ShakeEventFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ShakeEventFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  MICRO { _MICRO }
  MICRO=(value) { _MICRO = value }
  SMALL { _SMALL }
  SMALL=(value) { _SMALL = value }
  MEDIUM { _MEDIUM }
  MEDIUM=(value) { _MEDIUM = value }
  LARGE { _LARGE }
  LARGE=(value) { _LARGE = value }

  initFields_ShakeEventFactory() {
    _MICRO = null
    _SMALL = null
    _MEDIUM = null
    _LARGE = null
        _MICRO = ShakeEvent.new()
        _SMALL = ShakeEvent.new()
        _MEDIUM = ShakeEvent.new()
        _LARGE = ShakeEvent.new()
  }

  construct new() {
    super()
    initFields_ShakeEventFactory()
  }
    

    static getInstance() {
        return ShakeEventFactory.instance
    }
    

    init() {
    }
}

import "./ShakeEvent" for ShakeEvent

