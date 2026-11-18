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
// package org.allbinary.game.input.mapping.event

import "../../../../../../allbinary_java" for JObject, JException, JR

class NullInputMappingEventListener is JObject {
    static NULL_INPUT_MAPPING_EVENT_LISTENER {
    if (__NULL_INPUT_MAPPING_EVENT_LISTENER_set == null) {
      __NULL_INPUT_MAPPING_EVENT_LISTENER_set = true
      __NULL_INPUT_MAPPING_EVENT_LISTENER = NullInputMappingEventListener.new()
    }
    return __NULL_INPUT_MAPPING_EVENT_LISTENER
  }
  static NULL_INPUT_MAPPING_EVENT_LISTENER=(value) {
    __NULL_INPUT_MAPPING_EVENT_LISTENER_set = true
    __NULL_INPUT_MAPPING_EVENT_LISTENER = value
  }

  initFields_NullInputMappingEventListener() {
  }

  construct new() {
    super()
    initFields_NullInputMappingEventListener()
  }
    

    onInputMappingEvent(inputMappingEvent) {
    }
    

    onEvent(eventObject) {
    }
}

import "../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "./InputMappingEventListenerInterface" for InputMappingEventListenerInterface
import "./InputMappingEvent" for InputMappingEvent

