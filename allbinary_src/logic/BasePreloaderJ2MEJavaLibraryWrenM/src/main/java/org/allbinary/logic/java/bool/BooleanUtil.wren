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
// package org.allbinary.logic.java.bool

import "../../../../../allbinary_java" for JObject, JException, JR

class BooleanUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = BooleanUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  tsUtil { _tsUtil }
  tsUtil=(value) { _tsUtil = value }

  initFields_BooleanUtil() {
    _tsUtil = null
        _tsUtil = TsUtil.getInstance()
  }
    

    static getInstance() {
        return BooleanUtil.instance
    }
    

    construct new() {
    super()
    initFields_BooleanUtil()
    }
    

    getFromString(booleanString) {
        var stringValidationUtil = StringValidationUtil.getInstance()
        var booleanFactory = BooleanFactory.getInstance()
        if (stringValidationUtil.isEmpty(booleanString)) {
            return false
        }
        var booleanStringLowerCase = JR.toLowerCase(booleanString)
        if ((_tsUtil.compareTo(booleanStringLowerCase, booleanFactory.TRUE_STRING) == 0)) {
            return true
        } else if ((_tsUtil.compareTo(booleanStringLowerCase, booleanFactory.FALSE_STRING) == 0)) {
            return false
        } else {
            Fiber.abort(JR.exception("Exception", "Invalid booleanString - Must be true or false"))
        }
    }
    

    isStringBoolean(booleanString) {
        var booleanFactory = BooleanFactory.getInstance()
        var booleanStringLowerCase = JR.toLowerCase(booleanString)
        if (((JR.compareTo(booleanStringLowerCase, booleanFactory.TRUE_STRING) == 0) || (JR.compareTo(booleanStringLowerCase, booleanFactory.FALSE_STRING) == 0))) {
            return true
        }
        return false
    }
    

    toStringFromBooleanArray(booleanArray) {
        var stringMaker = StringMaker.new()
        var size = booleanArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            stringMaker.appendboolean(booleanArray[index])
            }
        }
        return stringMaker.toString()
    }
}

import "../../../../../org/allbinary/TsUtil" for TsUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringValidationUtil" for StringValidationUtil
import "./BooleanFactory" for BooleanFactory

