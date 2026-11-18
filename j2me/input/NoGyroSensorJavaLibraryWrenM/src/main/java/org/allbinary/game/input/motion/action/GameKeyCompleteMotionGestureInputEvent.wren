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
// package org.allbinary.game.input.motion.action

import "../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../org/allbinary/game/input/CompleteMotionGestureInputEvent" for CompleteMotionGestureInputEvent

class GameKeyCompleteMotionGestureInputEvent is CompleteMotionGestureInputEvent {
  gameKey { _gameKey }
  gameKey=(value) { _gameKey = value }
  gameKeyEvent { _gameKeyEvent }
  gameKeyEvent=(value) { _gameKeyEvent = value }

  initFields_GameKeyCompleteMotionGestureInputEvent() {
    _gameKey = null
    _gameKeyEvent = null
        _gameKey = GameKey.NULL_GAME_KEY
        _gameKeyEvent = GameKeyEvent.NONE
  }
    

    construct new(name, motionGestureInput, inputToGameKeyMapping) {
        super(name, motionGestureInput)
        initFields_GameKeyCompleteMotionGestureInputEvent()
    }
    

    getSourceId() {
        return 0
    }
    

    update() {
    }
    

    setGameKeyEvent(gameKeyEvent) {
        _gameKeyEvent = gameKeyEvent
    }
    

    getGameKeyEvent() {
        return _gameKeyEvent
    }
    

    setGameKey(gameKey) {
        _gameKey = gameKey
    }
    

    getGameKey() {
        return _gameKey
    }
}

import "../../../../../../org/allbinary/game/input/GameKey" for GameKey
import "../../../../../../org/allbinary/game/input/GameKeyEventSourceInterface" for GameKeyEventSourceInterface
import "../../../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../../../org/allbinary/game/input/mapping/InputToGameKeyMapping" for InputToGameKeyMapping
import "../../../../../../org/allbinary/input/motion/gesture/MotionGestureInput" for MotionGestureInput

