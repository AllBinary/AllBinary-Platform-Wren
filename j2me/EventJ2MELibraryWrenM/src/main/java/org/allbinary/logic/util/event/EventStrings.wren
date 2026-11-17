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
// package org.allbinary.logic.util.event

import "../../../../../allbinary_java" for JObject, JException, JR

class EventStrings is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = EventStrings.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  PERFORMANCE_MESSAGE { _PERFORMANCE_MESSAGE }
  PERFORMANCE_MESSAGE=(value) { _PERFORMANCE_MESSAGE = value }
  TOTAL_LISTENERS { _TOTAL_LISTENERS }
  TOTAL_LISTENERS=(value) { _TOTAL_LISTENERS = value }
  LISTENER_LABEL { _LISTENER_LABEL }
  LISTENER_LABEL=(value) { _LISTENER_LABEL = value }
  FIRE_EVENT { _FIRE_EVENT }
  FIRE_EVENT=(value) { _FIRE_EVENT = value }

  initFields_EventStrings() {
    _PERFORMANCE_MESSAGE = null
    _TOTAL_LISTENERS = null
    _LISTENER_LABEL = null
    _FIRE_EVENT = null
        _PERFORMANCE_MESSAGE = "Use Custom onEvent Methods for needed optimization"
        _TOTAL_LISTENERS = "Total Listeners: "
        _LISTENER_LABEL = " Listener: "
        _FIRE_EVENT = "fireEvent"
  }

  construct new() {
    super()
    initFields_EventStrings()
  }
    

    static getInstance() {
        return EventStrings.instance
    }
}


