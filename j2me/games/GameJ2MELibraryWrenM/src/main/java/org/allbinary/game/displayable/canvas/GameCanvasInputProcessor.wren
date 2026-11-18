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
// package org.allbinary.game.displayable.canvas

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/game/input/InputProcessor" for InputProcessor

class GameCanvasInputProcessor is InputProcessor {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  allBinaryGameCanvas { _allBinaryGameCanvas }
  allBinaryGameCanvas=(value) { _allBinaryGameCanvas = value }
  downGameKeyEventHandler { _downGameKeyEventHandler }
  downGameKeyEventHandler=(value) { _downGameKeyEventHandler = value }
  upGameKeyEventHandler { _upGameKeyEventHandler }
  upGameKeyEventHandler=(value) { _upGameKeyEventHandler = value }
  downKeyEventHandler { _downKeyEventHandler }
  downKeyEventHandler=(value) { _downKeyEventHandler = value }
  smallIntegerSingletonFactory { _smallIntegerSingletonFactory }
  smallIntegerSingletonFactory=(value) { _smallIntegerSingletonFactory = value }
  inputToGameKeyMapping { _inputToGameKeyMapping }
  inputToGameKeyMapping=(value) { _inputToGameKeyMapping = value }
  NONE { _NONE }
  NONE=(value) { _NONE = value }
  gameKeyEventFactory { _gameKeyEventFactory }
  gameKeyEventFactory=(value) { _gameKeyEventFactory = value }

  initFields_GameCanvasInputProcessor() {
    _logUtil = null
    _allBinaryGameCanvas = null
    _downGameKeyEventHandler = null
    _upGameKeyEventHandler = null
    _downKeyEventHandler = null
    _smallIntegerSingletonFactory = null
    _inputToGameKeyMapping = null
    _NONE = null
    _gameKeyEventFactory = null
        _logUtil = LogUtil.getInstance()
        
        _downGameKeyEventHandler = DownGameKeyEventHandler.getInstance()
        _upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
        _downKeyEventHandler = DownKeyEventHandler.getInstance()
        _smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        _inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping()
        _NONE = GameKeyFactory.getInstance().NONE
        _gameKeyEventFactory = GameKeyEventFactory.getInstance()
  }
    

    construct new(allBinaryGameCanvas) {
    super()
    initFields_GameCanvasInputProcessor()
        _allBinaryGameCanvas = allBinaryGameCanvas
        _inputToGameKeyMapping.init(_allBinaryGameCanvas)
    }
    

    keyPressedByDevice(keyCode, deviceId) {
        var jerror0 = Fiber.new {
            var gameKey = _inputToGameKeyMapping.getInstanceForCanvas(_allBinaryGameCanvas, keyCode)
            if ((gameKey != _NONE)) {
                var gameKeyEvent = _gameKeyEventFactory.getInstanceForInput(_allBinaryGameCanvas, gameKey)
                _downGameKeyEventHandler.fireEvent(gameKeyEvent)
                _downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            } else {
                _logUtil.putF(StringMaker.new().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.ADD_KEY_EVENT)
            }
            var keyCodeAsInteger = _smallIntegerSingletonFactory.getAtNoThrow(keyCode)
            _downKeyEventHandler.fireEventI(keyCodeAsInteger)
            _downKeyEventHandler.getInstanceForDevice(deviceId).fireEventI(keyCodeAsInteger)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put("Key Event Error", this, this.gameInputStrings.ADD_KEY_EVENT, e)
        }
    }
    

    keyReleasedByDevice(canvas, keyCode, deviceId) {
        this.removeGameKeyEvent(canvas, keyCode, deviceId, false)
    }
    

    removeGameKeyEvent(canvas, keyCode, deviceId, repeated) {
        var jerror1 = Fiber.new {
            var gameKey = _inputToGameKeyMapping.getInstanceForCanvas(canvas, keyCode)
            if ((gameKey != _NONE)) {
                var gameKeyEventSourceInterface = canvas
                var gameKeyEvent = _gameKeyEventFactory.getInstanceForInput(gameKeyEventSourceInterface, gameKey)
                _upGameKeyEventHandler.fireEvent(gameKeyEvent)
                _upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            } else {
                _logUtil.putF(StringMaker.new().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.REMOVE_KEY_EVENT)
            }
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            _logUtil.put("Key Event Error", this, this.gameInputStrings.REMOVE_KEY_EVENT, e)
        }
    }
}

import "../../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../../org/allbinary/game/input/GameKey" for GameKey
import "../../../../../org/allbinary/game/input/GameKeyEventSourceInterface" for GameKeyEventSourceInterface
import "../../../../../org/allbinary/game/input/GameKeyFactory" for GameKeyFactory
import "../../../../../org/allbinary/game/input/PlatformInputMappingFactory" for PlatformInputMappingFactory
import "../../../../../org/allbinary/game/input/event/DownGameKeyEventHandler" for DownGameKeyEventHandler
import "../../../../../org/allbinary/game/input/event/DownKeyEventHandler" for DownKeyEventHandler
import "../../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../../org/allbinary/game/input/event/GameKeyEventFactory" for GameKeyEventFactory
import "../../../../../org/allbinary/game/input/event/UpGameKeyEventHandler" for UpGameKeyEventHandler
import "../../../../../org/allbinary/game/input/mapping/InputToGameKeyMapping" for InputToGameKeyMapping
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../java/lang/Integer" for Integer
import "./AllBinaryGameCanvas" for AllBinaryGameCanvas

