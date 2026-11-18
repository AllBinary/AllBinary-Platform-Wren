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

class TimeUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = TimeUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
    static calendar {
    if (__calendar_set == null) {
      __calendar_set = true
      __calendar = Calendar.getInstance()
    }
    return __calendar
  }
  static calendar=(value) {
    __calendar_set = true
    __calendar = value
  }

  initFields_TimeUtil() {
  }

  construct new() {
    super()
    initFields_TimeUtil()
  }
    

    static getInstance() {
        return TimeUtil.instance
    }
    

    setCalendar(calendar, yearString, monthString, dayString, hourString) {
        var year = yearString.intValue()
        var month = monthString.intValue()
        var day = dayString.intValue()
        var hour = hourString.intValue()
        calendar.set(year, month, day, hour, 0)
    }
    

    setCalendarWithTime(calendar, yearString, monthString, dayString, hourString, minuteString, secondString) {
        var year = yearString.intValue()
        var month = monthString.intValue()
        var day = dayString.intValue()
        var hour = hourString.intValue()
        var minute = minuteString.intValue()
        var second = secondString.intValue()
        calendar.set(year, month, day, hour, minute, second)
    }
    

    setExpirationCalendar(calendar, yearsString, monthsString, daysString, hoursString, minutesString, secondsString) {
        var year = (calendar.get(Calendar.YEAR) + yearsString.intValue())
        var month = (calendar.get(Calendar.MONTH) + monthsString.intValue())
        var day = (calendar.get(Calendar.DAY_OF_MONTH) + daysString.intValue())
        var hour = (calendar.get(Calendar.HOUR) + hoursString.intValue())
        var minute = (calendar.get(Calendar.MINUTE) + minutesString.intValue())
        var second = (calendar.get(Calendar.SECOND) + secondsString.intValue())
        calendar.set(year, month, day, hour, minute, second)
    }
    

    getTotalTime(yearString, monthString, dayString, hourString, minuteString, secondString) {
        var time = TimeUtil.calendar.getTimeInMillis()
        this.setExpirationCalendar(TimeUtil.calendar, yearString, monthString, dayString, hourString, minuteString, secondString)
        var timeDelta = TimeUtil.calendar.getTimeInMillis()
        return JR.i32(timeDelta - time)
    }
}

import "../../../java/util/Calendar" for Calendar
import "../../../java/lang/Integer" for Integer

