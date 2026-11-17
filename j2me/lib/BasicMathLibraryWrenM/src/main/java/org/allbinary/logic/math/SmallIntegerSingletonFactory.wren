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

class SmallIntegerSingletonFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = SmallIntegerSingletonFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  NEGATIVE_MAX { _NEGATIVE_MAX }
  NEGATIVE_MAX=(value) { _NEGATIVE_MAX = value }
  POSITIVE_MAX { _POSITIVE_MAX }
  POSITIVE_MAX=(value) { _POSITIVE_MAX = value }
  INTEGER_ARRAY { _INTEGER_ARRAY }
  INTEGER_ARRAY=(value) { _INTEGER_ARRAY = value }
  STRING_ARRAY { _STRING_ARRAY }
  STRING_ARRAY=(value) { _STRING_ARRAY = value }
  MIN { _MIN }
  MIN=(value) { _MIN = value }
  lastMin { _lastMin }
  lastMin=(value) { _lastMin = value }
  lastNegativeMin { _lastNegativeMin }
  lastNegativeMin=(value) { _lastNegativeMin = value }

  initFields_SmallIntegerSingletonFactory() {
    _NEGATIVE_MAX = 0
    _POSITIVE_MAX = 0
    _INTEGER_ARRAY = null
    _STRING_ARRAY = null
    _MIN = 0
    _lastMin = 0
    _lastNegativeMin = 0
        _NEGATIVE_MAX = 500
        _POSITIVE_MAX = 0x2D1
        _INTEGER_ARRAY = List.filled(JR.i32(_NEGATIVE_MAX + _POSITIVE_MAX), null)
        _STRING_ARRAY = List.filled(JR.i32(_NEGATIVE_MAX + _POSITIVE_MAX), null)
        _MIN = 0
        _lastMin = 0
        _lastNegativeMin = 0
  }
    

    static getInstance() {
        return SmallIntegerSingletonFactory.instance
    }
    

    getMin() {
        var minAllowed = this.getMinAllowed()
        if ((_MIN <= minAllowed)) {
            if (J2MEUtil.isJ2ME()) {
            } else if (AndroidUtil.isAndroid()) {
                var logUtil = LogUtil.getInstance()
                logUtil.putF(StringMaker.new().append("Android InputFactory was initialized before GameMidlet: ").appendint(_MIN).toString(), this, "getMin")
                this.initWithRange(0x291, 6)
            } else {
                var logUtil = LogUtil.getInstance()
                logUtil.putF(StringMaker.new().append("InputFactory was initialized before GameMidlet or KeyFactoryInitializer - Currently this is occurs on JS build by TouchMotionGestureFactory constructor: ").appendint(_MIN).toString(), this, "getMin")
                this.initWithRange(0x2D0, 6)
            }
        }
        if ((_MIN <= minAllowed)) {
            var logUtil = LogUtil.getInstance()
            logUtil.put("This means you loaded the InputFactory before determining the platform input size requirements.", this, "getMin", JR.exception("Exception", ""))
        }
        return _MIN
    }
    

    getMinAllowed() {
        if (J2MEUtil.isJ2ME()) {
            return 0
        } else {
            if (AndroidUtil.isAndroid()) {
                return 0x101
            } else {
                return 23
            }
        }
    }
    

    initWithRange(value, negativeValue) {
        if (true) {
            var index = JR.i32(value - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= _lastMin))) break
            _INTEGER_ARRAY[JR.i32(index + _NEGATIVE_MAX)] = index
            }
        }
        if (true) {
            var index = JR.i32(negativeValue - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= _lastNegativeMin))) break
            _INTEGER_ARRAY[index] = -index
            }
        }
        if ((_lastMin < value)) {
            _lastMin = value
            _MIN = value
        }
        if ((_lastNegativeMin < negativeValue)) {
            _lastNegativeMin = negativeValue
        }
    }
    

    init() {
        if (((_lastMin < _POSITIVE_MAX) || (_lastNegativeMin < _NEGATIVE_MAX))) {
            if (true) {
                var index = JR.i32(_POSITIVE_MAX - 1)
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index - 1)
                    }
                    jfirst = false
                    if (!((index >= _lastMin))) break
                _INTEGER_ARRAY[JR.i32(index + _NEGATIVE_MAX)] = index
                }
            }
            if (true) {
                var index = JR.i32(_NEGATIVE_MAX - 1)
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index - 1)
                    }
                    jfirst = false
                    if (!((index >= _lastNegativeMin))) break
                _INTEGER_ARRAY[index] = -index
                }
            }
            _lastMin = _POSITIVE_MAX
            _MIN = _lastMin
            _lastNegativeMin = _NEGATIVE_MAX
        }
    }
    

    construct new() {
    super()
    initFields_SmallIntegerSingletonFactory()
        this.initWithRange(23, 0)
    }
    

    getAt(index) {
        return _INTEGER_ARRAY[JR.i32(index + _NEGATIVE_MAX)]
    }
    

    getAtNoThrow(index) {
        if ((JR.i32(index + _NEGATIVE_MAX) > JR.i32(_INTEGER_ARRAY.count - 1))) {
            return _INTEGER_ARRAY[JR.i32(-1 + _NEGATIVE_MAX)]
        }
        return _INTEGER_ARRAY[JR.i32(index + _NEGATIVE_MAX)]
    }
    

    createInstance(index) {
        var integer = this.getAt(index)
        if ((integer == null)) {
            integer = index
        }
        return integer
    }
    

    getString(index) {
        var i = JR.i32(index + _NEGATIVE_MAX)
        if ((_STRING_ARRAY[i] == null)) {
            _STRING_ARRAY[i] = _INTEGER_ARRAY[i].toString()
        }
        return _STRING_ARRAY[i]
    }
}

import "../../../../org/allbinary/AndroidUtil" for AndroidUtil
import "../../../../org/allbinary/J2MEUtil" for J2MEUtil
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../java/lang/Integer" for Integer

