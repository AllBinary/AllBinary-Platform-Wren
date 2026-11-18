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

class GameNotification is JObject {
    static NULL_GAME_NOTIFICATION_EVENT {
    if (__NULL_GAME_NOTIFICATION_EVENT_set == null) {
      __NULL_GAME_NOTIFICATION_EVENT_set = true
      __NULL_GAME_NOTIFICATION_EVENT = GameNotificationEvent.new(NullUtil.getInstance().NULL_OBJECT, StringUtil.getInstance().EMPTY_STRING, 0, BasicColorFactory.getInstance().RED, BooleanFactory.getInstance().FALSE)
    }
    return __NULL_GAME_NOTIFICATION_EVENT
  }
  static NULL_GAME_NOTIFICATION_EVENT=(value) {
    __NULL_GAME_NOTIFICATION_EVENT_set = true
    __NULL_GAME_NOTIFICATION_EVENT = value
  }
  stringList { _stringList }
  stringList=(value) { _stringList = value }
  timeList { _timeList }
  timeList=(value) { _timeList = value }
  colorList { _colorList }
  colorList=(value) { _colorList = value }

  initFields_GameNotification() {
    _stringList = null
    _timeList = null
    _colorList = null
        _stringList = BasicArrayListD.new()
        _timeList = BasicArrayListD.new()
        _colorList = BasicArrayListD.new()
  }

  construct new() {
    super()
    initFields_GameNotification()
  }
    

    add(string, seconds, basicColor) {
        if (!_stringList.contains(string)) {
            _stringList.add(string)
            _timeList.add(seconds)
            _colorList.add(basicColor)
        }
    }
    

    clear() {
        _stringList.clear()
        _timeList.clear()
        _colorList.clear()
    }
    

    getSize() {
        return _stringList.size()
    }
}

import "../../../../../../../../org/allbinary/game/layer/hud/event/GameNotificationEvent" for GameNotificationEvent
import "../../../../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../../../../org/allbinary/logic/java/bool/BooleanFactory" for BooleanFactory
import "../../../../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../../../../../../java/lang/Integer" for Integer

