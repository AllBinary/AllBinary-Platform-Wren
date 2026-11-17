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
  logFormatUtil { _logFormatUtil }
  logFormatUtil=(value) { _logFormatUtil = value }
  LOG_SUCCESS { _LOG_SUCCESS }
  LOG_SUCCESS=(value) { _LOG_SUCCESS = value }

  initFields_LogUtil() {
    _logFormatUtil = null
    _LOG_SUCCESS = null
        _logFormatUtil = LogFormatUtil.getInstance()
        _LOG_SUCCESS = "org.allbinary: "
  }
    

    static getInstance() {
        return LogUtil.instance
    }
    

    construct new() {
    super()
    initFields_LogUtil()
    }
    

    putL(log) {
        if ((log == LogFactory.LOG)) {
            return
        }
        var exception = log.getThrowable()
        if ((exception == null)) {
            return
        }
        var specialMessage = log.getSpecialMessage()
        var anyType = log.getObject()
        var functionName = log.getFunctionName()
        this.put(specialMessage, anyType, functionName, exception)
    }
    

    putF(specialMessage, anyType, functionName) {
    }
    

    putFS(specialMessage, className, functionName) {
    }
    

    put(specialMessage, anyType, functionName, exception) {
        var className = CommonStrings.getInstance().EMPTY
        if ((JR.className(anyType) != null)) {
            className = JR.className(anyType)
        }
        var message = _logFormatUtil.get(className, functionName, specialMessage, exception)
        System.print(_LOG_SUCCESS)
        System.print(message)
    }
}

import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../java/lang/System" for JSystem
import "./LogFormatUtil" for LogFormatUtil
import "./LogFactory" for LogFactory
import "./Log" for Log

