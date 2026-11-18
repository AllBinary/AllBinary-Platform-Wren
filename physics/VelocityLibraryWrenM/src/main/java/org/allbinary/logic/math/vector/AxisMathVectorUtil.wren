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
// package org.allbinary.logic.math.vector

import "../../../../../allbinary_java" for JObject, JException, JR

class AxisMathVectorUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = AxisMathVectorUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  noDecimalTrigTable { _noDecimalTrigTable }
  noDecimalTrigTable=(value) { _noDecimalTrigTable = value }

  initFields_AxisMathVectorUtil() {
    _noDecimalTrigTable = null
        _noDecimalTrigTable = NoDecimalTrigTable.getInstance()
  }

  construct new() {
    super()
    initFields_AxisMathVectorUtil()
  }
    

    static getInstance() {
        return AxisMathVectorUtil.instance
    }
    

    calculateX(magnitude, angle) {
        return ((magnitude * _noDecimalTrigTable.cos(angle)) / 10)
    }
    

    calculateY(magnitude, angle) {
        return ((magnitude * _noDecimalTrigTable.sin(angle)) / 10)
    }
    

    calculateZ(magnitude, otherAngle) {
        return ((magnitude * _noDecimalTrigTable.sin(otherAngle)) / 10)
    }
}

import "../../../../../org/allbinary/math/NoDecimalTrigTable" for NoDecimalTrigTable

