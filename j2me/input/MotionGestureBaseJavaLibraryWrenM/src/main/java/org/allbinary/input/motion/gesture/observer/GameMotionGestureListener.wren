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

class GameMotionGestureListener is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  motionGestureCollection { _motionGestureCollection }
  motionGestureCollection=(value) { _motionGestureCollection = value }
  touchGestureCollection { _touchGestureCollection }
  touchGestureCollection=(value) { _touchGestureCollection = value }
  signed { _signed }
  signed=(value) { _signed = value }

  initFields_GameMotionGestureListener() {
    _logUtil = null
    _commonStrings = null
    _motionGestureCollection = null
    _touchGestureCollection = null
    _signed = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _motionGestureCollection = BasicArrayListD.new()
        _touchGestureCollection = BasicArrayListD.new()
        
  }
    

    construct new(signed) {
    super()
    initFields_GameMotionGestureListener()
        _logUtil.putF(_commonStrings.START, this, _commonStrings.CONSTRUCTOR)
        _signed = signed
    }
    

    onEvent(eventObject) {
        ForcedLogUtil.log(_commonStrings.NOT_IMPLEMENTED, this)
    }
    

    onUpMotionGestureEvent(ev) {
        this.onMotionGestureEvent(ev)
    }
    

    onDownMotionGestureEvent(ev) {
        this.onMotionGestureEvent(ev)
    }
    

    onLeftMotionGestureEvent(ev) {
        this.onMotionGestureEvent(ev)
    }
    

    onRightMotionGestureEvent(ev) {
        this.onMotionGestureEvent(ev)
    }
    

    onDiagonalDownRightMotionGestureEvent(ev) {
        this.onMotionGestureEvent(ev)
    }
    

    onDiagonalDownLeftMotionGestureEvent(ev) {
        this.onMotionGestureEvent(ev)
    }
    

    onDiagonalUpRightMotionGestureEvent(ev) {
        this.onMotionGestureEvent(ev)
    }
    

    onDiagonalUpLeftMotionGestureEvent(ev) {
        this.onMotionGestureEvent(ev)
    }
    

    onPressedMotionGestureEvent(ev) {
        _touchGestureCollection.add(ev.getMotionGesture())
    }
    

    released(ev) {
        var jerror0 = Fiber.new {
            _touchGestureCollection.add(ev.getMotionGesture())
            _signed.onMotionGestureCompleted(_touchGestureCollection)
            _touchGestureCollection.clear()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var stringBuffer = StringMaker.new()
            stringBuffer.append(_commonStrings.EXCEPTION_LABEL)
            stringBuffer.append(StringUtil.getInstance().toString(ev.getMotionGesture()))
            _logUtil.put(stringBuffer.toString(), this, "release", e)
        }
    }
    

    onScrolledMotionGestureEvent(motionGestureEvent) {
    }
    

    onMotionGestureEvent(ev) {
        var jerror1 = Fiber.new {
            var motionGestureInput = ev.getMotionGesture()
            if ((motionGestureInput == TouchMotionGestureFactory.getInstance().PRESSED)) {
                this.onPressedMotionGestureEvent(ev)
            } else if ((motionGestureInput == TouchMotionGestureFactory.getInstance().RELEASED)) {
                this.released(ev)
            } else {
                _motionGestureCollection.add(motionGestureInput)
                _signed.onMotionGestureCompleted(_motionGestureCollection)
                _motionGestureCollection.clear()
                _touchGestureCollection.clear()
            }
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            var stringBuffer = StringMaker.new()
            stringBuffer.append(_commonStrings.EXCEPTION_LABEL)
            stringBuffer.append(StringUtil.getInstance().toString(ev.getMotionGesture()))
            _logUtil.put(stringBuffer.toString(), this, "onMotionGestureEvent", e)
        }
    }
}

import "../../../../../../org/allbinary/input/motion/gesture/MotionGestureInput" for MotionGestureInput
import "../../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory" for TouchMotionGestureFactory
import "../../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./MotionGestureEventListener" for MotionGestureEventListener
import "./CompleteMotionGestureListenerInterface" for CompleteMotionGestureListenerInterface
import "./MotionGestureEvent" for MotionGestureEvent

