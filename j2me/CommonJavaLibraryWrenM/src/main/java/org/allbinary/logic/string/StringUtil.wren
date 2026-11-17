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

class StringUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = StringUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  INIT_STRING { _INIT_STRING }
  INIT_STRING=(value) { _INIT_STRING = value }
  NULL_STRING { _NULL_STRING }
  NULL_STRING=(value) { _NULL_STRING = value }
  EMPTY_STRING { _EMPTY_STRING }
  EMPTY_STRING=(value) { _EMPTY_STRING = value }
  ONE_EMPTY_STRING_ARRAY { _ONE_EMPTY_STRING_ARRAY }
  ONE_EMPTY_STRING_ARRAY=(value) { _ONE_EMPTY_STRING_ARRAY = value }
  ONE_EMPTY_STRING_ARRAY_OF_ARRAYS { _ONE_EMPTY_STRING_ARRAY_OF_ARRAYS }
  ONE_EMPTY_STRING_ARRAY_OF_ARRAYS=(value) { _ONE_EMPTY_STRING_ARRAY_OF_ARRAYS = value }
  stringArray { _stringArray }
  stringArray=(value) { _stringArray = value }

  initFields_StringUtil() {
    _INIT_STRING = null
    _NULL_STRING = null
    _EMPTY_STRING = null
    _ONE_EMPTY_STRING_ARRAY = null
    _ONE_EMPTY_STRING_ARRAY_OF_ARRAYS = null
    _stringArray = null
        _INIT_STRING = ""
        _NULL_STRING = "null"
        _EMPTY_STRING = ""
        _ONE_EMPTY_STRING_ARRAY = [_EMPTY_STRING]
        _ONE_EMPTY_STRING_ARRAY_OF_ARRAYS = JR.listOf(0, Fn.new { List.filled(0, null) })
        _stringArray = List.filled(0, null)
  }
    

    static getInstance() {
        return StringUtil.instance
    }
    

    construct new() {
    super()
    initFields_StringUtil()
    }
    

    getNonNull(string) {
        return string
    }
    

    getArrayInstance() {
        return _stringArray
    }
    

    count(string, aChar) {
        var count = 0
        var size = JR.length(string)
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            if ((JR.charAt(string, index) == aChar)) {
                count = JR.i32(count + 1)
            }
            }
        }
        return count
    }
    

    toString(anyType) {
        if ((anyType != null)) {
            return anyType.toString()
        } else {
            return _NULL_STRING
        }
    }
}


