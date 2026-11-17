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
        var specialMessage = log.getSpecialMessage()
        var anyType = log.getObject()
        var functionName = log.getFunctionName()
        var exception = log.getThrowable()
        this.put(specialMessage, anyType, functionName, exception)
    }
    

    putF(specialMessage, anyType, functionName) {
        var className = CommonStrings.getInstance().EMPTY
        if ((JR.className(anyType) != null)) {
            className = StringMaker.new().append(JR.className(anyType)).append(CommonSeps.getInstance().COLON).append(Integer.toHexString(TsUtil.getInstance().hashCode(anyType))).toString()
        }
        var message = _logFormatUtil.getS(className, functionName, specialMessage)
        System.print(_LOG_SUCCESS)
        System.print(message)
    }
    

    putFS(specialMessage, className, functionName) {
        var message = _logFormatUtil.getS(className, functionName, specialMessage)
        System.print(_LOG_SUCCESS)
        System.print(message)
    }
    

    put(specialMessage, anyType, functionName, exception) {
        var className = CommonStrings.getInstance().EMPTY
        if ((JR.className(anyType) != null)) {
            var hashCodeValue = TsUtil.getInstance().hashCode(anyType)
            var hexString = Integer.toHexString(hashCodeValue)
            className = StringMaker.new().append(JR.className(anyType)).append(CommonSeps.getInstance().COLON).append(hexString).toString()
        }
        var message = _logFormatUtil.get(className, functionName, specialMessage, exception)
        System.print(_LOG_SUCCESS)
        System.print(message)
    }
}

import "../../../../../org/allbinary/TsUtil" for TsUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../java/lang/System" for JSystem
import "../../../../../java/lang/Integer" for Integer
import "./LogFormatUtil" for LogFormatUtil
import "./Log" for Log

