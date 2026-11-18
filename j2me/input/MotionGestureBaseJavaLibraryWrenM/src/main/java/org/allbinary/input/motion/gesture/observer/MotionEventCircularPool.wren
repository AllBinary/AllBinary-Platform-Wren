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
// package org.allbinary.input.motion.gesture.observer

import "../../../../../../allbinary_java" for JObject, JException, JR

class MotionEventCircularPool is JObject {
  MIN { _MIN }
  MIN=(value) { _MIN = value }
  eventPool { _eventPool }
  eventPool=(value) { _eventPool = value }

  initFields_MotionEventCircularPool() {
    _MIN = 0
    _eventPool = null
        _MIN = TouchMotionGestureFactory.getInstance().LAST_MOTION.getId()
        _eventPool = AllBinaryEventCircularPool.new((((InputFactory.getInstance().MAX - 1)) - _MIN))
  }
    

    static createPool(id) {
        return MotionEventCircularPool.new(id)
    }
    

    construct new(id) {
    super()
    initFields_MotionEventCircularPool()
        _eventPool.initAllBinaryEventCircularPool(MotionEventFactory.new(_eventPool, id))
    }
    

    getInstance(motionGestureInput) {
        return _eventPool.getInstance((motionGestureInput.getId() - _MIN))
    }
}

import "../../../../../../org/allbinary/game/input/InputFactory" for InputFactory
import "../../../../../../org/allbinary/input/motion/gesture/MotionGestureInput" for MotionGestureInput
import "../../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory" for TouchMotionGestureFactory
import "../../../../../../org/allbinary/logic/util/event/AllBinaryEventCircularPool" for AllBinaryEventCircularPool
import "./MotionEventFactory" for MotionEventFactory
import "./MotionGestureEvent" for MotionGestureEvent

