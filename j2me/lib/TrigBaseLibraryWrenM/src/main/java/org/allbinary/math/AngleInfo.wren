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
// package org.allbinary.math

import "../../../allbinary_java" for JObject, JException, JR

class AngleInfo is JObject {
    static ANGLE {
    if (__ANGLE_set == null) {
      __ANGLE_set = true
      __ANGLE = "Angle: "
    }
    return __ANGLE
  }
  static ANGLE=(value) {
    __ANGLE_set = true
    __ANGLE = value
  }
  angleIncrementInfo { _angleIncrementInfo }
  angleIncrementInfo=(value) { _angleIncrementInfo = value }
  angle { _angle }
  angle=(value) { _angle = value }
  frameUtil { _frameUtil }
  frameUtil=(value) { _frameUtil = value }

  initFields_AngleInfo() {
    _angleIncrementInfo = null
    _angle = 0
    _frameUtil = null
        
        _angle = 0
        _frameUtil = FrameUtil.getInstance()
  }
    

    static getInstance(angleIncrement) {
        return AngleInfo.new(AngleIncrementInfoFactory.getInstance().getAt(angleIncrement))
    }
    

    construct new(angleIncrementInfo) {
    super()
    initFields_AngleInfo()
        _angleIncrementInfo = angleIncrementInfo
    }
    

    adjustAngle(frame) {
        var newAngle = ((_angleIncrementInfo.getAngleIncrement() * frame) - 90)
        this.setAngle(JR.i16(_frameUtil.adjustAngleToFrameAngle(newAngle)))
    }
    

    getAngle() {
        return _angle
    }
    

    setAngle(angle) {
        _angle = angle
    }
    

    getAngleIncrementInfo() {
        return _angleIncrementInfo
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append(AngleInfo.ANGLE)
        stringBuffer.appendshort(_angle)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(StringUtil.getInstance().toString(this.getAngleIncrementInfo()))
        return stringBuffer.toString()
    }
}

import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../org/allbinary/string/CommonSeps" for CommonSeps
import "./AngleIncrementInfo" for AngleIncrementInfo
import "./AngleIncrementInfoFactory" for AngleIncrementInfoFactory
import "./FrameUtil" for FrameUtil

