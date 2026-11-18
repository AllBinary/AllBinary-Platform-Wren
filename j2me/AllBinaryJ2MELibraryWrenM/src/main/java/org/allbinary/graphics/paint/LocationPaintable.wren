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
// package org.allbinary.graphics.paint

import "../../../../allbinary_java" for JObject, JException, JR

class LocationPaintable is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = LocationPaintable.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_LocationPaintable() {
  }

  construct new() {
    super()
    initFields_LocationPaintable()
  }
    

    static getInstance() {
        return LocationPaintable.instance
    }
    

    paintXY(graphics, x, y) {
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "./LocationPaintableInterface" for LocationPaintableInterface

