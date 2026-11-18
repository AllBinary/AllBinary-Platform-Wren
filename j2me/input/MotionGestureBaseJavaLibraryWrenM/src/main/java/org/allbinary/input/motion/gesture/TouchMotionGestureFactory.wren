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

class TouchMotionGestureFactory is JObject {
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
  PRESSED { _PRESSED }
  PRESSED=(value) { _PRESSED = value }
  RELEASED { _RELEASED }
  RELEASED=(value) { _RELEASED = value }
  DIAGONAL_DOWN_RIGHT { _DIAGONAL_DOWN_RIGHT }
  DIAGONAL_DOWN_RIGHT=(value) { _DIAGONAL_DOWN_RIGHT = value }
  DIAGONAL_DOWN_LEFT { _DIAGONAL_DOWN_LEFT }
  DIAGONAL_DOWN_LEFT=(value) { _DIAGONAL_DOWN_LEFT = value }
  DIAGONAL_UP_RIGHT { _DIAGONAL_UP_RIGHT }
  DIAGONAL_UP_RIGHT=(value) { _DIAGONAL_UP_RIGHT = value }
  DIAGONAL_UP_LEFT { _DIAGONAL_UP_LEFT }
  DIAGONAL_UP_LEFT=(value) { _DIAGONAL_UP_LEFT = value }
  SCROLL_UP { _SCROLL_UP }
  SCROLL_UP=(value) { _SCROLL_UP = value }
  SCROLL_DOWN { _SCROLL_DOWN }
  SCROLL_DOWN=(value) { _SCROLL_DOWN = value }
  NO_MOTION { _NO_MOTION }
  NO_MOTION=(value) { _NO_MOTION = value }
  LAST_MOTION { _LAST_MOTION }
  LAST_MOTION=(value) { _LAST_MOTION = value }

  initFields_TouchMotionGestureFactory() {
    _LEFT = null
    _RIGHT = null
    _UP = null
    _DOWN = null
    _PRESSED = null
    _RELEASED = null
    _DIAGONAL_DOWN_RIGHT = null
    _DIAGONAL_DOWN_LEFT = null
    _DIAGONAL_UP_RIGHT = null
    _DIAGONAL_UP_LEFT = null
    _SCROLL_UP = null
    _SCROLL_DOWN = null
    _NO_MOTION = null
    _LAST_MOTION = null
        
        
        
        
        
        
        
        
        
        
        
        
        
        
  }
    

    static getInstance() {
        if ((TouchMotionGestureFactory.instance == NullUtil.getInstance().NULL_OBJECT)) {
            TouchMotionGestureFactory.instance = TouchMotionGestureFactory.new()
        }
        return TouchMotionGestureFactory.instance
    }
    

    construct new() {
    super()
    initFields_TouchMotionGestureFactory()
        var MAX = InputFactory.getInstance().MAX
        _LEFT = MotionGestureInput.new(JR.i32(MAX - 3), "Left Touch")
        _RIGHT = MotionGestureInput.new(JR.i32(MAX - 4), "Right Touch")
        _UP = MotionGestureInput.new(JR.i32(MAX - 5), "Up Touch")
        _DOWN = MotionGestureInput.new(JR.i32(MAX - 6), "Down Touch")
        _PRESSED = MotionGestureInput.new(JR.i32(MAX - 7), "Screen Press")
        _RELEASED = MotionGestureInput.new(JR.i32(MAX - 8), "Released")
        _DIAGONAL_DOWN_RIGHT = MotionGestureInput.new(JR.i32(MAX - 9), "Diagonal Dn R")
        _DIAGONAL_DOWN_LEFT = MotionGestureInput.new(JR.i32(MAX - 10), "Diagonal Dn L")
        _DIAGONAL_UP_RIGHT = MotionGestureInput.new(JR.i32(MAX - 11), "Diagonal Up R")
        _DIAGONAL_UP_LEFT = MotionGestureInput.new(JR.i32(MAX - 12), "Diagonal Up L")
        _SCROLL_UP = MotionGestureInput.new(JR.i32(MAX - 13), "Scroll Up")
        _SCROLL_DOWN = MotionGestureInput.new(JR.i32(MAX - 14), "Scroll Down")
        _NO_MOTION = MotionGestureInput.new(JR.i32(MAX - 2), "No Motion")
        _LAST_MOTION = MotionGestureInput.new(JR.i32(MAX - 19), "Last Motion")
    }
}

import "../../../../../org/allbinary/game/input/InputFactory" for InputFactory
import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "./MotionGestureInput" for MotionGestureInput

