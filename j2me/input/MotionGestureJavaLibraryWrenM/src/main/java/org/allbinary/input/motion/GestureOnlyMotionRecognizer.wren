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
// package org.allbinary.input.motion

import "../../../../allbinary_java" for JObject, JException, JR
import "./MotionRecognizer" for MotionRecognizer

class GestureOnlyMotionRecognizer is MotionRecognizer {
    static index {
    if (__index_set == null) {
      __index_set = true
      __index = 0
    }
    return __index
  }
  static index=(value) {
    __index_set = true
    __index = value
  }
    static pointCircularPool {
    if (__pointCircularPool_set == null) {
      __pointCircularPool_set = true
      __pointCircularPool = GPointCircularPool.new(40)
    }
    return __pointCircularPool
  }
  static pointCircularPool=(value) {
    __pointCircularPool_set = true
    __pointCircularPool = value
  }
  motionGestureRecognizer { _motionGestureRecognizer }
  motionGestureRecognizer=(value) { _motionGestureRecognizer = value }
  id { _id }
  id=(value) { _id = value }

  initFields_GestureOnlyMotionRecognizer() {
    _motionGestureRecognizer = null
    _id = 0
        
        
  }
    

    construct new() {
    super()
    initFields_GestureOnlyMotionRecognizer()
        _id = Fn.new {
var jold = GestureOnlyMotionRecognizer.index
GestureOnlyMotionRecognizer.index = JR.i32(jold + 1)
return jold
}.call()
        _motionGestureRecognizer = MotionGestureRecognizer.new(_id)
    }
    

    processStartMotionEvent(x, y, deviceId, modifiers) {
        var point = GestureOnlyMotionRecognizer.pointCircularPool.getNextInstance()
        point.setX(x)
        point.setY(y)
        _motionGestureRecognizer.processPressedMotionEvent(point, deviceId, modifiers)
    }
    

    processEndMotionEvent(x, y, deviceId, modifiers) {
        var point = GestureOnlyMotionRecognizer.pointCircularPool.getNextInstance()
        point.setX(x)
        point.setY(y)
        _motionGestureRecognizer.processReleasedMotionEvent(point, deviceId, modifiers)
    }
    

    processDraggedMotionEvent(x, y, deviceId, modifiers) {
        var point = GestureOnlyMotionRecognizer.pointCircularPool.getNextInstance()
        point.setX(x)
        point.setY(y)
        _motionGestureRecognizer.processDraggedMotionEvent(point, deviceId, modifiers)
    }
}

import "../../../../org/allbinary/graphics/CustomGPoint" for CustomGPoint
import "../../../../org/allbinary/graphics/GPointCircularPool" for GPointCircularPool
import "../../../../org/allbinary/input/motion/gesture/MotionGestureRecognizer" for MotionGestureRecognizer

