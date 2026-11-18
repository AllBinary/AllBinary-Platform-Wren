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

class MotionEventFactory is JObject {
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
  source { _source }
  source=(value) { _source = value }
  id { _id }
  id=(value) { _id = value }

  initFields_MotionEventFactory() {
    _source = null
    _id = 0
        
        
  }
    

    construct new(source, id) {
    super()
    initFields_MotionEventFactory()
        _source = source
        _id = id
        MotionEventFactory.index = TouchMotionGestureFactory.getInstance().LAST_MOTION.getId()
    }
    

    getInstance() {
        var inputFactory = InputFactory.getInstance()
        var input = inputFactory.getInstanceById(Fn.new {
var jold = MotionEventFactory.index
MotionEventFactory.index = JR.i32(jold + 1)
return jold
}.call())
        if ((input == inputFactory.NO_INPUT)) {
            return MotionGestureEvent.new(_source, _id, TouchMotionGestureFactory.getInstance().NO_MOTION)
        } else {
            return MotionGestureEvent.new(_source, _id, input)
        }
    }
}

import "../../../../../../org/allbinary/game/input/Input" for Input
import "../../../../../../org/allbinary/game/input/InputFactory" for InputFactory
import "../../../../../../org/allbinary/input/motion/gesture/MotionGestureInput" for MotionGestureInput
import "../../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory" for TouchMotionGestureFactory
import "../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../../../org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface" for AllBinaryEventObjectFactoryInterface
import "./MotionGestureEvent" for MotionGestureEvent

