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

  initFields_LogConfigTypeFactory() {
    _NO_DESCRIPTION = null
    _OS = null
    _FACTORYERROR = null
        _NO_DESCRIPTION = "No Description"
        _OS = LogConfigType.new("Operating System", _NO_DESCRIPTION)
        _FACTORYERROR = LogConfigType.new("Factory Error", _NO_DESCRIPTION)
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

