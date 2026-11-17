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
class LogFormatUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = LogFormatUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  timeStampUtil { _timeStampUtil }
  timeStampUtil=(value) { _timeStampUtil = value }
  commonSeps { _commonSeps }
  commonSeps=(value) { _commonSeps = value }
  NONE { _NONE }
  NONE=(value) { _NONE = value }
  LOG_ERROR { _LOG_ERROR }
  LOG_ERROR=(value) { _LOG_ERROR = value }
  EMPTY { _EMPTY }
  EMPTY=(value) { _EMPTY = value }
  STACK_TRACE { _STACK_TRACE }
  STACK_TRACE=(value) { _STACK_TRACE = value }
  TIME { _TIME }
  TIME=(value) { _TIME = value }
  CLASS_NAME { _CLASS_NAME }
  CLASS_NAME=(value) { _CLASS_NAME = value }
  FUNCTION_CALL { _FUNCTION_CALL }
  FUNCTION_CALL=(value) { _FUNCTION_CALL = value }
  SPECIAL_MESSAGE { _SPECIAL_MESSAGE }
  SPECIAL_MESSAGE=(value) { _SPECIAL_MESSAGE = value }
  stringUtil { _stringUtil }
  stringUtil=(value) { _stringUtil = value }
  exceptionUtil { _exceptionUtil }
  exceptionUtil=(value) { _exceptionUtil = value }
  nullUtil { _nullUtil }
  nullUtil=(value) { _nullUtil = value }

  initFields_LogFormatUtil() {
    _timeStampUtil = null
    _commonSeps = null
    _NONE = null
    _LOG_ERROR = null
    _EMPTY = null
    _STACK_TRACE = null
    _TIME = null
    _CLASS_NAME = null
    _FUNCTION_CALL = null
    _SPECIAL_MESSAGE = null
    _stringUtil = null
    _exceptionUtil = null
    _nullUtil = null
        _timeStampUtil = TimeStampUtil.getInstance()
        _commonSeps = CommonSeps.getInstance()
        _NONE = "None"
        _LOG_ERROR = "\nLog-Error: "
        _EMPTY = "Empty"
        _STACK_TRACE = "\nStack Trace: "
        _TIME = "Time: "
        _CLASS_NAME = _commonSeps.SPACE
        _FUNCTION_CALL = CommonLabels.getInstance().COLON_SEP
        _SPECIAL_MESSAGE = "> "
        _stringUtil = StringUtil.getInstance()
        _exceptionUtil = ExceptionUtil.getInstance()
        _nullUtil = NullUtil.getInstance()
  }
    

    static getInstance() {
        return LogFormatUtil.instance
    }
    

    construct new() {
    super()
    initFields_LogFormatUtil()
    }
    

    get(className, functionName, specialMessage, exception) {
        var stringBuffer = this.getF(className, functionName)
        stringBuffer.append(this.getO(exception))
        stringBuffer.append(_SPECIAL_MESSAGE)
        stringBuffer.append(specialMessage)
        stringBuffer.append(_commonSeps.NEW_LINE)
        return stringBuffer.toString()
    }
    

    getS(className, functionName, specialMessage) {
        var stringBuffer = this.getF(className, functionName)
        stringBuffer.append(_SPECIAL_MESSAGE)
        stringBuffer.append(specialMessage)
        stringBuffer.append(_commonSeps.NEW_LINE)
        return stringBuffer.toString()
    }
    

    getF(className, functionName) {
        var stringBuffer = StringMaker.new()
        stringBuffer.append(_TIME)
        stringBuffer.append(_timeStampUtil.getAsString())
        stringBuffer.append(_CLASS_NAME)
        stringBuffer.append(className)
        stringBuffer.append(_FUNCTION_CALL)
        stringBuffer.append(functionName)
        return stringBuffer
    }
    

    getO(exception) {
        if ((exception != _nullUtil.NULL_OBJECT)) {
            var stringBuffer = StringMaker.new()
            stringBuffer.append(_LOG_ERROR)
            var exceptionAsString = exception.toString()
            stringBuffer.append(exceptionAsString)
            stringBuffer.append(_STACK_TRACE)
            if ((exception != _nullUtil.NULL_OBJECT)) {
                stringBuffer.append(_exceptionUtil.getStackTrace(exception))
            } else {
                stringBuffer.append(_stringUtil.NULL_STRING)
            }
            return stringBuffer.toString()
        } else {
            return StringUtil.getInstance().EMPTY_STRING
        }
    }
}

import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/logic/java/exception/ExceptionUtil" for ExceptionUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../../org/allbinary/time/TimeStampUtil" for TimeStampUtil

