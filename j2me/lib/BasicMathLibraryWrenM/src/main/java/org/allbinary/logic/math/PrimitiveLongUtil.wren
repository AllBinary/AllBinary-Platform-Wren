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
// package org.allbinary.logic.math

import "../../../../allbinary_java" for JObject, JException, JR

class PrimitiveLongUtil is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  powerOfTen { _powerOfTen }
  powerOfTen=(value) { _powerOfTen = value }
  maxValue { _maxValue }
  maxValue=(value) { _maxValue = value }
  maxDigits { _maxDigits }
  maxDigits=(value) { _maxDigits = value }
  charArray { _charArray }
  charArray=(value) { _charArray = value }
  currentTotalDigits { _currentTotalDigits }
  currentTotalDigits=(value) { _currentTotalDigits = value }
  primitiveLongSingleton { _primitiveLongSingleton }
  primitiveLongSingleton=(value) { _primitiveLongSingleton = value }

  initFields_PrimitiveLongUtil() {
    _logUtil = null
    _powerOfTen = 0
    _maxValue = 0
    _maxDigits = 0
    _charArray = null
    _currentTotalDigits = 0
    _primitiveLongSingleton = null
        _logUtil = LogUtil.getInstance()
        
        
        
        
        _currentTotalDigits = 0
        _primitiveLongSingleton = PrimitiveLongSingleton.getInstance()
  }
    

    static createPowerOfTen(powerOfTen) {
        var primitiveLongUtil = PrimitiveLongUtil.new(powerOfTen, NullUtil.getInstance().NULL_OBJECT)
        if (((powerOfTen % 10) != 0)) {
            var logUtil = LogUtil.getInstance()
            var commonStrings = CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, primitiveLongUtil, commonStrings.CONSTRUCTOR, JR.exception("Exception", "Max must be power of 10"))
        }
        return primitiveLongUtil
    }
    

    construct new(powerOfTen, unused) {
    super()
    initFields_PrimitiveLongUtil()
        _maxDigits = MathUtil.getInstance().getTotalDigits(powerOfTen)
        _powerOfTen = powerOfTen
        _maxValue = JR.i32((JR.i32(powerOfTen * 10)) - 1)
        _charArray = List.filled(_maxDigits, 0)
    }
    

    getCharArray(value) {
        if ((value < 10)) {
            this.setCurrentTotalDigits(1)
            return _primitiveLongSingleton.NUMBER_CHAR_ARRAYS[value]
        }
        if ((value > _maxValue)) {
            this.setCurrentTotalDigits(3)
            return _primitiveLongSingleton.UNK
        }
        var index = 0
        var div = _powerOfTen
        var lastValue = 0
        while ((div >= 1)) {
            var digit = JR.idiv((JR.i32(value - lastValue)), div)
            if (((digit >= 0) && (digit < 10))) {
                if (((digit == 0) && (index == 0))) {
                } else {
                    _charArray[Fn.new {
var jold = index
index = JR.i32(jold + 1)
return jold
}.call()] = _primitiveLongSingleton.NUMBER_CHAR_ARRAY[digit]
                }
                lastValue = JR.i32(lastValue + JR.i32(digit * div))
            }
            div = JR.idiv(div, 10)
        }
        this.setCurrentTotalDigits(index)
        return _charArray
    }
    

    setCurrentTotalDigits(currentTotalDigits) {
        _currentTotalDigits = currentTotalDigits
    }
    

    getCurrentTotalDigits() {
        return _currentTotalDigits
    }
    

    getMaxDigits() {
        return _maxDigits
    }
}

import "../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./PrimitiveLongSingleton" for PrimitiveLongSingleton
import "./MathUtil" for MathUtil

