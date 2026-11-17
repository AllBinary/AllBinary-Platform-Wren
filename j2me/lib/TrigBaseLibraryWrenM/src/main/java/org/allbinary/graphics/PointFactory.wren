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
// package org.allbinary.graphics

import "../../../allbinary_java" for JObject, JException, JR

class PointFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = PointFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  ZERO_ZERO { _ZERO_ZERO }
  ZERO_ZERO=(value) { _ZERO_ZERO = value }

  initFields_PointFactory() {
    _ZERO_ZERO = null
        _ZERO_ZERO = this.createXYZ(0, 0, 0)
  }
    

    static getInstance() {
        return PointFactory.instance
    }
    

    init() {
    }
    

    construct new() {
    super()
    initFields_PointFactory()
    }
    

    createXY(x, y) {
        return GPoint.new(x, y, 0)
    }
    

    createXYZ(x, y, z) {
        return GPoint.new(x, y, z)
    }
}

import "./GPoint" for GPoint

