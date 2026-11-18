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

class PlayerTypesFactory is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = PlayerTypesFactory.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  PLAYER_TYPE_ONE { _PLAYER_TYPE_ONE }
  PLAYER_TYPE_ONE=(value) { _PLAYER_TYPE_ONE = value }
  PLAYER_TYPE_TWO { _PLAYER_TYPE_TWO }
  PLAYER_TYPE_TWO=(value) { _PLAYER_TYPE_TWO = value }
  PLAYER_TYPE_THREE { _PLAYER_TYPE_THREE }
  PLAYER_TYPE_THREE=(value) { _PLAYER_TYPE_THREE = value }

  initFields_PlayerTypesFactory() {
    _PLAYER_TYPE_ONE = null
    _PLAYER_TYPE_TWO = null
    _PLAYER_TYPE_THREE = null
        _PLAYER_TYPE_ONE = PlayerType.new("Player Type One", 0)
        _PLAYER_TYPE_TWO = PlayerType.new("Player Type Two", 1)
        _PLAYER_TYPE_THREE = PlayerType.new("Player Type Three", 2)
  }

  construct new() {
    super()
    initFields_PlayerTypesFactory()
  }
    

    static getInstance() {
        return PlayerTypesFactory.SINGLETON
    }
}

import "./PlayerType" for PlayerType

