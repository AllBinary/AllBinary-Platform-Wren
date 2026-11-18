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
// package org.allbinary.graphics.displayable.event

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/logic/util/event/handler/BasicEventHandler" for BasicEventHandler

class LastDisplayChangeEventHandler is BasicEventHandler {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = LastDisplayChangeEventHandler.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }

  initFields_LastDisplayChangeEventHandler() {
  }
    

    static getInstance() {
        return LastDisplayChangeEventHandler.SINGLETON
    }
    

    construct new() {
    super()
    initFields_LastDisplayChangeEventHandler()
    }
    

    process(eventObject, eventListenerInterface) {
        var displayChangeEventListener = (eventListenerInterface)
        displayChangeEventListener.onDisplayChangeEvent(eventObject)
    }
}

import "../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../../org/allbinary/logic/util/event/EventListenerInterface" for EventListenerInterface
import "./DisplayChangeEventListener" for DisplayChangeEventListener
import "./DisplayChangeEvent" for DisplayChangeEvent

