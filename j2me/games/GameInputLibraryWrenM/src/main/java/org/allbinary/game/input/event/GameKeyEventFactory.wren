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
// package org.allbinary.game.input.event

import "../../../../../allbinary_java" for JObject, JException, JR

class GameKeyEventFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = NullUtil.getInstance().NULL_OBJECT
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  TOUCH_BUTTON_SOURCE_ID { _TOUCH_BUTTON_SOURCE_ID }
  TOUCH_BUTTON_SOURCE_ID=(value) { _TOUCH_BUTTON_SOURCE_ID = value }
  MOTION_GESTURE_SOURCE_ID { _MOTION_GESTURE_SOURCE_ID }
  MOTION_GESTURE_SOURCE_ID=(value) { _MOTION_GESTURE_SOURCE_ID = value }
  MAX_SOURCES { _MAX_SOURCES }
  MAX_SOURCES=(value) { _MAX_SOURCES = value }
  ARRAY { _ARRAY }
  ARRAY=(value) { _ARRAY = value }

  initFields_GameKeyEventFactory() {
    _logUtil = null
    _TOUCH_BUTTON_SOURCE_ID = 0
    _MOTION_GESTURE_SOURCE_ID = 0
    _MAX_SOURCES = 0
    _ARRAY = null
        _logUtil = LogUtil.getInstance()
        _TOUCH_BUTTON_SOURCE_ID = 2
        _MOTION_GESTURE_SOURCE_ID = 3
        _MAX_SOURCES = 4
        _ARRAY = JR.listOf(_MAX_SOURCES, Fn.new { List.filled(InputFactory.getInstance().MAX, null) })
  }
    

    static getInstance() {
        if ((GameKeyEventFactory.instance == NullUtil.getInstance().NULL_OBJECT)) {
            GameKeyEventFactory.instance = GameKeyEventFactory.new()
        }
        return GameKeyEventFactory.instance
    }
    

    construct new() {
    super()
    initFields_GameKeyEventFactory()
    }
    

    init() {
        var nullUtil = NullUtil.getInstance()
        var size = InputFactory.getInstance().MAX
        if (true) {
            var index = _MAX_SOURCES
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            if (true) {
                var index2 = size
                var jfirst = true
                while (true) {
                    jfirst = false
                    if (!((Fn.new {
index2 = JR.i32(index2 - 1)
return index2
}.call() >= 0))) break
                _ARRAY[index][index2] = GameKeyEvent.createEvent(nullUtil.NULL_OBJECT, index, index2)
                }
            }
            }
        }
    }
    

    getInstanceForKey(anyType, key) {
        var gameKeyEvent = _ARRAY[anyType.getSourceId()][key]
        return gameKeyEvent
    }
    

    getInstanceForInput(anyType, input) {
        var gameKeyEvent = _ARRAY[anyType.getSourceId()][input.getId()]
        return gameKeyEvent
    }
}

import "../../../../../org/allbinary/game/input/GameKeyEventSourceInterface" for GameKeyEventSourceInterface
import "../../../../../org/allbinary/game/input/Input" for Input
import "../../../../../org/allbinary/game/input/InputFactory" for InputFactory
import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "./GameKeyEvent" for GameKeyEvent

