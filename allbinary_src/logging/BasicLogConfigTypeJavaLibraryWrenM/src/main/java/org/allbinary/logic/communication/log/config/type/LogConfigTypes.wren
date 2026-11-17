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
// package org.allbinary.logic.communication.log.config.type

import "../../../../../../../allbinary_java" for JObject, JException, JR

class LogConfigTypes is JObject {
    static LOGGING {
    if (__LOGGING_set == null) {
      __LOGGING_set = true
      __LOGGING = BasicArrayListD.new()
    }
    return __LOGGING
  }
  static LOGGING=(value) {
    __LOGGING_set = true
    __LOGGING = value
  }

  initFields_LogConfigTypes() {
  }
    

    construct new() {
    super()
    initFields_LogConfigTypes()
    }
}

import "../../../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD

