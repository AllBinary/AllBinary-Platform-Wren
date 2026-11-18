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
import "./GameInput" for GameInput

class PlayerGameInput is GameInput {
  gameInputStrings { _gameInputStrings }
  gameInputStrings=(value) { _gameInputStrings = value }
  playerInputId { _playerInputId }
  playerInputId=(value) { _playerInputId = value }

  initFields_PlayerGameInput() {
    _gameInputStrings = null
    _playerInputId = 0
        _gameInputStrings = GameInputStrings.getInstance()
        
  }
    

    construct new(gameKeyEventList, removalGameKeyEventList, playerInputId) {
        super(gameKeyEventList, removalGameKeyEventList)
        initFields_PlayerGameInput()
        _playerInputId = playerInputId
    }
    

    onPressGameKeyEvent(gameKeyEvent) {
        this.add(gameKeyEvent)
        this.addForRemoval(gameKeyEvent)
    }
    

    onDownGameKeyEvent(gameKeyEvent) {
        this.add(gameKeyEvent)
    }
    

    onDownKeyEvent(gameKeyEvent) {
        this.add(gameKeyEvent)
        this.addForRemoval(gameKeyEvent)
    }
    

    onDownKey(gameKeyEvent) {
        PreLogUtil.put(StringMaker.new().append(CommonLabels.getInstance().START_LABEL).append(gameKeyEvent.toString()).toString(), this, _gameInputStrings.ON_DOWN_GAME_KEY)
    }
    

    onUpGameKeyEvent(gameKeyEvent) {
        this.addForRemoval(gameKeyEvent)
    }
    

    onUpKeyEvent(gameKeyEvent) {
    }
    

    onEvent(eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)
    }
    

    getPlayerInputId() {
        return _playerInputId
    }
}

import "../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../org/allbinary/game/input/event/GameKeyEventListenerInterface" for GameKeyEventListenerInterface
import "../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "../../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../java/lang/Integer" for Integer
import "./GameInputStrings" for GameInputStrings

