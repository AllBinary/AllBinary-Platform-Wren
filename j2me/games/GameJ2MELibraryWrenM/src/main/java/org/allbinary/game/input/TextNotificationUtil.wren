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
// package org.allbinary.game.input

import "../../../../allbinary_java" for JObject, JException, JR

class TextNotificationUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = TextNotificationUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  TWO { _TWO }
  TWO=(value) { _TWO = value }
  FALSE { _FALSE }
  FALSE=(value) { _FALSE = value }
  gameNotificationEventHandler { _gameNotificationEventHandler }
  gameNotificationEventHandler=(value) { _gameNotificationEventHandler = value }

  initFields_TextNotificationUtil() {
    _TWO = null
    _FALSE = null
    _gameNotificationEventHandler = null
        _TWO = SmallIntegerSingletonFactory.getInstance().getAt(2)
        _FALSE = BooleanFactory.getInstance().FALSE
        _gameNotificationEventHandler = GameNotificationEventHandler.getInstance()
  }

  construct new() {
    super()
    initFields_TextNotificationUtil()
  }
    

    static getInstance() {
        return TextNotificationUtil.instance
    }
    

    fireError(message) {
        PrimaryPlayerQueueFactory.getInstance().add(ErrorSound.getInstance())
        this.fire(message)
    }
    

    fireNew(message) {
        PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance())
        this.fire(message)
    }
    

    fireSuccess(message) {
        PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance())
        this.fire(message)
    }
    

    fire(message) {
        var gameNotificationEvent = GameNotificationEvent.new(this, message, _TWO, BasicColorFactory.getInstance().RED, _FALSE)
        _gameNotificationEventHandler.fireEvent(gameNotificationEvent)
    }
}

import "../../../../org/allbinary/game/layer/hud/event/GameNotificationEvent" for GameNotificationEvent
import "../../../../org/allbinary/game/layer/hud/event/GameNotificationEventHandler" for GameNotificationEventHandler
import "../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../org/allbinary/logic/java/bool/BooleanFactory" for BooleanFactory
import "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../org/allbinary/media/audio/ErrorSound" for ErrorSound
import "../../../../org/allbinary/media/audio/PrimaryPlayerQueueFactory" for PrimaryPlayerQueueFactory
import "../../../../org/allbinary/media/audio/SelectSound" for SelectSound
import "../../../../java/lang/Integer" for Integer
import "../../../../java/lang/Boolean" for Boolean

