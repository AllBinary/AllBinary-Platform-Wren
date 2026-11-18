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
// package org.allbinary.game.configuration.event

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/logic/util/event/handler/BasicEventHandler" for BasicEventHandler

class GameFeatureEventHandler is BasicEventHandler {
    static gameKeyEventHandler {
    if (__gameKeyEventHandler_set == null) {
      __gameKeyEventHandler_set = true
      __gameKeyEventHandler = GameFeatureEventHandler.new()
    }
    return __gameKeyEventHandler
  }
  static gameKeyEventHandler=(value) {
    __gameKeyEventHandler_set = true
    __gameKeyEventHandler = value
  }

  initFields_GameFeatureEventHandler() {
  }
    

    construct new() {
    super()
    initFields_GameFeatureEventHandler()
    }
    

    static getInstance() {
        return GameFeatureEventHandler.gameKeyEventHandler
    }
    

    process(eventObject, eventListenerInterface) {
        var gameFeatureListenerInterface = (eventListenerInterface)
        gameFeatureListenerInterface.onGameFeatureChange(eventObject)
    }
}

import "../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../../org/allbinary/logic/util/event/EventListenerInterface" for EventListenerInterface
import "./GameFeatureListenerInterface" for GameFeatureListenerInterface
import "./GameFeatureEvent" for GameFeatureEvent

