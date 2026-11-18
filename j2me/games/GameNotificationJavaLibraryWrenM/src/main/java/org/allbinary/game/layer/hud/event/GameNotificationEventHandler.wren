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
// package org.allbinary.game.layer.hud.event

import "../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../org/allbinary/logic/util/event/handler/BasicEventHandler" for BasicEventHandler

class GameNotificationEventHandler is BasicEventHandler {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GameNotificationEventHandler.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  enabled { _enabled }
  enabled=(value) { _enabled = value }

  initFields_GameNotificationEventHandler() {
    _enabled = false
        _enabled = true
  }
    

    construct new() {
    super()
    initFields_GameNotificationEventHandler()
    }
    

    removeAllListeners() {
        var eventListenerInterface = NullEventListener.NULL_EVENT_LISTENER
        var list = this.eventListenerInterfaceList
        if ((list.size() > 0)) {
            eventListenerInterface = list.objectArray[0]
        }
        super.removeAllListeners()
        if ((eventListenerInterface != NullEventListener.NULL_EVENT_LISTENER)) {
            this.addListenerInterface(eventListenerInterface)
        }
    }
    

    static getInstance() {
        return GameNotificationEventHandler.instance
    }
    

    process(eventObject, eventListenerInterface) {
        if (!_enabled) {
            return
        }
        var gameNotificationListenerInterface = eventListenerInterface
        gameNotificationListenerInterface.onGameNotificationEvent(eventObject)
    }
}

import "../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../../../org/allbinary/logic/util/event/EventListenerInterface" for EventListenerInterface
import "../../../../../../org/allbinary/logic/util/event/NullEventListener" for NullEventListener
import "../../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "./GameNotificationListenerInterface" for GameNotificationListenerInterface
import "./GameNotificationEvent" for GameNotificationEvent

