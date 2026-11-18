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
// package org.allbinary.input.motion.button

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/game/input/Input" for Input

class TouchButtonInput is Input {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  gameKeyEventFactory { _gameKeyEventFactory }
  gameKeyEventFactory=(value) { _gameKeyEventFactory = value }
  TOUCH_BUTTON_SOURCE_ID { _TOUCH_BUTTON_SOURCE_ID }
  TOUCH_BUTTON_SOURCE_ID=(value) { _TOUCH_BUTTON_SOURCE_ID = value }
  gameKeyEvent { _gameKeyEvent }
  gameKeyEvent=(value) { _gameKeyEvent = value }

  initFields_TouchButtonInput() {
    _logUtil = null
    _gameKeyEventFactory = null
    _TOUCH_BUTTON_SOURCE_ID = 0
    _gameKeyEvent = null
        _logUtil = LogUtil.getInstance()
        _gameKeyEventFactory = GameKeyEventFactory.getInstance()
        _TOUCH_BUTTON_SOURCE_ID = _gameKeyEventFactory.TOUCH_BUTTON_SOURCE_ID
        _gameKeyEvent = GameKeyEvent.NONE
  }
    

    construct new(id, name) {
        super(id, name)
        initFields_TouchButtonInput()
        var inputFactory = InputFactory.getInstance()
        inputFactory.add(this.getId(), this)
    }
    

    update(inputToGameKeyMapping) {
        var jerror0 = Fiber.new {
            var gameKey = inputToGameKeyMapping.getInstance(this.getId())
            _gameKeyEvent = _gameKeyEventFactory.getInstanceForInput(this, gameKey)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.UPDATE, e)
        }
    }
    

    getSourceId() {
        return _TOUCH_BUTTON_SOURCE_ID
    }
    

    getGameKeyEvent() {
        return _gameKeyEvent
    }
}

import "../../../../../org/allbinary/game/input/GameKey" for GameKey
import "../../../../../org/allbinary/game/input/GameKeyEventSourceInterface" for GameKeyEventSourceInterface
import "../../../../../org/allbinary/game/input/InputFactory" for InputFactory
import "../../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../../org/allbinary/game/input/event/GameKeyEventFactory" for GameKeyEventFactory
import "../../../../../org/allbinary/game/input/mapping/InputToGameKeyMapping" for InputToGameKeyMapping
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings

