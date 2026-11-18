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
// package org.allbinary.game.input

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject

class CompleteMotionGestureInputEvent is AllBinaryEventObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  name { _name }
  name=(value) { _name = value }
  motionGestureInput { _motionGestureInput }
  motionGestureInput=(value) { _motionGestureInput = value }

  initFields_CompleteMotionGestureInputEvent() {
    _logUtil = null
    _name = null
    _motionGestureInput = null
        _logUtil = LogUtil.getInstance()
        _name = StringUtil.getInstance().EMPTY_STRING
        _motionGestureInput = TouchMotionGestureFactory.getInstance().NO_MOTION
  }
    

    construct new(name, motionGestureInput) {
        super(motionGestureInput)
        initFields_CompleteMotionGestureInputEvent()
        this.setName(name)
        var jerror0 = Fiber.new {
            this.setMotionGestureInput(motionGestureInput)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, "InputToGameKeyEventAction", e)
        }
    }
    

    setName(name) {
        _name = name
    }
    

    getName() {
        return _name
    }
    

    setMotionGestureInput(motionGestureInput) {
        _motionGestureInput = motionGestureInput
    }
    

    getMotionGestureInput() {
        return _motionGestureInput
    }
}

import "../../../../org/allbinary/input/motion/gesture/MotionGestureInput" for MotionGestureInput
import "../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory" for TouchMotionGestureFactory
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./CompleteMotionGestureInputInterface" for CompleteMotionGestureInputInterface

