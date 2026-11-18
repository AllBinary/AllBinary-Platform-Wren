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
// package org.allbinary.debug

import "../../../allbinary_java" for JObject, JException, JR

class NoDebug is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = NoDebug.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }

  initFields_NoDebug() {
  }

  construct new() {
    super()
    initFields_NoDebug()
  }
    

    static getInstance() {
        return NoDebug.SINGLETON
    }
    

    start() {
    }
    

    stop() {
    }
    

    getMaxTime() {
        return 10000
    }
    

    getStartTime() {
        return 0
    }
    

    isRunning() {
        return false
    }
}

import "./DebugInterface" for DebugInterface

