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
import "../../../../../../../../org/allbinary/game/graphics/hud/BasicHud" for BasicHud

class GameNotificationHud is BasicHud {
    static NULL_GAME_NOTIFICATION {
    if (__NULL_GAME_NOTIFICATION_set == null) {
      __NULL_GAME_NOTIFICATION_set = true
      __NULL_GAME_NOTIFICATION = GameNotificationHud.new(BasicHudFactory.getInstance().TOPCENTER, BasicHudFactory.getInstance().HORIZONTAL, 0, BasicColorFactory.getInstance().RED)
    }
    return __NULL_GAME_NOTIFICATION
  }
  static NULL_GAME_NOTIFICATION=(value) {
    __NULL_GAME_NOTIFICATION_set = true
    __NULL_GAME_NOTIFICATION = value
  }
  METHOD_NAME { _METHOD_NAME }
  METHOD_NAME=(value) { _METHOD_NAME = value }
  lastGameNotificationEvent { _lastGameNotificationEvent }
  lastGameNotificationEvent=(value) { _lastGameNotificationEvent = value }

  initFields_GameNotificationHud() {
    _METHOD_NAME = null
    _lastGameNotificationEvent = null
        _METHOD_NAME = "onGameNotificationEvent"
        _lastGameNotificationEvent = GameNotification.NULL_GAME_NOTIFICATION_EVENT
  }
    

    construct new(location, direction, bufferZone, basicColor) {
        super(location, direction, bufferZone, basicColor)
        initFields_GameNotificationHud()
    }
    

    onEvent(eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)
    }
    

    onGameNotificationEvent(gameNotificationEvent) {
        if ((_lastGameNotificationEvent != gameNotificationEvent)) {
            _lastGameNotificationEvent = gameNotificationEvent
            this.logUtil.putF(gameNotificationEvent.getString(), this, _METHOD_NAME)
        }
        this.add(gameNotificationEvent.getString(), gameNotificationEvent.getSeconds(), gameNotificationEvent.getBasicColorP(), gameNotificationEvent.getPermanent())
    }
    

    add(string, seconds, basicColor, permanent) {
    }
    

    processTick() {
    }
    

    paint(graphics) {
    }
    

    clear() {
    }
}

import "../../../../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../../../../org/allbinary/game/graphics/hud/BasicHudFactory" for BasicHudFactory
import "../../../../../../../../org/allbinary/game/layer/hud/event/GameNotificationEvent" for GameNotificationEvent
import "../../../../../../../../org/allbinary/game/layer/hud/event/GameNotificationListenerInterface" for GameNotificationListenerInterface
import "../../../../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "../../../../../../../../java/lang/Integer" for Integer
import "../../../../../../../../java/lang/Boolean" for Boolean
import "./GameNotification" for GameNotification

