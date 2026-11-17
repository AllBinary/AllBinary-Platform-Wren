/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.logic

import "../../../allbinary_java" for JObject, JException, JR

//ActualPlatform
class NullUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = NullUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  NULL_OBJECT { _NULL_OBJECT }
  NULL_OBJECT=(value) { _NULL_OBJECT = value }
  NULL_CLASS { _NULL_CLASS }
  NULL_CLASS=(value) { _NULL_CLASS = value }
  NULL_OBJECT_ARRAY { _NULL_OBJECT_ARRAY }
  NULL_OBJECT_ARRAY=(value) { _NULL_OBJECT_ARRAY = value }
  NULL_CHAR_ARRAY { _NULL_CHAR_ARRAY }
  NULL_CHAR_ARRAY=(value) { _NULL_CHAR_ARRAY = value }
  NULL_BYTE_ARRAY { _NULL_BYTE_ARRAY }
  NULL_BYTE_ARRAY=(value) { _NULL_BYTE_ARRAY = value }
  NULL_SHORT_ARRAY_ARRAY { _NULL_SHORT_ARRAY_ARRAY }
  NULL_SHORT_ARRAY_ARRAY=(value) { _NULL_SHORT_ARRAY_ARRAY = value }
  NULL_INT_ARRAY { _NULL_INT_ARRAY }
  NULL_INT_ARRAY=(value) { _NULL_INT_ARRAY = value }
  NULL_INT_ARRAY_ARRAY { _NULL_INT_ARRAY_ARRAY }
  NULL_INT_ARRAY_ARRAY=(value) { _NULL_INT_ARRAY_ARRAY = value }
  NULL_INT_ARRAY_ARRAY_ARRAY { _NULL_INT_ARRAY_ARRAY_ARRAY }
  NULL_INT_ARRAY_ARRAY_ARRAY=(value) { _NULL_INT_ARRAY_ARRAY_ARRAY = value }
  NULL_FLOAT_ARRAY { _NULL_FLOAT_ARRAY }
  NULL_FLOAT_ARRAY=(value) { _NULL_FLOAT_ARRAY = value }

  initFields_NullUtil() {
    _NULL_OBJECT = null
    _NULL_CLASS = null
    _NULL_OBJECT_ARRAY = null
    _NULL_CHAR_ARRAY = null
    _NULL_BYTE_ARRAY = null
    _NULL_SHORT_ARRAY_ARRAY = null
    _NULL_INT_ARRAY = null
    _NULL_INT_ARRAY_ARRAY = null
    _NULL_INT_ARRAY_ARRAY_ARRAY = null
    _NULL_FLOAT_ARRAY = null
        _NULL_OBJECT = JObject.new()
        _NULL_CLASS = JR.className(_NULL_OBJECT)
        _NULL_OBJECT_ARRAY = List.filled(0, null)
        _NULL_CHAR_ARRAY = List.filled(0, 0)
        _NULL_BYTE_ARRAY = List.filled(0, 0)
        _NULL_SHORT_ARRAY_ARRAY = JR.listOf(0, Fn.new { List.filled(0, 0) })
        _NULL_INT_ARRAY = List.filled(0, 0)
        _NULL_INT_ARRAY_ARRAY = JR.listOf(0, Fn.new { List.filled(0, 0) })
        _NULL_INT_ARRAY_ARRAY_ARRAY = JR.listOf(0, Fn.new { JR.listOf(0, Fn.new { List.filled(0, 0) }) })
        _NULL_FLOAT_ARRAY = List.filled(0, 0.0)
  }

  construct new() {
    super()
    initFields_NullUtil()
  }
    

    static getInstance() {
        return NullUtil.instance
    }
}


