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
// package org.allbinary.math

import "../../../allbinary_java" for JObject, JException, JR

class PositionStrings is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = PositionStrings.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  X { _X }
  X=(value) { _X = value }
  Y { _Y }
  Y=(value) { _Y = value }
  X_LABEL { _X_LABEL }
  X_LABEL=(value) { _X_LABEL = value }
  Y_LABEL { _Y_LABEL }
  Y_LABEL=(value) { _Y_LABEL = value }
  Z_LABEL { _Z_LABEL }
  Z_LABEL=(value) { _Z_LABEL = value }
  DX_LABEL { _DX_LABEL }
  DX_LABEL=(value) { _DX_LABEL = value }
  DY_LABEL { _DY_LABEL }
  DY_LABEL=(value) { _DY_LABEL = value }
  DZ_LABEL { _DZ_LABEL }
  DZ_LABEL=(value) { _DZ_LABEL = value }

  initFields_PositionStrings() {
    _X = null
    _Y = null
    _X_LABEL = null
    _Y_LABEL = null
    _Z_LABEL = null
    _DX_LABEL = null
    _DY_LABEL = null
    _DZ_LABEL = null
        _X = "x"
        _Y = "y"
        _X_LABEL = "x: "
        _Y_LABEL = "y: "
        _Z_LABEL = "z: "
        _DX_LABEL = "dx: "
        _DY_LABEL = "dy: "
        _DZ_LABEL = "dz: "
  }

  construct new() {
    super()
    initFields_PositionStrings()
  }
    

    static getInstance() {
        return PositionStrings.instance
    }
}


