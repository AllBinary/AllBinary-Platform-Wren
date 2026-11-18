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

class GameInfoData is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GameInfoData.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  GAME_TYPE { _GAME_TYPE }
  GAME_TYPE=(value) { _GAME_TYPE = value }
  GAME_MODE { _GAME_MODE }
  GAME_MODE=(value) { _GAME_MODE = value }
  PLAYER_TYPE { _PLAYER_TYPE }
  PLAYER_TYPE=(value) { _PLAYER_TYPE = value }
  HIGHEST_LEVEL { _HIGHEST_LEVEL }
  HIGHEST_LEVEL=(value) { _HIGHEST_LEVEL = value }
  CURRENT_LEVEL { _CURRENT_LEVEL }
  CURRENT_LEVEL=(value) { _CURRENT_LEVEL = value }
  SOFTWARE_INFORMATION { _SOFTWARE_INFORMATION }
  SOFTWARE_INFORMATION=(value) { _SOFTWARE_INFORMATION = value }

  initFields_GameInfoData() {
    _GAME_TYPE = null
    _GAME_MODE = null
    _PLAYER_TYPE = null
    _HIGHEST_LEVEL = null
    _CURRENT_LEVEL = null
    _SOFTWARE_INFORMATION = null
        _GAME_TYPE = "GAME_TYPE"
        _GAME_MODE = "GAME_MODE"
        _PLAYER_TYPE = "PLAYER_TYPE"
        _HIGHEST_LEVEL = "HIGHEST_LEVEL"
        _CURRENT_LEVEL = "CURRENT_LEVEL"
        _SOFTWARE_INFORMATION = "SOFTWARE_INFORMATION"
  }
    

    static getInstance() {
        return GameInfoData.instance
    }
    

    construct new() {
    super()
    initFields_GameInfoData()
    }
}


