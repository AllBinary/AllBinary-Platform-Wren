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
// package org.allbinary.game

import "../../../allbinary_java" for JObject, JException, JR

class GameTypeFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GameTypeFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  NULL_GAME_TYPE_ARRAY { _NULL_GAME_TYPE_ARRAY }
  NULL_GAME_TYPE_ARRAY=(value) { _NULL_GAME_TYPE_ARRAY = value }
  NONE { _NONE }
  NONE=(value) { _NONE = value }
  SINGLE_PLAYER { _SINGLE_PLAYER }
  SINGLE_PLAYER=(value) { _SINGLE_PLAYER = value }
  MULTI_PLAYER { _MULTI_PLAYER }
  MULTI_PLAYER=(value) { _MULTI_PLAYER = value }
  BOT { _BOT }
  BOT=(value) { _BOT = value }

  initFields_GameTypeFactory() {
    _NULL_GAME_TYPE_ARRAY = null
    _NONE = null
    _SINGLE_PLAYER = null
    _MULTI_PLAYER = null
    _BOT = null
        _NULL_GAME_TYPE_ARRAY = List.filled(0, null)
        _NONE = GameType.new(StringUtil.getInstance().NULL_STRING)
        _SINGLE_PLAYER = GameType.new("Single Player")
        _MULTI_PLAYER = GameType.new("Multi Player")
        _BOT = GameType.new("Artificial Player")
  }

  construct new() {
    super()
    initFields_GameTypeFactory()
  }
    

    static getInstance() {
        return GameTypeFactory.instance
    }
}

import "../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./GameType" for GameType

