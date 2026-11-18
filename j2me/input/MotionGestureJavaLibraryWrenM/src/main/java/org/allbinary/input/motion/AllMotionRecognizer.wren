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

class AllMotionRecognizer is MotionRecognizer {
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
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  motionGestureRecognizer { _motionGestureRecognizer }
  motionGestureRecognizer=(value) { _motionGestureRecognizer = value }
  touchButtonProcessing { _touchButtonProcessing }
  touchButtonProcessing=(value) { _touchButtonProcessing = value }
  touchButtonRecognizer { _touchButtonRecognizer }
  touchButtonRecognizer=(value) { _touchButtonRecognizer = value }
  id { _id }
  id=(value) { _id = value }
  lastX { _lastX }
  lastX=(value) { _lastX = value }
  lastY { _lastY }
  lastY=(value) { _lastY = value }

  initFields_AllMotionRecognizer() {
    _logUtil = null
    _motionGestureRecognizer = null
    _touchButtonProcessing = false
    _touchButtonRecognizer = null
    _id = 0
    _lastX = 0
    _lastY = 0
        _logUtil = LogUtil.getInstance()
        
        _touchButtonProcessing = false
        
        
        _lastX = 0
        _lastY = 0
  }
    

    construct new() {
    super()
    initFields_AllMotionRecognizer()
        _id = Fn.new {
var jold = AllMotionRecognizer.index
AllMotionRecognizer.index = JR.i32(jold + 1)
return jold
}.call()
        _motionGestureRecognizer = MotionGestureRecognizer.new(_id)
        _touchButtonRecognizer = TouchButtonRecognizer.new()
    }
    

    processStartMotionEvent(x, y, deviceId, modifiers) {
        if (_touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId)) {
            _touchButtonProcessing = true
        }
        if (!_touchButtonProcessing) {
            var point = AllMotionRecognizer.pointCircularPool.getNextInstance()
            point.setX(x)
            point.setY(y)
            _motionGestureRecognizer.processPressedMotionEvent(point, deviceId, modifiers)
        }
    }
    

    processEndMotionEvent(x, y, deviceId, modifiers) {
        if (_touchButtonRecognizer.releaseTouchButtonInput(x, y, deviceId)) {
        }
        if (!_touchButtonProcessing) {
            var point = AllMotionRecognizer.pointCircularPool.getNextInstance()
            point.setX(x)
            point.setY(y)
            _motionGestureRecognizer.processReleasedMotionEvent(point, deviceId, modifiers)
        }
        if (_touchButtonProcessing) {
            _touchButtonProcessing = false
        }
    }
    

    processDraggedMotionEvent(x, y, deviceId, modifiers) {
        if (_touchButtonProcessing) {
            _touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId)
        }
        if (!_touchButtonProcessing) {
            var point = AllMotionRecognizer.pointCircularPool.getNextInstance()
            point.setX(x)
            point.setY(y)
            _motionGestureRecognizer.processDraggedMotionEvent(point, deviceId, modifiers)
        }
    }
    

    processMovedMotionEvent(x, y, deviceId, modifiers) {
        if (((x != _lastX) || (y != _lastY))) {
            _lastX = x
            _lastY = y
            var point = AllMotionRecognizer.pointCircularPool.getNextInstance()
            point.setX(x)
            point.setY(y)
            _motionGestureRecognizer.processMovedMotionEvent(point, deviceId, modifiers)
        }
    }
    

    processScrolledMotionEvent(x, y, deviceId, modifiers) {
        var point = AllMotionRecognizer.pointCircularPool.getNextInstance()
        point.setX(x)
        point.setY(y)
        _motionGestureRecognizer.processScrolledMotionEvent(point, deviceId, modifiers)
    }
    

    getMotionGestureRecognizer() {
        return _motionGestureRecognizer
    }
}

import "../../../../org/allbinary/graphics/CustomGPoint" for CustomGPoint
import "../../../../org/allbinary/graphics/GPointCircularPool" for GPointCircularPool
import "../../../../org/allbinary/input/motion/button/TouchButtonRecognizer" for TouchButtonRecognizer
import "../../../../org/allbinary/input/motion/gesture/MotionGestureRecognizer" for MotionGestureRecognizer
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil

