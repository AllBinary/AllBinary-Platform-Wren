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
// package org.allbinary.bounds.event

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/logic/util/event/handler/BasicEventHandler" for BasicEventHandler

class BoundsChangeEventHandler is BasicEventHandler {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = BoundsChangeEventHandler.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }

  initFields_BoundsChangeEventHandler() {
  }
    

    construct new() {
    super()
    initFields_BoundsChangeEventHandler()
    }
    

    static getInstance() {
        return BoundsChangeEventHandler.SINGLETON
    }
    

    process(eventObject, eventListenerInterface) {
        var boundsChangeEventListener = eventListenerInterface
        boundsChangeEventListener.onBoundsChangeEvent(eventObject)
    }
}

import "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../org/allbinary/logic/util/event/EventListenerInterface" for EventListenerInterface
import "./BoundsChangeEventListener" for BoundsChangeEventListener
import "./BoundsChangeEvent" for BoundsChangeEvent

