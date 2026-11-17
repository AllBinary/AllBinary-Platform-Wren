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
// package org.allbinary.logic.communication.log

import "../../../../../allbinary_java" for JObject, JException, JR

//ActualPlatform
class LogUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = LogUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_LogUtil() {
  }
    

    static getInstance() {
        return LogUtil.instance
    }
    

    construct new() {
    super()
    initFields_LogUtil()
    }
    

    putP(log) {
    }
    

    putF(specialMessage, anyType, functionName) {
    }
    

    putFS(specialMessage, className, functionName) {
    }
    

    put(specialMessage, anyType, functionName, exception) {
    }
}

import "./Log" for Log

