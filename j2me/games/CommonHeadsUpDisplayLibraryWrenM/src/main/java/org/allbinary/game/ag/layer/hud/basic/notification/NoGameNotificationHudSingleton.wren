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
// package org.allbinary.game.ag.layer.hud.basic.notification

import "../../../../../../../../allbinary_java" for JObject, JException, JR

class NoGameNotificationHudSingleton is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = NoGameNotificationHudSingleton.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  gameNotificationHud { _gameNotificationHud }
  gameNotificationHud=(value) { _gameNotificationHud = value }

  initFields_NoGameNotificationHudSingleton() {
    _logUtil = null
    _gameNotificationHud = null
        _logUtil = LogUtil.getInstance()
        _gameNotificationHud = GameNotificationHud.NULL_GAME_NOTIFICATION
  }
    

    static getInstance() {
        return NoGameNotificationHudSingleton.instance
    }
    

    construct new() {
    super()
    initFields_NoGameNotificationHudSingleton()
        var jerror0 = Fiber.new {
            var basicHudFactory = BasicHudFactory.getInstance()
            _gameNotificationHud = NoGameGameNotificationHud.new()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)
        }
    }
    

    getGameNotificationHud() {
        return _gameNotificationHud
    }
}

import "../../../../../../../../org/allbinary/game/graphics/hud/BasicHudFactory" for BasicHudFactory
import "../../../../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./GameNotificationHud" for GameNotificationHud
import "./NoGameGameNotificationHud" for NoGameGameNotificationHud

