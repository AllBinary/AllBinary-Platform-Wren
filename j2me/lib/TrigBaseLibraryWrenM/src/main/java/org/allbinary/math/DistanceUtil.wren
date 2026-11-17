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

class DistanceUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = DistanceUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  mathUtil { _mathUtil }
  mathUtil=(value) { _mathUtil = value }

  initFields_DistanceUtil() {
    _mathUtil = null
        _mathUtil = MathUtil.getInstance()
  }

  construct new() {
    super()
    initFields_DistanceUtil()
  }
    

    static getInstance() {
        return DistanceUtil.instance
    }
    

    getDistance(x1, y1, x2, y2) {
        var dx = JR.i32(x1 - x2)
        var dy = JR.i32(y1 - y2)
        return JR.i32(_mathUtil.sqrt(JR.i32((JR.i32(dx * dx)) + (JR.i32(dy * dy)))))
    }
}

import "../../../org/allbinary/logic/math/MathUtil" for MathUtil

