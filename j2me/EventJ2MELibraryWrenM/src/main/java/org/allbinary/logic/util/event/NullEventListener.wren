/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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

class NullEventListener is JObject {
    static NULL_EVENT_LISTENER {
    if (__NULL_EVENT_LISTENER_set == null) {
      __NULL_EVENT_LISTENER_set = true
      __NULL_EVENT_LISTENER = NullEventListener.new()
    }
    return __NULL_EVENT_LISTENER
  }
  static NULL_EVENT_LISTENER=(value) {
    __NULL_EVENT_LISTENER_set = true
    __NULL_EVENT_LISTENER = value
  }

  initFields_NullEventListener() {
  }

  construct new() {
    super()
    initFields_NullEventListener()
  }
    

    onEvent(eventObject) {
    }
}

import "./EventListenerInterface" for EventListenerInterface
import "./AllBinaryEventObject" for AllBinaryEventObject

