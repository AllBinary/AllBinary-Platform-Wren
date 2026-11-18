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
// package org.allbinary.input.gyro

import "../../../../allbinary_java" for JObject, JException, JR

class OrientationMotionGestureFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = NullUtil.getInstance().NULL_OBJECT
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  LEFT { _LEFT }
  LEFT=(value) { _LEFT = value }
  RIGHT { _RIGHT }
  RIGHT=(value) { _RIGHT = value }
  UP { _UP }
  UP=(value) { _UP = value }
  DOWN { _DOWN }
  DOWN=(value) { _DOWN = value }
  ROLL_LEFT { _ROLL_LEFT }
  ROLL_LEFT=(value) { _ROLL_LEFT = value }
  ROLL_RIGHT { _ROLL_RIGHT }
  ROLL_RIGHT=(value) { _ROLL_RIGHT = value }

  initFields_OrientationMotionGestureFactory() {
    _LEFT = null
    _RIGHT = null
    _UP = null
    _DOWN = null
    _ROLL_LEFT = null
    _ROLL_RIGHT = null
        
        
        
        
        
        
  }
    

    static getInstance() {
        if ((OrientationMotionGestureFactory.instance == NullUtil.getInstance().NULL_OBJECT)) {
            OrientationMotionGestureFactory.instance = OrientationMotionGestureFactory.new()
        }
        return OrientationMotionGestureFactory.instance
    }
    

    construct new() {
    super()
    initFields_OrientationMotionGestureFactory()
        var MAX = InputFactory.getInstance().MAX
        _LEFT = MotionGestureInput.new(JR.i32(MAX - 20), "Left Orient")
        _RIGHT = MotionGestureInput.new(JR.i32(MAX - 21), "Right Orient")
        _UP = MotionGestureInput.new(JR.i32(MAX - 22), "Up Orient")
        _DOWN = MotionGestureInput.new(JR.i32(MAX - 23), "Down Orient")
        _ROLL_LEFT = MotionGestureInput.new(JR.i32(MAX - 24), "Roll Left")
        _ROLL_RIGHT = MotionGestureInput.new(JR.i32(MAX - 25), "Roll Right")
    }
}

import "../../../../org/allbinary/game/input/InputFactory" for InputFactory
import "../../../../org/allbinary/input/motion/gesture/MotionGestureInput" for MotionGestureInput
import "../../../../org/allbinary/logic/NullUtil" for NullUtil

