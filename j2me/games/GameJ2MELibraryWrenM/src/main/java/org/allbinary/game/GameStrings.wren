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

class GameStrings is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GameStrings.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  PROCESS_TICK { _PROCESS_TICK }
  PROCESS_TICK=(value) { _PROCESS_TICK = value }
  ON_GAME_INITIALIZED { _ON_GAME_INITIALIZED }
  ON_GAME_INITIALIZED=(value) { _ON_GAME_INITIALIZED = value }
  UPDATESURFACE { _UPDATESURFACE }
  UPDATESURFACE=(value) { _UPDATESURFACE = value }
  ON_SET_DISPLAYABLE { _ON_SET_DISPLAYABLE }
  ON_SET_DISPLAYABLE=(value) { _ON_SET_DISPLAYABLE = value }
  UNPAUSE { _UNPAUSE }
  UNPAUSE=(value) { _UNPAUSE = value }
  TOGGLE_MENU { _TOGGLE_MENU }
  TOGGLE_MENU=(value) { _TOGGLE_MENU = value }
  SET_GAME_OVER { _SET_GAME_OVER }
  SET_GAME_OVER=(value) { _SET_GAME_OVER = value }
  GAME_STATE { _GAME_STATE }
  GAME_STATE=(value) { _GAME_STATE = value }
  SET_GAME_STATE { _SET_GAME_STATE }
  SET_GAME_STATE=(value) { _SET_GAME_STATE = value }
  STOP_GAME_CANVAS_RUNNABLE_INTERFACE { _STOP_GAME_CANVAS_RUNNABLE_INTERFACE }
  STOP_GAME_CANVAS_RUNNABLE_INTERFACE=(value) { _STOP_GAME_CANVAS_RUNNABLE_INTERFACE = value }

  initFields_GameStrings() {
    _PROCESS_TICK = null
    _ON_GAME_INITIALIZED = null
    _UPDATESURFACE = null
    _ON_SET_DISPLAYABLE = null
    _UNPAUSE = null
    _TOGGLE_MENU = null
    _SET_GAME_OVER = null
    _GAME_STATE = null
    _SET_GAME_STATE = null
    _STOP_GAME_CANVAS_RUNNABLE_INTERFACE = null
        _PROCESS_TICK = "processTick"
        _ON_GAME_INITIALIZED = "onGameInitialized"
        _UPDATESURFACE = "updateSurface"
        _ON_SET_DISPLAYABLE = "onSetDisplayable"
        _UNPAUSE = "unPause"
        _TOGGLE_MENU = "toggleMenu"
        _SET_GAME_OVER = "setGameOver"
        _GAME_STATE = "Game State: "
        _SET_GAME_STATE = "setGameState"
        _STOP_GAME_CANVAS_RUNNABLE_INTERFACE = "stopGameCanvasRunnableInterface"
  }

  construct new() {
    super()
    initFields_GameStrings()
  }
    

    static getInstance() {
        return GameStrings.instance
    }
}


