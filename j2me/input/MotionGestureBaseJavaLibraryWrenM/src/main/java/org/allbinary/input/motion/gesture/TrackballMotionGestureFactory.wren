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
// package org.allbinary.input.motion.gesture

import "../../../../../allbinary_java" for JObject, JException, JR

class TrackballMotionGestureFactory is JObject {
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

  initFields_TrackballMotionGestureFactory() {
    _LEFT = null
    _RIGHT = null
    _UP = null
    _DOWN = null
        
        
        
        
  }
    

    static getInstance() {
        if ((TrackballMotionGestureFactory.instance == NullUtil.getInstance().NULL_OBJECT)) {
            TrackballMotionGestureFactory.instance = TrackballMotionGestureFactory.new()
        }
        return TrackballMotionGestureFactory.instance
    }
    

    construct new() {
    super()
    initFields_TrackballMotionGestureFactory()
        var MAX = InputFactory.getInstance().MAX
        _LEFT = MotionGestureInput.new(JR.i32(MAX - 26), "L Trackball")
        _RIGHT = MotionGestureInput.new(JR.i32(MAX - 27), "R Trackball")
        _UP = MotionGestureInput.new(JR.i32(MAX - 28), "Up Trackball")
        _DOWN = MotionGestureInput.new(JR.i32(MAX - 29), "D Trackball")
    }
}

import "../../../../../org/allbinary/game/input/InputFactory" for InputFactory
import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "./MotionGestureInput" for MotionGestureInput

