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
// package org.allbinary.globals

import "../../../allbinary_java" for JObject, JException, JR

class PATH_GLOBALS is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = PATH_GLOBALS.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  DATA_PATH { _DATA_PATH }
  DATA_PATH=(value) { _DATA_PATH = value }
  INIT_PATH { _INIT_PATH }
  INIT_PATH=(value) { _INIT_PATH = value }
  VIEWS_PATH { _VIEWS_PATH }
  VIEWS_PATH=(value) { _VIEWS_PATH = value }
  LOG_PATH { _LOG_PATH }
  LOG_PATH=(value) { _LOG_PATH = value }
  BACKUP_PATH { _BACKUP_PATH }
  BACKUP_PATH=(value) { _BACKUP_PATH = value }

  initFields_PATH_GLOBALS() {
    _DATA_PATH = null
    _INIT_PATH = null
    _VIEWS_PATH = null
    _LOG_PATH = null
    _BACKUP_PATH = null
        
        
        
        
        
  }
    

    static getInstance() {
        return PATH_GLOBALS.instance
    }
    

    construct new() {
    super()
    initFields_PATH_GLOBALS()
        var stringBuffer = StringMaker.new()
        var abPathData = AbPathData.getInstance()
        stringBuffer.append("data")
        stringBuffer.append(abPathData.SEPARATOR)
        _DATA_PATH = stringBuffer.toString()
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(_DATA_PATH)
        stringBuffer.append(CommonStrings.getInstance().INIT)
        stringBuffer.append(abPathData.SEPARATOR)
        _INIT_PATH = stringBuffer.toString()
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(_DATA_PATH)
        stringBuffer.append("log")
        stringBuffer.append(abPathData.SEPARATOR)
        _LOG_PATH = stringBuffer.toString()
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(_DATA_PATH)
        stringBuffer.append("backup")
        stringBuffer.append(abPathData.SEPARATOR)
        _BACKUP_PATH = stringBuffer.toString()
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(_INIT_PATH)
        stringBuffer.append("views")
        stringBuffer.append(abPathData.SEPARATOR)
        _VIEWS_PATH = stringBuffer.toString()
    }
}

import "../../../org/allbinary/logic/io/path/AbPathData" for AbPathData
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/string/CommonStrings" for CommonStrings

