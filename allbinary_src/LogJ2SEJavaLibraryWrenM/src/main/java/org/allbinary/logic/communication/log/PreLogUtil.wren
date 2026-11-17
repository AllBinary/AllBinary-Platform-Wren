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
class PreLogUtil is JObject {
    static LOG_SUCCESS {
    if (__LOG_SUCCESS_set == null) {
      __LOG_SUCCESS_set = true
      __LOG_SUCCESS = "org.allbinary: "
    }
    return __LOG_SUCCESS
  }
  static LOG_SUCCESS=(value) {
    __LOG_SUCCESS_set = true
    __LOG_SUCCESS = value
  }

  initFields_PreLogUtil() {
  }
    

    construct new() {
    super()
    initFields_PreLogUtil()
    }
    

    static put(specialMessage, anyType, functionName) {
        PreLogUtil.putOE(specialMessage, anyType, functionName, NullUtil.getInstance().NULL_OBJECT)
    }
    

    static putOE(specialMessage, anyType, functionName, exception) {
        var className = CommonStrings.getInstance().EMPTY
        if ((JR.className(anyType) != null)) {
            className = JR.className(anyType)
        }
        var message = LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
        System.print(JR.str(PreLogUtil.LOG_SUCCESS))
        System.print(message)
    }
    

    static putS(specialMessage, className, functionName) {
        PreLogUtil.putSE(specialMessage, className, functionName, NullUtil.getInstance().NULL_OBJECT)
    }
    

    static putSE(specialMessage, className, functionName, exception) {
        var message = LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
        System.print(JR.str(PreLogUtil.LOG_SUCCESS))
        System.print(message)
    }
}

import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../java/lang/System" for JSystem
import "./LogFormatUtil" for LogFormatUtil

