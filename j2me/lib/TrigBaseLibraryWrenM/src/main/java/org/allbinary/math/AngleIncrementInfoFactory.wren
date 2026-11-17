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

class AngleIncrementInfoFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = AngleIncrementInfoFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  angleIncrementInfo { _angleIncrementInfo }
  angleIncrementInfo=(value) { _angleIncrementInfo = value }

  initFields_AngleIncrementInfoFactory() {
    _angleIncrementInfo = null
        _angleIncrementInfo = List.filled(JR.i32(AngleFactory.getInstance().TOTAL_ANGLE), null)
  }

  construct new() {
    super()
    initFields_AngleIncrementInfoFactory()
  }
    

    static getInstance() {
        return AngleIncrementInfoFactory.instance
    }
    

    getAt(angleIncrement) {
        var halfAngleIncrement = (JR.shr(JR.i32(angleIncrement), 1))
        var angleIncrementInfo = null
        var angleIncrementInfoCanBeNull = _angleIncrementInfo[halfAngleIncrement]
        if ((angleIncrementInfoCanBeNull == null)) {
            angleIncrementInfo = AngleIncrementInfo.new(angleIncrement)
            _angleIncrementInfo[halfAngleIncrement] = angleIncrementInfo
            return angleIncrementInfo
        } else {
            angleIncrementInfo = angleIncrementInfoCanBeNull
        }
        return angleIncrementInfo
    }
}

import "./AngleIncrementInfo" for AngleIncrementInfo
import "./AngleFactory" for AngleFactory

