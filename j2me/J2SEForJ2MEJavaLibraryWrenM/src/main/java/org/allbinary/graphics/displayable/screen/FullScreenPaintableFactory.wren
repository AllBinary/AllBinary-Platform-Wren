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
// package org.allbinary.graphics.displayable.screen

import "../../../../../allbinary_java" for JObject, JException, JR

class FullScreenPaintableFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = FullScreenPaintableFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  paintable { _paintable }
  paintable=(value) { _paintable = value }

  initFields_FullScreenPaintableFactory() {
    _paintable = null
        _paintable = NullPaintable.getInstance()
  }

  construct new() {
    super()
    initFields_FullScreenPaintableFactory()
  }
    

    static getInstance() {
        return FullScreenPaintableFactory.instance
    }
}

import "../../../../../org/allbinary/graphics/paint/NullPaintable" for NullPaintable
import "../../../../../org/allbinary/graphics/paint/Paintable" for Paintable

