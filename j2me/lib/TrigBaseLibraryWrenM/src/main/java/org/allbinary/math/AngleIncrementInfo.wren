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

class AngleIncrementInfo is JObject {
    static INCREMENT {
    if (__INCREMENT_set == null) {
      __INCREMENT_set = true
      __INCREMENT = "Inc: "
    }
    return __INCREMENT
  }
  static INCREMENT=(value) {
    __INCREMENT_set = true
    __INCREMENT = value
  }
  angleIncrement { _angleIncrement }
  angleIncrement=(value) { _angleIncrement = value }
  DOWN_FRAME { _DOWN_FRAME }
  DOWN_FRAME=(value) { _DOWN_FRAME = value }
  UP_FRAME { _UP_FRAME }
  UP_FRAME=(value) { _UP_FRAME = value }
  LEFT_FRAME { _LEFT_FRAME }
  LEFT_FRAME=(value) { _LEFT_FRAME = value }
  RIGHT_FRAME { _RIGHT_FRAME }
  RIGHT_FRAME=(value) { _RIGHT_FRAME = value }
  frameUtil { _frameUtil }
  frameUtil=(value) { _frameUtil = value }

  initFields_AngleIncrementInfo() {
    _angleIncrement = 0
    _DOWN_FRAME = null
    _UP_FRAME = null
    _LEFT_FRAME = null
    _RIGHT_FRAME = null
    _frameUtil = null
        
        
        
        
        
        _frameUtil = FrameUtil.getInstance()
  }
    

    construct new(angleIncrement) {
    super()
    initFields_AngleIncrementInfo()
        _angleIncrement = angleIncrement
        var angleFactory = AngleFactory.getInstance()
        var smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        _DOWN_FRAME = smallIntegerSingletonFactory.getAt((angleFactory.DOWN.getValue() / _angleIncrement))
        _UP_FRAME = smallIntegerSingletonFactory.getAt(JR.i32(angleFactory.UP.getValue()))
        _LEFT_FRAME = smallIntegerSingletonFactory.getAt((angleFactory.LEFT.getValue() / _angleIncrement))
        _RIGHT_FRAME = smallIntegerSingletonFactory.getAt((angleFactory.RIGHT.getValue() / _angleIncrement))
    }
    

    getFrameAngle(frame) {
        return _frameUtil.getFrameAngle(frame, JR.i32(_angleIncrement))
    }
    

    getAngleIncrement() {
        return _angleIncrement
    }
    

    toString() {
        return StringMaker.new().append(AngleIncrementInfo.INCREMENT).appendshort(_angleIncrement).toString()
    }
    

    getClosestGeneralDirection(angle) {
        var closestDirection = SmallIntegerSingletonFactory.getInstance().getAt(360)
        if (((_UP_FRAME.intValue() - angle) < (closestDirection.intValue() - angle))) {
            closestDirection = _UP_FRAME
        }
        if (((_DOWN_FRAME.intValue() - angle) < (closestDirection.intValue() - angle))) {
            closestDirection = _DOWN_FRAME
        }
        if (((_LEFT_FRAME.intValue() - angle) < (closestDirection.intValue() - angle))) {
            closestDirection = _LEFT_FRAME
        }
        if (((_RIGHT_FRAME.intValue() - angle) < (closestDirection.intValue() - angle))) {
            closestDirection = _RIGHT_FRAME
        }
        return closestDirection.intValue()
    }
}

import "../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../java/lang/Integer" for Integer
import "./AngleFactory" for AngleFactory
import "./FrameUtil" for FrameUtil

