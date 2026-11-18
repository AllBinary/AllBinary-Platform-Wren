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

class IntermissionFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = IntermissionFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  START_LEVEL_INTERMISSION_GAME_STATE { _START_LEVEL_INTERMISSION_GAME_STATE }
  START_LEVEL_INTERMISSION_GAME_STATE=(value) { _START_LEVEL_INTERMISSION_GAME_STATE = value }
  WAIT_LEVEL_INTERMISSION_GAME_STATE { _WAIT_LEVEL_INTERMISSION_GAME_STATE }
  WAIT_LEVEL_INTERMISSION_GAME_STATE=(value) { _WAIT_LEVEL_INTERMISSION_GAME_STATE = value }
  SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE { _SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE }
  SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE=(value) { _SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE = value }
  SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE { _SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE }
  SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE=(value) { _SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE = value }

  initFields_IntermissionFactory() {
    _START_LEVEL_INTERMISSION_GAME_STATE = null
    _WAIT_LEVEL_INTERMISSION_GAME_STATE = null
    _SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE = null
    _SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE = null
        _START_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("START_LEVEL_INTERMISSION_GAME_STATE")
        _WAIT_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("WAIT_LEVEL_INTERMISSION_GAME_STATE")
        _SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE")
        _SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE")
  }

  construct new() {
    super()
    initFields_IntermissionFactory()
  }
    

    static getInstance() {
        return IntermissionFactory.instance
    }
}

import "../../../org/allbinary/game/state/GameState" for GameState
import "../../../org/allbinary/game/state/GameStateFactory" for GameStateFactory

