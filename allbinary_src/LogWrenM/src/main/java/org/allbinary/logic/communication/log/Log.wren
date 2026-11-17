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

class Log is JObject {
  logFormatUtil { _logFormatUtil }
  logFormatUtil=(value) { _logFormatUtil = value }
  specialMessage { _specialMessage }
  specialMessage=(value) { _specialMessage = value }
  anyType { _anyType }
  anyType=(value) { _anyType = value }
  functionName { _functionName }
  functionName=(value) { _functionName = value }
  exception { _exception }
  exception=(value) { _exception = value }

  initFields_Log() {
    _logFormatUtil = null
    _specialMessage = null
    _anyType = null
    _functionName = null
    _exception = null
        _logFormatUtil = LogFormatUtil.getInstance()
        
        
        
        
  }
    

    construct new(specialMessage, anyType, functionName, exception) {
    super()
    initFields_Log()
        _specialMessage = specialMessage
        _anyType = anyType
        _functionName = functionName
        _exception = exception
    }
    

    getSpecialMessage() {
        return _specialMessage
    }
    

    getObject() {
        return _anyType
    }
    

    getFunctionName() {
        return _functionName
    }
    

    getThrowable() {
        return _exception
    }
    

    toString() {
        var className = CommonStrings.getInstance().EMPTY
        var clazz = JR.className(_anyType)
        if ((clazz.getName() != null)) {
            className = clazz.getName()
        }
        return _logFormatUtil.get(className, _functionName, _specialMessage, _exception)
    }
}

import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/logic/communication/log/LogFormatUtil" for LogFormatUtil

