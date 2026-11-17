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
// package org.allbinary.time

import "../../../allbinary_java" for JObject, JException, JR
import "./TimeDelayHelper" for TimeDelayHelper

class NoTimeDelayHelper is TimeDelayHelper {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = NoTimeDelayHelper.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }

  initFields_NoTimeDelayHelper() {
  }
    

    construct new() {
        super(0)
    }
    

    isTimeTNT() {
        return true
    }
    

    isTimeSinceTNT(delay) {
        return true
    }
    

    isTime(currentTime) {
        return true
    }
    

    isTimeSince(delay, currentTime) {
        return true
    }
}


