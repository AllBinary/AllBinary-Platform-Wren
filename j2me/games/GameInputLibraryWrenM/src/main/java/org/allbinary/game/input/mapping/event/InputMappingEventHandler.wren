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
// package org.allbinary.game.input.mapping.event

import "../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../org/allbinary/logic/util/event/handler/BasicEventHandler" for BasicEventHandler

class InputMappingEventHandler is BasicEventHandler {
    static gameKeyEventHandler {
    if (__gameKeyEventHandler_set == null) {
      __gameKeyEventHandler_set = true
      __gameKeyEventHandler = InputMappingEventHandler.new()
    }
    return __gameKeyEventHandler
  }
  static gameKeyEventHandler=(value) {
    __gameKeyEventHandler_set = true
    __gameKeyEventHandler = value
  }

  initFields_InputMappingEventHandler() {
  }
    

    construct new() {
    super()
    initFields_InputMappingEventHandler()
    }
    

    static getInstance() {
        return InputMappingEventHandler.gameKeyEventHandler
    }
    

    process(eventObject, eventListenerInterface) {
        var inputMappingEventListenerInterface = eventListenerInterface
        inputMappingEventListenerInterface.onInputMappingEvent(eventObject)
    }
}

import "../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../../../org/allbinary/logic/util/event/EventListenerInterface" for EventListenerInterface
import "./InputMappingEventListenerInterface" for InputMappingEventListenerInterface
import "./InputMappingEvent" for InputMappingEvent

