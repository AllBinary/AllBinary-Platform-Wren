/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.logic.communication.log.config.type

import "../../../../../../../allbinary_java" for JObject, JException, JR

class LogConfigTypeFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = LogConfigTypeFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  NO_DESCRIPTION { _NO_DESCRIPTION }
  NO_DESCRIPTION=(value) { _NO_DESCRIPTION = value }
  OS { _OS }
  OS=(value) { _OS = value }
  FACTORYERROR { _FACTORYERROR }
  FACTORYERROR=(value) { _FACTORYERROR = value }
  FILE { _FILE }
  FILE=(value) { _FILE = value }
  FILEERROR { _FILEERROR }
  FILEERROR=(value) { _FILEERROR = value }
  IDLOGGING { _IDLOGGING }
  IDLOGGING=(value) { _IDLOGGING = value }
  REPLACE { _REPLACE }
  REPLACE=(value) { _REPLACE = value }
  REPLACE_INFO { _REPLACE_INFO }
  REPLACE_INFO=(value) { _REPLACE_INFO = value }
  REPLACEERROR { _REPLACEERROR }
  REPLACEERROR=(value) { _REPLACEERROR = value }

  initFields_LogConfigTypeFactory() {
    _NO_DESCRIPTION = null
    _OS = null
    _FACTORYERROR = null
    _FILE = null
    _FILEERROR = null
    _IDLOGGING = null
    _REPLACE = null
    _REPLACE_INFO = null
    _REPLACEERROR = null
        _NO_DESCRIPTION = "No Description"
        _OS = LogConfigType.new("Operating System", _NO_DESCRIPTION)
        _FACTORYERROR = LogConfigType.new("Factory Error", _NO_DESCRIPTION)
        _FILE = LogConfigType.new("File", _NO_DESCRIPTION)
        _FILEERROR = LogConfigType.new("File Error", _NO_DESCRIPTION)
        _IDLOGGING = LogConfigType.new("ID Logging", _NO_DESCRIPTION)
        _REPLACE = LogConfigType.new("Replace", _NO_DESCRIPTION)
        _REPLACE_INFO = LogConfigType.new("Replace Info", _NO_DESCRIPTION)
        _REPLACEERROR = LogConfigType.new("Replace Error", _NO_DESCRIPTION)
  }
    

    static getInstance() {
        return LogConfigTypeFactory.instance
    }
    

    construct new() {
    super()
    initFields_LogConfigTypeFactory()
        LogConfigTypes.LOGGING.add(_OS)
        LogConfigTypes.LOGGING.add(_FACTORYERROR)
    }
}

import "./LogConfigType" for LogConfigType
import "./LogConfigTypes" for LogConfigTypes

