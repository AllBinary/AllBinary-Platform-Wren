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
// package org.allbinary.game.tracking

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/logic/util/event/handler/BasicEventHandler" for BasicEventHandler

class TrackingEventHandler is BasicEventHandler {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = TrackingEventHandler.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_TrackingEventHandler() {
  }
    

    static getInstance() {
        return TrackingEventHandler.instance
    }
    

    construct new() {
    super()
    initFields_TrackingEventHandler()
    }
    

    process(eventObject, eventListenerInterface) {
        var trackingEventListenerInterface = eventListenerInterface
        trackingEventListenerInterface.onMovement(eventObject)
    }
}

import "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../org/allbinary/logic/util/event/EventListenerInterface" for EventListenerInterface
import "./TrackingEventListenerInterface" for TrackingEventListenerInterface
import "./TrackingEvent" for TrackingEvent

