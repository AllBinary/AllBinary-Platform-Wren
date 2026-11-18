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
// package org.allbinary.graphics

import "../../../allbinary_java" for JObject, JException, JR

class GraphicsStrings is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GraphicsStrings.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  ANIMATION { _ANIMATION }
  ANIMATION=(value) { _ANIMATION = value }
  ANGLE { _ANGLE }
  ANGLE=(value) { _ANGLE = value }
  MOVEMENT_ANGLE { _MOVEMENT_ANGLE }
  MOVEMENT_ANGLE=(value) { _MOVEMENT_ANGLE = value }
  ROTATION { _ROTATION }
  ROTATION=(value) { _ROTATION = value }
  OPACITY { _OPACITY }
  OPACITY=(value) { _OPACITY = value }
  HTML { _HTML }
  HTML=(value) { _HTML = value }
  WIDTH { _WIDTH }
  WIDTH=(value) { _WIDTH = value }
  HEIGHT { _HEIGHT }
  HEIGHT=(value) { _HEIGHT = value }

  initFields_GraphicsStrings() {
    _ANIMATION = null
    _ANGLE = null
    _MOVEMENT_ANGLE = null
    _ROTATION = null
    _OPACITY = null
    _HTML = null
    _WIDTH = null
    _HEIGHT = null
        _ANIMATION = "animation"
        _ANGLE = "angle"
        _MOVEMENT_ANGLE = "movement_angle"
        _ROTATION = "rotation"
        _OPACITY = "opacity"
        _HTML = "HTML"
        _WIDTH = "width"
        _HEIGHT = "height"
  }

  construct new() {
    super()
    initFields_GraphicsStrings()
  }
    

    static getInstance() {
        return GraphicsStrings.instance
    }
}


