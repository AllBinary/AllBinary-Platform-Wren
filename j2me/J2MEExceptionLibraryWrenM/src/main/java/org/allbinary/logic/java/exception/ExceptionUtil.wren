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
// package org.allbinary.logic.java.exception

import "../../../../../allbinary_java" for JObject, JException, JR

//ActualPlatform
class ExceptionUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ExceptionUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  PRETEND_EXCEPTION { _PRETEND_EXCEPTION }
  PRETEND_EXCEPTION=(value) { _PRETEND_EXCEPTION = value }
  NONE { _NONE }
  NONE=(value) { _NONE = value }

  initFields_ExceptionUtil() {
    _PRETEND_EXCEPTION = null
    _NONE = null
        _PRETEND_EXCEPTION = JR.exception("Exception", "Not Really An Exception")
        _NONE = "No Stack Trace"
  }
    

    static getInstance() {
        return ExceptionUtil.instance
    }
    

    construct new() {
    super()
    initFields_ExceptionUtil()
    }
    

    getStackTrace(e) {
        var bs = ByteArrayOutputStream.new()
        e.printStackTrace()
        var output = bs.toString()
        return output
    }
}

import "../../../../../java/io/ByteArrayOutputStream" for ByteArrayOutputStream

