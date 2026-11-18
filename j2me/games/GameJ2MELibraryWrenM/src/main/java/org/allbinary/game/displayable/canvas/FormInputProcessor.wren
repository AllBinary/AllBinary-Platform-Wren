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

class FormInputProcessor is InputProcessor {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  gameKeyEventFactory { _gameKeyEventFactory }
  gameKeyEventFactory=(value) { _gameKeyEventFactory = value }
  downKeyEventHandler { _downKeyEventHandler }
  downKeyEventHandler=(value) { _downKeyEventHandler = value }
  upGameKeyEventHandler { _upGameKeyEventHandler }
  upGameKeyEventHandler=(value) { _upGameKeyEventHandler = value }
  inputFactory { _inputFactory }
  inputFactory=(value) { _inputFactory = value }
  platformKeyFactory { _platformKeyFactory }
  platformKeyFactory=(value) { _platformKeyFactory = value }
  allBinaryGameCanvas { _allBinaryGameCanvas }
  allBinaryGameCanvas=(value) { _allBinaryGameCanvas = value }

  initFields_FormInputProcessor() {
    _logUtil = null
    _commonStrings = null
    _gameKeyEventFactory = null
    _downKeyEventHandler = null
    _upGameKeyEventHandler = null
    _inputFactory = null
    _platformKeyFactory = null
    _allBinaryGameCanvas = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _gameKeyEventFactory = GameKeyEventFactory.getInstance()
        _downKeyEventHandler = DownKeyEventHandler.getInstance()
        _upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
        _inputFactory = InputFactory.getInstance()
        _platformKeyFactory = PlatformKeyFactory.getInstance()
        
  }
    

    construct new(allBinaryGameCanvas) {
    super()
    initFields_FormInputProcessor()
        _allBinaryGameCanvas = allBinaryGameCanvas
    }
    

    keyPressedByDevice(keyCode, deviceId) {
        var jerror0 = Fiber.new {
            PreLogUtil.put(StringMaker.new().append(_inputFactory.KEY_CODE_LABEL).appendint(keyCode).append(CommonSeps.getInstance().SPACE).append(_inputFactory.DEVICE_ID_LABEL).appendint(deviceId).toString(), this, this.gameInputStrings.KEY_PRESSED)
            var input = _inputFactory.getInstanceById(keyCode)
            var gameKeyEvent = _gameKeyEventFactory.getInstanceForInput(_allBinaryGameCanvas, input)
            _downKeyEventHandler.fireEventForGameKeyEvent(gameKeyEvent)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(_commonStrings.EXCEPTION, this, this.gameInputStrings.ADD_KEY_EVENT, e)
        }
    }
    

    keyReleasedByDevice(canvas, keyCode, deviceId) {
        var jerror1 = Fiber.new {
            var input = _inputFactory.getInstanceById(keyCode)
            if (_platformKeyFactory.isEnter(input)) {
                PreLogUtil.put(StringMaker.new().append(_inputFactory.KEY_CODE_LABEL).appendint(keyCode).append(CommonSeps.getInstance().SPACE).append(_inputFactory.DEVICE_ID_LABEL).appendint(deviceId).toString(), this, this.gameInputStrings.KEY_RELEASED)
                var gameKey = GameKeyFactory.getInstance().KEY_NUM0
                var gameKeyEventSourceInterface = canvas
                var gameKeyEvent = _gameKeyEventFactory.getInstanceForInput(gameKeyEventSourceInterface, gameKey)
                _upGameKeyEventHandler.fireEvent(gameKeyEvent)
                _upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            }
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            _logUtil.put(_commonStrings.EXCEPTION, this, this.gameInputStrings.ADD_KEY_EVENT, e)
        }
    }
}

import "../../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../../org/allbinary/game/input/GameKey" for GameKey
import "../../../../../org/allbinary/game/input/GameKeyEventSourceInterface" for GameKeyEventSourceInterface
import "../../../../../org/allbinary/game/input/GameKeyFactory" for GameKeyFactory
import "../../../../../org/allbinary/game/input/Input" for Input
import "../../../../../org/allbinary/game/input/InputFactory" for InputFactory
import "../../../../../org/allbinary/game/input/PlatformKeyFactory" for PlatformKeyFactory
import "../../../../../org/allbinary/game/input/event/DownKeyEventHandler" for DownKeyEventHandler
import "../../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../../org/allbinary/game/input/event/GameKeyEventFactory" for GameKeyEventFactory
import "../../../../../org/allbinary/game/input/event/UpGameKeyEventHandler" for UpGameKeyEventHandler
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./AllBinaryGameCanvas" for AllBinaryGameCanvas

