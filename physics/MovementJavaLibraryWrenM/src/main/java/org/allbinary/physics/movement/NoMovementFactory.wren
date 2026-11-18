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
// package org.allbinary.physics.movement

import "../../../../allbinary_java" for JObject, JException, JR

class NoMovementFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = NoMovementFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  movement { _movement }
  movement=(value) { _movement = value }

  initFields_NoMovementFactory() {
    _movement = null
        _movement = Movement.new()
  }

  construct new() {
    super()
    initFields_NoMovementFactory()
  }
    

    static getInstance() {
        return NoMovementFactory.instance
    }
    

    getMovmentInstance() {
        return _movement
    }
}

import "./Movement" for Movement

