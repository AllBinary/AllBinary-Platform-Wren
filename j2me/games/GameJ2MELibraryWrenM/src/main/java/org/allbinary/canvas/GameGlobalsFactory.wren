/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.canvas

import "../../../allbinary_java" for JObject, JException, JR

class GameGlobalsFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GameGlobalsFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  newCanvas { _newCanvas }
  newCanvas=(value) { _newCanvas = value }
  newDisplaybleTime { _newDisplaybleTime }
  newDisplaybleTime=(value) { _newDisplaybleTime = value }
  point { _point }
  point=(value) { _point = value }

  initFields_GameGlobalsFactory() {
    _newCanvas = false
    _newDisplaybleTime = 0
    _point = null
        _newCanvas = true
        _newDisplaybleTime = Integer.MIN_VALUE
        _point = PointFactory.getInstance().ZERO_ZERO
  }

  construct new() {
    super()
    initFields_GameGlobalsFactory()
  }
    

    static getInstance() {
        return GameGlobalsFactory.instance
    }
}

import "../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../java/lang/Integer" for Integer

