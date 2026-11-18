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
// package org.allbinary.game.midlet

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/logic/util/event/handler/BasicEventHandler" for BasicEventHandler

class DemoGameMidletEventHandler is BasicEventHandler {
    static gameKeyEventHandler {
    if (__gameKeyEventHandler_set == null) {
      __gameKeyEventHandler_set = true
      __gameKeyEventHandler = DemoGameMidletEventHandler.new()
    }
    return __gameKeyEventHandler
  }
  static gameKeyEventHandler=(value) {
    __gameKeyEventHandler_set = true
    __gameKeyEventHandler = value
  }

  initFields_DemoGameMidletEventHandler() {
  }
    

    construct new() {
    super()
    initFields_DemoGameMidletEventHandler()
    }
    

    static getInstance() {
        return DemoGameMidletEventHandler.gameKeyEventHandler
    }
    

    process(eventObject, eventListenerInterface) {
        var demoGameMidletEventListener = eventListenerInterface
        demoGameMidletEventListener.onDemoGameMidletEvent(eventObject)
    }
}

import "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../org/allbinary/logic/util/event/EventListenerInterface" for EventListenerInterface
import "./DemoGameMidletEventListener" for DemoGameMidletEventListener
import "./DemoGameMidletEvent" for DemoGameMidletEvent

