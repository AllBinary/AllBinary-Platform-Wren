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
// package org.allbinary.input.motion.button

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/graphics/paint/ProcessPaintable" for ProcessPaintable

class TouchButtonsPaintableComposite is ProcessPaintable {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  inputMappingInterface { _inputMappingInterface }
  inputMappingInterface=(value) { _inputMappingInterface = value }
  touchButtonsPaintable { _touchButtonsPaintable }
  touchButtonsPaintable=(value) { _touchButtonsPaintable = value }
  timeHelper { _timeHelper }
  timeHelper=(value) { _timeHelper = value }
  released { _released }
  released=(value) { _released = value }
  METHOD_NAME { _METHOD_NAME }
  METHOD_NAME=(value) { _METHOD_NAME = value }
  RELEASE { _RELEASE }
  RELEASE=(value) { _RELEASE = value }
  FAST_REPEAT { _FAST_REPEAT }
  FAST_REPEAT=(value) { _FAST_REPEAT = value }
  IGNORE { _IGNORE }
  IGNORE=(value) { _IGNORE = value }

  initFields_TouchButtonsPaintableComposite() {
    _logUtil = null
    _commonStrings = null
    _inputMappingInterface = null
    _touchButtonsPaintable = null
    _timeHelper = null
    _released = false
    _METHOD_NAME = null
    _RELEASE = null
    _FAST_REPEAT = null
    _IGNORE = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        
        
        _timeHelper = TimeDelayHelper.new(250)
        _released = true
        _METHOD_NAME = "onCompleteMotionGestureInputEvent"
        _RELEASE = "Ignoring: MotionGestureInput Release"
        _FAST_REPEAT = "Ignoring: MotionGestureInput Repeated To Quickly"
        _IGNORE = "Ignoring: Until Released"
  }
    

    construct new(inputMappingInterface, basicColor) {
    super()
    initFields_TouchButtonsPaintableComposite()
        _inputMappingInterface = inputMappingInterface
        CompleteMotionGestureInputEventHandler.getInstance().addListenerInterface(this)
        _touchButtonsPaintable = TouchButtonsMappingPaintable.new(basicColor)
    }
    

    onEvent(eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)
    }
    

    onCompleteMotionGestureInputEvent(completeMotionGestureInputEvent) {
        var jerror0 = Fiber.new {
            _logUtil.putF(_commonStrings.START, this, "onCompleteMotionGestureInputEvent")
            var touchMotionGestureFactory = TouchMotionGestureFactory.getInstance()
            var gameKeyCompleteMotionGestureInputEvent = completeMotionGestureInputEvent
            var gameKey = gameKeyCompleteMotionGestureInputEvent.getGameKey()
            var motionGestureInput = completeMotionGestureInputEvent.getMotionGestureInput()
            if ((motionGestureInput == touchMotionGestureFactory.RELEASED)) {
                _logUtil.putF(_RELEASE, this, _METHOD_NAME)
                _released = true
                return
            }
            if (((motionGestureInput == TouchMotionGestureFactory.getInstance().NO_MOTION) && !_timeHelper.isTimeTNT())) {
                _logUtil.putF(_FAST_REPEAT, this, _METHOD_NAME)
                return
            }
            if (!_released) {
                _logUtil.putF(_IGNORE, this, _METHOD_NAME)
                return
            }
            _released = false
            _logUtil.putF(StringMaker.new().append("GameKey: ").append(StringUtil.getInstance().toString(gameKey)).append(" MotionGestureInput: ").append(StringUtil.getInstance().toString(motionGestureInput)).toString(), this, _METHOD_NAME)
            _inputMappingInterface.processInputMapping(gameKey, motionGestureInput)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(_commonStrings.EXCEPTION, this, _METHOD_NAME, e)
        }
    }
    

    process() {
        CompleteMotionGestureInputEventHandler.getInstance().removeListener(this)
    }
}

import "../../../../../org/allbinary/game/input/CompleteMotionGestureInputEvent" for CompleteMotionGestureInputEvent
import "../../../../../org/allbinary/game/input/CompleteMotionGestureInputEventHandler" for CompleteMotionGestureInputEventHandler
import "../../../../../org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface" for CompleteMotionGestureInputEventListenerInterface
import "../../../../../org/allbinary/game/input/GameKey" for GameKey
import "../../../../../org/allbinary/game/input/mapping/InputMappingInterface" for InputMappingInterface
import "../../../../../org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent" for GameKeyCompleteMotionGestureInputEvent
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/input/motion/gesture/MotionGestureInput" for MotionGestureInput
import "../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory" for TouchMotionGestureFactory
import "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper
import "./TouchButtonsMappingPaintable" for TouchButtonsMappingPaintable

