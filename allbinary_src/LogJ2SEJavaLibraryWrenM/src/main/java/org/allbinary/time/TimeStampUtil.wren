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

//ActualPlatform
class TimeStampUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = TimeStampUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  simpleDataFormat { _simpleDataFormat }
  simpleDataFormat=(value) { _simpleDataFormat = value }

  initFields_TimeStampUtil() {
    _simpleDataFormat = null
        _simpleDataFormat = SimpleDateFormat.new("yyyy-MM-dd HH:mm:ss.SSS")
  }
    

    static getInstance() {
        return TimeStampUtil.instance
    }
    

    construct new() {
    super()
    initFields_TimeStampUtil()
    }
    

    getAsString() {
        var calendar = Calendar.getInstance()
        var date = calendar.getTime()
        return _simpleDataFormat.format(date)
    }
}

import "../../../java/text/SimpleDateFormat" for SimpleDateFormat
import "../../../java/util/Calendar" for Calendar
import "../../../java/util/Date" for Date

