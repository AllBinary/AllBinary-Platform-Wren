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
// package org.allbinary.logic.string

import "../../../../allbinary_java" for JObject, JException, JR

class StringValidationUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = StringValidationUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  stringUtil { _stringUtil }
  stringUtil=(value) { _stringUtil = value }
  tsUtil { _tsUtil }
  tsUtil=(value) { _tsUtil = value }

  initFields_StringValidationUtil() {
    _stringUtil = null
    _tsUtil = null
        _stringUtil = StringUtil.getInstance()
        _tsUtil = TsUtil.getInstance()
  }
    

    static getInstance() {
        return StringValidationUtil.instance
    }
    

    construct new() {
    super()
    initFields_StringValidationUtil()
    }
    

    containsSpaces(value) {
        if ((JR.indexOf(value, " ".bytes[0]) >= 0)) {
            return true
        }
        return false
    }
    

    isNumber(value) {
        var numberOfDecimalPoints = 0
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < JR.length(value)))) break
            var digit = JR.charAt(value, index)
            if ((!this.isNumberFromChar(digit) && (digit != ".".bytes[0]))) {
                return false
            }
            if ((digit == ".".bytes[0])) {
                numberOfDecimalPoints = JR.i32(numberOfDecimalPoints + 1)
                if ((numberOfDecimalPoints > 1)) {
                    return false
                }
            }
            }
        }
        return true
    }
    

    isNumberFromChar(digit) {
        if (((((((((((digit != "0".bytes[0]) && (digit != "1".bytes[0])) && (digit != "2".bytes[0])) && (digit != "3".bytes[0])) && (digit != "4".bytes[0])) && (digit != "5".bytes[0])) && (digit != "6".bytes[0])) && (digit != "7".bytes[0])) && (digit != "8".bytes[0])) && (digit != "9".bytes[0]))) {
            return false
        }
        return true
    }
    

    isValidRequired(value, min, max) {
        if (((JR.length(value) < min) || (JR.length(value) > max))) {
            return false
        }
        return true
    }
    

    isValidRequiredNumber(value, min, max) {
        if (((this.isEmpty(value) || (JR.length(value) < min)) || (JR.length(value) > max))) {
            return false
        }
        if (!this.isNumber(value)) {
            return false
        }
        return true
    }
    

    isValidNotRequired(value, min, max) {
        if ((JR.length(value) > 0)) {
            if (((JR.length(value) < min) || (JR.length(value) > max))) {
                return false
            }
        }
        return true
    }
    

    isValidNotRequiredNumber(value, min, max) {
        if ((JR.length(value) > 0)) {
            if ((((_tsUtil.compareTo(value, _stringUtil.NULL_STRING) == 0) || (JR.length(value) < min)) || (JR.length(value) > max))) {
                return false
            }
            if (!this.isNumber(value)) {
                return false
            }
        }
        return true
    }
    

    isEmpty(string) {
        if (((_tsUtil.compareTo(string, _stringUtil.NULL_STRING) != 0) && (_tsUtil.compareTo(string, _stringUtil.EMPTY_STRING) != 0))) {
            return false
        } else {
            return true
        }
    }
}

import "../../../../org/allbinary/TsUtil" for TsUtil
import "./StringUtil" for StringUtil

