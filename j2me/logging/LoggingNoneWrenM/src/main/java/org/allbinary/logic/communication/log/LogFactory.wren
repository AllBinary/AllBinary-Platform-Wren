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
class LogFactory is JObject {
    static LOG {
    if (__LOG_set == null) {
      __LOG_set = true
      __LOG = Log.new(StringUtil.getInstance().EMPTY_STRING, NullUtil.getInstance().NULL_OBJECT, StringUtil.getInstance().EMPTY_STRING, NullUtil.getInstance().NULL_OBJECT)
    }
    return __LOG
  }
  static LOG=(value) {
    __LOG_set = true
    __LOG = value
  }

  initFields_LogFactory() {
  }

  construct new() {
    super()
    initFields_LogFactory()
  }
    

    static getInstanceD() {
        var stringUtil = StringUtil.getInstance()
        var nullUtil = NullUtil.getInstance()
        return Log.new(stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT, stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT)
    }
    

    static getInstance(specialMessage, anyType, functionName, exception) {
        return LogFactory.LOG
    }
    

    static getInstanceF(specialMessage, anyType, functionName) {
        return LogFactory.LOG
    }
}

import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./Log" for Log

