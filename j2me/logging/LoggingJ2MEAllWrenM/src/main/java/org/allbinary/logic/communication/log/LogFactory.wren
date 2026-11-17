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
    

    static getInstanceNoF(specialMessage, anyType, exception) {
        return Log.new(specialMessage, anyType, StringUtil.getInstance().EMPTY_STRING, exception)
    }
    

    static getInstance(specialMessage, anyType, functionName, exception) {
        return Log.new(specialMessage, anyType, functionName, exception)
    }
    

    static getInstanceF(specialMessage, anyType, functionName) {
        var nullUtil = NullUtil.getInstance()
        return Log.new(specialMessage, anyType, functionName, nullUtil.NULL_OBJECT)
    }
}

import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./Log" for Log

