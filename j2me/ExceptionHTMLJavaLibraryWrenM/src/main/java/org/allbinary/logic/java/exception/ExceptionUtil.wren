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
    static PRETEND_EXCEPTION {
    if (__PRETEND_EXCEPTION_set == null) {
      __PRETEND_EXCEPTION_set = true
      __PRETEND_EXCEPTION = JR.exception("Exception", "Not Really An Exception")
    }
    return __PRETEND_EXCEPTION
  }
  static PRETEND_EXCEPTION=(value) {
    __PRETEND_EXCEPTION_set = true
    __PRETEND_EXCEPTION = value
  }
  NONE { _NONE }
  NONE=(value) { _NONE = value }

  initFields_ExceptionUtil() {
    _NONE = null
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
        e.printStackTrace()
        return _NONE
    }
}


