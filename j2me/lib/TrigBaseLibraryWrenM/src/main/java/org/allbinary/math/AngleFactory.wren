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

class AngleFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = AngleFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  TOTAL_ANGLE { _TOTAL_ANGLE }
  TOTAL_ANGLE=(value) { _TOTAL_ANGLE = value }
  QUARTER_TOTAL_ANGLE { _QUARTER_TOTAL_ANGLE }
  QUARTER_TOTAL_ANGLE=(value) { _QUARTER_TOTAL_ANGLE = value }
  angleArray { _angleArray }
  angleArray=(value) { _angleArray = value }
  NEGATIVE_ONE { _NEGATIVE_ONE }
  NEGATIVE_ONE=(value) { _NEGATIVE_ONE = value }
  NOT_ANGLE { _NOT_ANGLE }
  NOT_ANGLE=(value) { _NOT_ANGLE = value }
  DOWN { _DOWN }
  DOWN=(value) { _DOWN = value }
  UP { _UP }
  UP=(value) { _UP = value }
  LEFT { _LEFT }
  LEFT=(value) { _LEFT = value }
  RIGHT { _RIGHT }
  RIGHT=(value) { _RIGHT = value }
  frameUtil { _frameUtil }
  frameUtil=(value) { _frameUtil = value }

  initFields_AngleFactory() {
    _logUtil = null
    _TOTAL_ANGLE = 0
    _QUARTER_TOTAL_ANGLE = 0
    _angleArray = null
    _NEGATIVE_ONE = 0
    _NOT_ANGLE = null
    _DOWN = null
    _UP = null
    _LEFT = null
    _RIGHT = null
    _frameUtil = null
        _logUtil = LogUtil.getInstance()
        _TOTAL_ANGLE = 360
        _QUARTER_TOTAL_ANGLE = 90
        _angleArray = List.filled(JR.i32(_TOTAL_ANGLE), null)
        _NEGATIVE_ONE = JR.i16(-1)
        _NOT_ANGLE = NamedAngle.new(_NEGATIVE_ONE, CommonStrings.getInstance().EMPTY)
        
        
        
        
        _frameUtil = FrameUtil.getInstance()
  }
    

    static getInstance() {
        return AngleFactory.instance
    }
    

    construct new() {
    super()
    initFields_AngleFactory()
        var commonPhoneStrings = CommonPhoneStrings.getInstance()
        var total = JR.i16(_angleArray.count)
        _UP = NamedAngle.new(JR.i16(0), commonPhoneStrings.UP)
        _angleArray[0] = _UP
        if (true) {
            var index = 1
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < 90))) break
            _angleArray[index] = Angle.new(JR.i16(index))
            }
        }
        _RIGHT = NamedAngle.new(JR.i16(90), commonPhoneStrings.RIGHT)
        _angleArray[90] = _RIGHT
        if (true) {
            var index = 91
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < 180))) break
            _angleArray[index] = Angle.new(JR.i16(index))
            }
        }
        _DOWN = NamedAngle.new(JR.i16(180), commonPhoneStrings.DOWN)
        _angleArray[180] = _DOWN
        if (true) {
            var index = 181
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < 270))) break
            _angleArray[index] = Angle.new(JR.i16(index))
            }
        }
        _LEFT = NamedAngle.new(JR.i16(270), commonPhoneStrings.LEFT)
        _angleArray[270] = _LEFT
        if (true) {
            var index = 271
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < JR.i32(total)))) break
            _angleArray[index] = Angle.new(JR.i16(index))
            }
        }
    }
    

    getAt(index) {
        var adjustedIndex = JR.i32(_frameUtil.adjustAngleToFrameAngle(index))
        return _angleArray[adjustedIndex]
    }
    

    getClosestDirection(angle) {
        if (((((angle >= 315) && (angle < 360))) || (((angle >= 0) && (angle < 45))))) {
            return _UP
        } else if (((angle >= 45) && (angle < 135))) {
            return _RIGHT
        } else if (((angle >= 135) && (angle < 225))) {
            return _DOWN
        } else if (((angle >= 225) && (angle < 315))) {
            return _LEFT
        }
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    getGeneralDirection() {
        return _NOT_ANGLE
    }
    

    static main(args) {
        var stringMaker = StringMaker.new()
        var angleFactory = AngleFactory.getInstance()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < 360))) break
            stringMaker.appendint(index).append(CommonSeps.getInstance().FORWARD_SLASH).appendshort(JR.i16(angleFactory.getClosestDirection(index).getValue())).append(CommonSeps.getInstance().NEW_LINE)
            }
        }
        LogUtil.getInstance().putF(stringMaker.toString(), "main", "main")
    }
}

import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/string/CommonPhoneStrings" for CommonPhoneStrings
import "../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./Angle" for Angle
import "./NamedAngle" for NamedAngle
import "./FrameUtil" for FrameUtil

