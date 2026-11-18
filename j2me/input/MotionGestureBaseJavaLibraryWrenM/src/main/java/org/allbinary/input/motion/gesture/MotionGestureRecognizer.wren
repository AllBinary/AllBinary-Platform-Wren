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

class MotionGestureRecognizer is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  j2seMath { _j2seMath }
  j2seMath=(value) { _j2seMath = value }
  origin { _origin }
  origin=(value) { _origin = value }
  previous { _previous }
  previous=(value) { _previous = value }
  intermediate { _intermediate }
  intermediate=(value) { _intermediate = value }
  line { _line }
  line=(value) { _line = value }
  motionGesturesHandler { _motionGesturesHandler }
  motionGesturesHandler=(value) { _motionGesturesHandler = value }
  movedMotionGesturesHandler { _movedMotionGesturesHandler }
  movedMotionGesturesHandler=(value) { _movedMotionGesturesHandler = value }
  scrolledMotionGesturesHandler { _scrolledMotionGesturesHandler }
  scrolledMotionGesturesHandler=(value) { _scrolledMotionGesturesHandler = value }
  motionEventCircularPool { _motionEventCircularPool }
  motionEventCircularPool=(value) { _motionEventCircularPool = value }

  initFields_MotionGestureRecognizer() {
    _logUtil = null
    _j2seMath = null
    _origin = null
    _previous = null
    _intermediate = null
    _line = null
    _motionGesturesHandler = null
    _movedMotionGesturesHandler = null
    _scrolledMotionGesturesHandler = null
    _motionEventCircularPool = null
        _logUtil = LogUtil.getInstance()
        _j2seMath = J2SEMath.getInstance()
        _origin = PointFactory.getInstance().ZERO_ZERO
        _previous = _origin
        _intermediate = _origin
        _line = Line.new(_origin, _origin)
        
        
        
        
  }
    

    construct new(id) {
    super()
    initFields_MotionGestureRecognizer()
        _motionEventCircularPool = MotionEventCircularPool.createPool(id)
        var motionGesturesHandler = BasicEventHandler.new()
        var movedMotionGesturesHandler = motionGesturesHandler
        var scrolledMotionGesturesHandler = motionGesturesHandler
        var jerror0 = Fiber.new {
            motionGesturesHandler = BasicMotionGesturesHandler.getInstance()
            movedMotionGesturesHandler = MovedMotionGesturesHandler.getInstance()
            scrolledMotionGesturesHandler = ScrolledMotionGesturesHandler.getInstance()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)
        }
        _motionGesturesHandler = motionGesturesHandler
        _movedMotionGesturesHandler = movedMotionGesturesHandler
        _scrolledMotionGesturesHandler = scrolledMotionGesturesHandler
    }
    

    processPressedMotionEvent(current, deviceId, button) {
        _intermediate = _origin
        _previous = _origin
        var event = _motionEventCircularPool.getInstance(TouchMotionGestureFactory.getInstance().PRESSED)
        event.setPreviousPoint(_previous)
        event.setCurrentPoint(current)
        _motionGesturesHandler.fireEvent(event)
        return true
    }
    

    processReleasedMotionEvent(current, deviceId, button) {
        var event = _motionEventCircularPool.getInstance(TouchMotionGestureFactory.getInstance().RELEASED)
        event.setPreviousPoint(_previous)
        event.setCurrentPoint(current)
        _motionGesturesHandler.fireEvent(event)
        return true
    }
    

    processDraggedMotionEvent(current, deviceId, buttonMask) {
        if (((_previous == _origin) || (_intermediate == _origin))) {
            _previous = current
            _intermediate = current
            return
        }
        _line.setP1(_previous)
        _line.setP2(current)
        var minimumMotionGesture = MotionGestureConfigurationFactory.getInstance().getMinimumMotionGesture()
        if (((_j2seMath.abs(_line.getDeltaX()) < minimumMotionGesture) && (_j2seMath.abs(_line.getDeltaY()) < minimumMotionGesture))) {
            _intermediate = current
            return
        }
        var gradient = _line.getGradient()
        var absGradient = _j2seMath.abs(gradient)
        var conf = MotionGestureConfigurationFactory.getInstance()
        var touchMotionGestureFactory = TouchMotionGestureFactory.getInstance()
        var newMotionGesture = touchMotionGestureFactory.NO_MOTION
        var diagonalToleranceHigher = 12.0
        var diagonalToleranceLower = 12.0
        if (conf.isDiagonalMotionGestureAllowed()) {
            diagonalToleranceHigher = ((90 - conf.getDiagonalTolerance()))
            diagonalToleranceLower = conf.getDiagonalTolerance()
        }
        if ((absGradient > ((diagonalToleranceHigher).toRadians).tan)) {
            if ((_line.getDeltaY() > 0)) {
                newMotionGesture = touchMotionGestureFactory.UP
            } else {
                newMotionGesture = touchMotionGestureFactory.DOWN
            }
        } else {
            if ((absGradient < ((diagonalToleranceLower).toRadians).tan)) {
                if ((_line.getDeltaX() > 0)) {
                    newMotionGesture = touchMotionGestureFactory.LEFT
                } else {
                    newMotionGesture = touchMotionGestureFactory.RIGHT
                }
            } else {
                if ((gradient > 0)) {
                    if ((_line.getDeltaX() > 0)) {
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_UP_LEFT
                    } else {
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT
                    }
                } else {
                    if ((_line.getDeltaX() > 0)) {
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_DOWN_LEFT
                    } else {
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_UP_RIGHT
                    }
                }
            }
        }
        _previous = current
        _intermediate = current
        var event = _motionEventCircularPool.getInstance(newMotionGesture)
        event.setPreviousPoint(_previous)
        event.setCurrentPoint(current)
        _motionGesturesHandler.fireEvent(event)
        return
    }
    

    processMovedMotionEvent(current, deviceId, button) {
        var event = _motionEventCircularPool.getInstance(TouchMotionGestureFactory.getInstance().NO_MOTION)
        event.setPreviousPoint(_previous)
        event.setCurrentPoint(current)
        _movedMotionGesturesHandler.fireEvent(event)
        return true
    }
    

    processScrolledMotionEvent(current, deviceId, button) {
        var touchMotionGestureFactory = TouchMotionGestureFactory.getInstance()
        var newMotionGesture = touchMotionGestureFactory.NO_MOTION
        if ((button > 0)) {
            newMotionGesture = touchMotionGestureFactory.SCROLL_UP
        } else if ((button < 0)) {
            newMotionGesture = touchMotionGestureFactory.SCROLL_DOWN
        }
        var event = _motionEventCircularPool.getInstance(newMotionGesture)
        event.setPreviousPoint(_previous)
        event.setCurrentPoint(current)
        _scrolledMotionGesturesHandler.fireEvent(event)
        return true
    }
    

    getMotionGesturesHandler() {
        return _motionGesturesHandler
    }
}

import "../../../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../../../org/allbinary/graphics/Line" for Line
import "../../../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../../../org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration" for MotionGestureConfiguration
import "../../../../../org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory" for MotionGestureConfigurationFactory
import "../../../../../org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler" for BasicMotionGesturesHandler
import "../../../../../org/allbinary/input/motion/gesture/observer/MotionEventCircularPool" for MotionEventCircularPool
import "../../../../../org/allbinary/input/motion/gesture/observer/MotionGestureEvent" for MotionGestureEvent
import "../../../../../org/allbinary/input/motion/gesture/observer/MovedMotionGesturesHandler" for MovedMotionGesturesHandler
import "../../../../../org/allbinary/input/motion/gesture/observer/ScrolledMotionGesturesHandler" for ScrolledMotionGesturesHandler
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/math/J2SEMath" for J2SEMath
import "../../../../../org/allbinary/logic/util/event/handler/BasicEventHandler" for BasicEventHandler
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./TouchMotionGestureFactory" for TouchMotionGestureFactory
import "./MotionGestureInput" for MotionGestureInput

