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
// package org.allbinary.input

import "../../../allbinary_java" for JObject, JException, JR

//TouchJ2ME
class TouchJ2ME is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  DEVICE_ID { _DEVICE_ID }
  DEVICE_ID=(value) { _DEVICE_ID = value }
  motionRecognizer { _motionRecognizer }
  motionRecognizer=(value) { _motionRecognizer = value }

  initFields_TouchJ2ME() {
    _logUtil = null
    _DEVICE_ID = 0
    _motionRecognizer = null
        _logUtil = LogUtil.getInstance()
        _DEVICE_ID = 0
        _motionRecognizer = AllMotionRecognizer.new()
  }
    

    construct new() {
    super()
    initFields_TouchJ2ME()
        var motionGesturesHandler = _motionRecognizer.getMotionGestureRecognizer().getMotionGesturesHandler()
        motionGesturesHandler.addListenerInterface(GameMotionGestureListener.new(MotionGestureReceiveInterfaceFactory.getInstance()))
    }
    

    pointerDragged(x, y) {
        var jerror0 = Fiber.new {
            _motionRecognizer.processDraggedMotionEvent(x, y, _DEVICE_ID, 0)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, "pointerDragged", e)
        }
    }
    

    pointerPressed(x, y) {
        var jerror1 = Fiber.new {
            _motionRecognizer.processStartMotionEvent(x, y, _DEVICE_ID, 0)
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, "pointerPressed", e)
        }
    }
    

    pointerReleased(x, y) {
        var jerror2 = Fiber.new {
            _motionRecognizer.processEndMotionEvent(x, y, _DEVICE_ID, 0)
        }.try()
        if (jerror2 != null) {
            var e = jerror2
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, "pointerReleased", e)
        }
    }
}

import "../../../org/allbinary/input/motion/AllMotionRecognizer" for AllMotionRecognizer
import "../../../org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler" for BasicMotionGesturesHandler
import "../../../org/allbinary/input/motion/gesture/observer/GameMotionGestureListener" for GameMotionGestureListener
import "../../../org/allbinary/input/motion/gesture/observer/MotionGestureReceiveInterfaceFactory" for MotionGestureReceiveInterfaceFactory
import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/string/CommonStrings" for CommonStrings

