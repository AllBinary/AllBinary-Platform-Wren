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
import "../../../../org/allbinary/input/AllBinarySensor" for AllBinarySensor

class AllBinaryOrientationSensor is AllBinarySensor {
    static NULL_ALLBINARY_ORIENTATION_SENSOR {
    if (__NULL_ALLBINARY_ORIENTATION_SENSOR_set == null) {
      __NULL_ALLBINARY_ORIENTATION_SENSOR_set = true
      __NULL_ALLBINARY_ORIENTATION_SENSOR = AllBinaryOrientationSensor.new()
    }
    return __NULL_ALLBINARY_ORIENTATION_SENSOR
  }
  static NULL_ALLBINARY_ORIENTATION_SENSOR=(value) {
    __NULL_ALLBINARY_ORIENTATION_SENSOR_set = true
    __NULL_ALLBINARY_ORIENTATION_SENSOR = value
  }
  listener { _listener }
  listener=(value) { _listener = value }

  initFields_AllBinaryOrientationSensor() {
    _listener = null
        _listener = NoCompleteMotionGestureInputEventListener.getInstance()
  }
    

    setListener(completeMotionGestureInputEventListenerInterface) {
        _listener = completeMotionGestureInputEventListenerInterface
    }
    

    construct new() {
    super()
    initFields_AllBinaryOrientationSensor()
    }
    

    getOrientation() {
        Fiber.abort(JR.exception("Exception", this.commonStrings.NOT_IMPLEMENTED))
    }
}

import "../../../../org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface" for CompleteMotionGestureInputEventListenerInterface
import "../../../../org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener" for NoCompleteMotionGestureInputEventListener
import "../../../../org/allbinary/logic/math/Orientation" for Orientation

