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

class BasicHighScoresGameInfoFactory is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = BasicHighScoresGameInfoFactory.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  MULTI_PLAYER_SERVER { _MULTI_PLAYER_SERVER }
  MULTI_PLAYER_SERVER=(value) { _MULTI_PLAYER_SERVER = value }
  SINGLE_PLAYER_SERVER { _SINGLE_PLAYER_SERVER }
  SINGLE_PLAYER_SERVER=(value) { _SINGLE_PLAYER_SERVER = value }

  initFields_BasicHighScoresGameInfoFactory() {
    _MULTI_PLAYER_SERVER = null
    _SINGLE_PLAYER_SERVER = null
        _MULTI_PLAYER_SERVER = GameInfo.new(GameTypeFactory.getInstance().MULTI_PLAYER, GameMode.SERVER, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0)
        _SINGLE_PLAYER_SERVER = GameInfo.new(GameTypeFactory.getInstance().SINGLE_PLAYER, GameMode.SERVER, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0)
  }

  construct new() {
    super()
    initFields_BasicHighScoresGameInfoFactory()
  }
    

    static getInstance() {
        return BasicHighScoresGameInfoFactory.SINGLETON
    }
}

import "./GameInfo" for GameInfo
import "./GameTypeFactory" for GameTypeFactory
import "./GameMode" for GameMode
import "./PlayerTypesFactory" for PlayerTypesFactory

