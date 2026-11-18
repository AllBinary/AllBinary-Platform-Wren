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
// package org.allbinary.direction

import "../../../allbinary_java" for JObject, JException, JR

class DirectionUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = DirectionUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  directionArray { _directionArray }
  directionArray=(value) { _directionArray = value }
  directionArray2 { _directionArray2 }
  directionArray2=(value) { _directionArray2 = value }

  initFields_DirectionUtil() {
    _directionArray = null
    _directionArray2 = null
        _directionArray = List.filled(10, null)
        _directionArray2 = List.filled(10, null)
  }
    

    static getInstance() {
        return DirectionUtil.instance
    }
    

    construct new() {
    super()
    initFields_DirectionUtil()
        var angleFactory = AngleFactory.getInstance()
        var directionFactory = DirectionFactory.getInstance()
        _directionArray[directionFactory.LEFT.getValue()] = angleFactory.LEFT
        _directionArray[directionFactory.RIGHT.getValue()] = angleFactory.RIGHT
        _directionArray[directionFactory.UP.getValue()] = angleFactory.UP
        _directionArray[directionFactory.DOWN.getValue()] = angleFactory.DOWN
        _directionArray2[directionFactory.LEFT.getValue()] = angleFactory.LEFT
        _directionArray2[directionFactory.RIGHT.getValue()] = angleFactory.RIGHT
        _directionArray2[directionFactory.UP.getValue()] = angleFactory.UP
        _directionArray2[directionFactory.DOWN.getValue()] = angleFactory.DOWN
    }
    

    getAngle(direction) {
        return _directionArray2[direction.getValue()]
    }
    

    getFrameAngle(direction) {
        return _directionArray[direction.getValue()]
    }
}

import "../../../org/allbinary/math/Angle" for Angle
import "../../../org/allbinary/math/AngleFactory" for AngleFactory
import "./DirectionFactory" for DirectionFactory
import "./Direction" for Direction

