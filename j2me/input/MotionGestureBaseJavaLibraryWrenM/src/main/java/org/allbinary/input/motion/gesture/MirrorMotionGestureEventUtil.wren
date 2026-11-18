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

class MirrorMotionGestureEventUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = MirrorMotionGestureEventUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  motionEventCircularPool { _motionEventCircularPool }
  motionEventCircularPool=(value) { _motionEventCircularPool = value }

  initFields_MirrorMotionGestureEventUtil() {
    _motionEventCircularPool = null
        
  }
    

    construct new() {
    super()
    initFields_MirrorMotionGestureEventUtil()
        _motionEventCircularPool = MotionEventCircularPool.createPool(Integer.MAX_VALUE)
    }
    

    mirrorVerticle(motionGestureEvent, halfWidth) {
        var event = _motionEventCircularPool.getInstance(motionGestureEvent.getMotionGesture())
        var previousNewX = this.getNewX(motionGestureEvent.getPreviousPoint().getX(), halfWidth)
        var currentNewX = this.getNewX(motionGestureEvent.getCurrentPoint().getX(), halfWidth)
        var pointFactory = PointFactory.getInstance()
        var mirroredPreviousPoint = pointFactory.createXY(previousNewX, motionGestureEvent.getPreviousPoint().getY())
        var mirroredCurrentPoint = pointFactory.createXY(currentNewX, motionGestureEvent.getCurrentPoint().getY())
        event.setPreviousPoint(mirroredPreviousPoint)
        event.setCurrentPoint(mirroredCurrentPoint)
        return event
    }
    

    getNewX(x, halfWidth) {
        var newX = 0
        if ((x > halfWidth)) {
            newX = JR.i32(halfWidth - (JR.i32(x - halfWidth)))
        } else {
            newX = JR.i32(halfWidth + (JR.i32(halfWidth - x)))
        }
        return newX
    }
    

    static getInstance() {
        return MirrorMotionGestureEventUtil.instance
    }
}

import "../../../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../../../org/allbinary/input/motion/gesture/observer/MotionEventCircularPool" for MotionEventCircularPool
import "../../../../../org/allbinary/input/motion/gesture/observer/MotionGestureEvent" for MotionGestureEvent
import "../../../../../java/lang/Integer" for Integer

