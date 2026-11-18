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
// package org.allbinary.logic.system.security.licensing

import "../../../../../../allbinary_java" for JObject, JException, JR

class LockedFeatureNotificationUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = LockedFeatureNotificationUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  gameNotificationEvent { _gameNotificationEvent }
  gameNotificationEvent=(value) { _gameNotificationEvent = value }

  initFields_LockedFeatureNotificationUtil() {
    _gameNotificationEvent = null
        _gameNotificationEvent = GameNotificationEvent.new(this, LicenseStrings.getInstance().LOCKED, SmallIntegerSingletonFactory.getInstance().getAt(3), BasicColorFactory.getInstance().RED, BooleanFactory.getInstance().FALSE)
  }

  construct new() {
    super()
    initFields_LockedFeatureNotificationUtil()
  }
    

    static getInstance() {
        return LockedFeatureNotificationUtil.instance
    }
    

    fire() {
        PrimaryPlayerQueueFactory.getInstance().add(ErrorSound.getInstance())
        GameNotificationEventHandler.getInstance().fireEvent(_gameNotificationEvent)
    }
    

    fireWithColor(basicColor) {
        PrimaryPlayerQueueFactory.getInstance().add(ErrorSound.getInstance())
        _gameNotificationEvent.setBasicColorP(basicColor)
        GameNotificationEventHandler.getInstance().fireEvent(_gameNotificationEvent)
    }
}

import "../../../../../../org/allbinary/game/layer/hud/event/GameNotificationEvent" for GameNotificationEvent
import "../../../../../../org/allbinary/game/layer/hud/event/GameNotificationEventHandler" for GameNotificationEventHandler
import "../../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../../org/allbinary/logic/java/bool/BooleanFactory" for BooleanFactory
import "../../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../../../org/allbinary/media/audio/ErrorSound" for ErrorSound
import "../../../../../../org/allbinary/media/audio/PrimaryPlayerQueueFactory" for PrimaryPlayerQueueFactory
import "./LicenseStrings" for LicenseStrings

