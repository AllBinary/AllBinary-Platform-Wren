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
// package org.allbinary.game.state

import "../../../../allbinary_java" for JObject, JException, JR

class GameStateFactory is JObject {
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
  index { _index }
  index=(value) { _index = value }
  NO_GAME_STATE { _NO_GAME_STATE }
  NO_GAME_STATE=(value) { _NO_GAME_STATE = value }
  PLAYING_GAME_STATE { _PLAYING_GAME_STATE }
  PLAYING_GAME_STATE=(value) { _PLAYING_GAME_STATE = value }
  SHOW_END_RESULT_GAME_STATE { _SHOW_END_RESULT_GAME_STATE }
  SHOW_END_RESULT_GAME_STATE=(value) { _SHOW_END_RESULT_GAME_STATE = value }
  SHOW_HIGH_SCORE_GAME_STATE { _SHOW_HIGH_SCORE_GAME_STATE }
  SHOW_HIGH_SCORE_GAME_STATE=(value) { _SHOW_HIGH_SCORE_GAME_STATE = value }

  initFields_GameStateFactory() {
    _index = 0
    _NO_GAME_STATE = null
    _PLAYING_GAME_STATE = null
    _SHOW_END_RESULT_GAME_STATE = null
    _SHOW_HIGH_SCORE_GAME_STATE = null
        _index = 0
        _NO_GAME_STATE = this.createGameState("NO_GAME_STATE")
        _PLAYING_GAME_STATE = this.createGameState("PLAYING_GAME_STATE")
        _SHOW_END_RESULT_GAME_STATE = this.createGameState("SHOW_END_RESULT_GAME_STATE")
        _SHOW_HIGH_SCORE_GAME_STATE = this.createGameState("SHOW_HIGH_SCORE_GAME_STATE")
  }
    

    static getInstance() {
        if ((GameStateFactory.instance == NullUtil.getInstance().NULL_OBJECT)) {
            GameStateFactory.instance = GameStateFactory.new()
        }
        return GameStateFactory.instance
    }
    

    construct new() {
    super()
    initFields_GameStateFactory()
    }
    

    createGameState(name) {
        return GameState.new(name, Fn.new {
var jold = _index
_index = JR.i32(jold + 1)
return jold
}.call())
    }
}

import "../../../../org/allbinary/logic/NullUtil" for NullUtil
import "./GameState" for GameState

