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
  gameKeyEventFactory { _gameKeyEventFactory }
  gameKeyEventFactory=(value) { _gameKeyEventFactory = value }
  SOURCE_ID { _SOURCE_ID }
  SOURCE_ID=(value) { _SOURCE_ID = value }
  gameKey { _gameKey }
  gameKey=(value) { _gameKey = value }
  gameKeyEvent { _gameKeyEvent }
  gameKeyEvent=(value) { _gameKeyEvent = value }
  inputToGameKeyMapping { _inputToGameKeyMapping }
  inputToGameKeyMapping=(value) { _inputToGameKeyMapping = value }

  initFields_GameKeyCompleteMotionGestureInputEvent() {
    _gameKeyEventFactory = null
    _SOURCE_ID = 0
    _gameKey = null
    _gameKeyEvent = null
    _inputToGameKeyMapping = null
        _gameKeyEventFactory = GameKeyEventFactory.getInstance()
        _SOURCE_ID = _gameKeyEventFactory.MOTION_GESTURE_SOURCE_ID
        _gameKey = GameKey.NULL_GAME_KEY
        _gameKeyEvent = GameKeyEvent.NONE
        
  }
    

    construct new(name, motionGestureInput, inputToGameKeyMapping) {
        super(name, motionGestureInput)
        initFields_GameKeyCompleteMotionGestureInputEvent()
        _inputToGameKeyMapping = inputToGameKeyMapping
        GameKeyCompleteMotionGestureInputEventFactory.getInstance().add(this)
        this.update()
    }
    

    getSourceId() {
        return _SOURCE_ID
    }
    

    update() {
        var jerror0 = Fiber.new {
            this.setGameKey(_inputToGameKeyMapping.getInstance(this.getMotionGestureInput().getId()))
            this.setGameKeyEvent(_gameKeyEventFactory.getInstanceForInput(this, this.getGameKey()))
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.UPDATE, e)
        }
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
import "../../../../../../org/allbinary/game/input/event/GameKeyEventFactory" for GameKeyEventFactory
import "../../../../../../org/allbinary/game/input/mapping/InputToGameKeyMapping" for InputToGameKeyMapping
import "../../../../../../org/allbinary/input/motion/gesture/MotionGestureInput" for MotionGestureInput
import "../../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./GameKeyCompleteMotionGestureInputEventFactory" for GameKeyCompleteMotionGestureInputEventFactory

