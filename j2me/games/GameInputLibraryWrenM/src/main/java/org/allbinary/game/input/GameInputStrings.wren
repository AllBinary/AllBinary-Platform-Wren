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
// package org.allbinary.game.input

import "../../../../allbinary_java" for JObject, JException, JR

class GameInputStrings is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GameInputStrings.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  PROCESS_INPUT { _PROCESS_INPUT }
  PROCESS_INPUT=(value) { _PROCESS_INPUT = value }
  KEY_PRESSED { _KEY_PRESSED }
  KEY_PRESSED=(value) { _KEY_PRESSED = value }
  KEY_RELEASED { _KEY_RELEASED }
  KEY_RELEASED=(value) { _KEY_RELEASED = value }
  KEY_REPEATED { _KEY_REPEATED }
  KEY_REPEATED=(value) { _KEY_REPEATED = value }
  ON_PRESS_GAME_KEY { _ON_PRESS_GAME_KEY }
  ON_PRESS_GAME_KEY=(value) { _ON_PRESS_GAME_KEY = value }
  ON_DOWN_GAME_KEY { _ON_DOWN_GAME_KEY }
  ON_DOWN_GAME_KEY=(value) { _ON_DOWN_GAME_KEY = value }
  ON_UP_GAME_KEY { _ON_UP_GAME_KEY }
  ON_UP_GAME_KEY=(value) { _ON_UP_GAME_KEY = value }
  NO_KEY { _NO_KEY }
  NO_KEY=(value) { _NO_KEY = value }
  ADD_KEY_EVENT { _ADD_KEY_EVENT }
  ADD_KEY_EVENT=(value) { _ADD_KEY_EVENT = value }
  REMOVE_KEY_EVENT { _REMOVE_KEY_EVENT }
  REMOVE_KEY_EVENT=(value) { _REMOVE_KEY_EVENT = value }
  STRAFE_LEFT { _STRAFE_LEFT }
  STRAFE_LEFT=(value) { _STRAFE_LEFT = value }
  STRAFE_RIGHT { _STRAFE_RIGHT }
  STRAFE_RIGHT=(value) { _STRAFE_RIGHT = value }
  PROCESS_MOTION_INPUT { _PROCESS_MOTION_INPUT }
  PROCESS_MOTION_INPUT=(value) { _PROCESS_MOTION_INPUT = value }
  UDPATE_CURRENT_TOUCH_INPUT_FACTORY { _UDPATE_CURRENT_TOUCH_INPUT_FACTORY }
  UDPATE_CURRENT_TOUCH_INPUT_FACTORY=(value) { _UDPATE_CURRENT_TOUCH_INPUT_FACTORY = value }
  ENABLE_PLAYER_GAME_INPUTS { _ENABLE_PLAYER_GAME_INPUTS }
  ENABLE_PLAYER_GAME_INPUTS=(value) { _ENABLE_PLAYER_GAME_INPUTS = value }
  ENABLE_PLAYER_GAME_INPUT { _ENABLE_PLAYER_GAME_INPUT }
  ENABLE_PLAYER_GAME_INPUT=(value) { _ENABLE_PLAYER_GAME_INPUT = value }

  initFields_GameInputStrings() {
    _PROCESS_INPUT = null
    _KEY_PRESSED = null
    _KEY_RELEASED = null
    _KEY_REPEATED = null
    _ON_PRESS_GAME_KEY = null
    _ON_DOWN_GAME_KEY = null
    _ON_UP_GAME_KEY = null
    _NO_KEY = null
    _ADD_KEY_EVENT = null
    _REMOVE_KEY_EVENT = null
    _STRAFE_LEFT = null
    _STRAFE_RIGHT = null
    _PROCESS_MOTION_INPUT = null
    _UDPATE_CURRENT_TOUCH_INPUT_FACTORY = null
    _ENABLE_PLAYER_GAME_INPUTS = null
    _ENABLE_PLAYER_GAME_INPUT = null
        _PROCESS_INPUT = "processInput"
        _KEY_PRESSED = "keyPressed"
        _KEY_RELEASED = "keyReleased"
        _KEY_REPEATED = "keyRepeated"
        _ON_PRESS_GAME_KEY = "onPressGameKeyEvent"
        _ON_DOWN_GAME_KEY = "onDownGameKeyEvent"
        _ON_UP_GAME_KEY = "onUpGameKeyEvent"
        _NO_KEY = "Key Code Not Mapped For Game: "
        _ADD_KEY_EVENT = "addGameKeyEvent"
        _REMOVE_KEY_EVENT = "removeGameKeyEvent"
        _STRAFE_LEFT = "strafeLeft"
        _STRAFE_RIGHT = "strafeRight"
        _PROCESS_MOTION_INPUT = "processMotionInput"
        _UDPATE_CURRENT_TOUCH_INPUT_FACTORY = "updateCurrentTouchInputFactory"
        _ENABLE_PLAYER_GAME_INPUTS = "Enabling PlayerGameInputs: "
        _ENABLE_PLAYER_GAME_INPUT = "Enabling PlayerGameInput: "
  }

  construct new() {
    super()
    initFields_GameInputStrings()
  }
    

    static getInstance() {
        return GameInputStrings.instance
    }
}


