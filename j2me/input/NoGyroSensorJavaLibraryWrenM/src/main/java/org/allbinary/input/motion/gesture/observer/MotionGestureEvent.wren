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
import "../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject

class MotionGestureEvent is AllBinaryEventObject {
    static PREVIOUS { " Previous: " }
    static HASHCODE { " hashcode: " }
  motionGesture { _motionGesture }
  motionGesture=(value) { _motionGesture = value }
  id { _id }
  id=(value) { _id = value }
  previousPoint { _previousPoint }
  previousPoint=(value) { _previousPoint = value }
  currentPoint { _currentPoint }
  currentPoint=(value) { _currentPoint = value }
  commonLabels { _commonLabels }
  commonLabels=(value) { _commonLabels = value }

  initFields_MotionGestureEvent() {
    _motionGesture = null
    _id = 0
    _previousPoint = null
    _currentPoint = null
    _commonLabels = null
        _motionGesture = TouchMotionGestureFactory.getInstance().NO_MOTION
        
        _previousPoint = PointFactory.getInstance().ZERO_ZERO
        _currentPoint = PointFactory.getInstance().ZERO_ZERO
        _commonLabels = CommonLabels.getInstance()
  }
    

    construct new(source, id, motionGesture) {
        super(source)
        initFields_MotionGestureEvent()
        _id = id
        this.setMotionGesture(motionGesture)
    }
    

    getMotionGesture() {
        return _motionGesture
    }
    

    setMotionGesture(motionGesture) {
        _motionGesture = motionGesture
    }
    

    getPreviousPoint() {
        return _previousPoint
    }
    

    setPreviousPoint(previousPoint) {
        _previousPoint = previousPoint
    }
    

    getCurrentPoint() {
        return _currentPoint
    }
    

    setCurrentPoint(currentPoint) {
        _currentPoint = currentPoint
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        var stringUtil = StringUtil.getInstance()
        stringBuffer.append(stringUtil.toString(_motionGesture))
        stringBuffer.append(_commonLabels.CURRENT)
        stringBuffer.append(stringUtil.toString(_currentPoint))
        stringBuffer.append(MotionGestureEvent.PREVIOUS)
        stringBuffer.append(stringUtil.toString(_previousPoint))
        stringBuffer.append(MotionGestureEvent.HASHCODE)
        stringBuffer.appendint(JR.i32(TsUtil.getInstance().hashCode(this)))
        return stringBuffer.toString()
    }
    

    getId() {
        return _id
    }
}

import "../../../../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../../../../org/allbinary/input/motion/gesture/MotionGestureInput" for MotionGestureInput
import "../../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory" for TouchMotionGestureFactory
import "../../../../../../org/allbinary/TsUtil" for TsUtil
import "../../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../../org/allbinary/string/CommonLabels" for CommonLabels

