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
// package org.allbinary.input

import "../../../allbinary_java" for JObject, JException, JR
import "../../../org/allbinary/android/input/motion/AnalogLocationInputProcessor" for AnalogLocationInputProcessor

class DirectionalAnalogLocationInputProcessor is AnalogLocationInputProcessor {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  inputProcessorArray { _inputProcessorArray }
  inputProcessorArray=(value) { _inputProcessorArray = value }
  gameKeyFactory { _gameKeyFactory }
  gameKeyFactory=(value) { _gameKeyFactory = value }
  leftGameKeyEvent { _leftGameKeyEvent }
  leftGameKeyEvent=(value) { _leftGameKeyEvent = value }
  rightGameKeyEvent { _rightGameKeyEvent }
  rightGameKeyEvent=(value) { _rightGameKeyEvent = value }
  upGameKeyEvent { _upGameKeyEvent }
  upGameKeyEvent=(value) { _upGameKeyEvent = value }
  downGameKeyEvent { _downGameKeyEvent }
  downGameKeyEvent=(value) { _downGameKeyEvent = value }
  leftTriggerGameKeyEvent { _leftTriggerGameKeyEvent }
  leftTriggerGameKeyEvent=(value) { _leftTriggerGameKeyEvent = value }
  rightTriggerGameKeyEvent { _rightTriggerGameKeyEvent }
  rightTriggerGameKeyEvent=(value) { _rightTriggerGameKeyEvent = value }

  initFields_DirectionalAnalogLocationInputProcessor() {
    _logUtil = null
    _inputProcessorArray = null
    _gameKeyFactory = null
    _leftGameKeyEvent = null
    _rightGameKeyEvent = null
    _upGameKeyEvent = null
    _downGameKeyEvent = null
    _leftTriggerGameKeyEvent = null
    _rightTriggerGameKeyEvent = null
        _logUtil = LogUtil.getInstance()
        
        _gameKeyFactory = GameKeyFactory.getInstance()
        _leftGameKeyEvent = GameKeyEvent.NONE
        _rightGameKeyEvent = GameKeyEvent.NONE
        _upGameKeyEvent = GameKeyEvent.NONE
        _downGameKeyEvent = GameKeyEvent.NONE
        _leftTriggerGameKeyEvent = GameKeyEvent.NONE
        _rightTriggerGameKeyEvent = GameKeyEvent.NONE
  }
    

    construct new(inputProcessorArray) {
    super()
    initFields_DirectionalAnalogLocationInputProcessor()
        _inputProcessorArray = inputProcessorArray
        var jerror0 = Fiber.new {
            _leftGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, _gameKeyFactory.LEFT)
            _rightGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, _gameKeyFactory.RIGHT)
            _upGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, _gameKeyFactory.UP)
            _downGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, _gameKeyFactory.DOWN)
            _leftTriggerGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, _gameKeyFactory.KEY_NUM0)
            _rightTriggerGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, _gameKeyFactory.KEY_NUM5)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)
        }
    }
    

    process(allbinaryLayerManager, analogLocationInput) {
        var jerror1 = Fiber.new {
            var customGPoint = null
            customGPoint = analogLocationInput.getCustomGPoint()
            var x = customGPoint.getX()
            var y = customGPoint.getY()
            var leftTrigger = analogLocationInput.getLeftTrigger()
            var rightTrigger = analogLocationInput.getRightTrigger()
            if ((x < 0)) {
                _inputProcessorArray[_leftGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, _leftGameKeyEvent, x)
            } else if ((x > 0)) {
                _inputProcessorArray[_rightGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, _rightGameKeyEvent, x)
            }
            if ((y < 0)) {
                _inputProcessorArray[_downGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, _downGameKeyEvent, y)
            } else if ((y > 0)) {
                _inputProcessorArray[_upGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, _upGameKeyEvent, y)
            }
            if ((leftTrigger > 0)) {
                _inputProcessorArray[_leftTriggerGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, _leftTriggerGameKeyEvent, leftTrigger)
            }
            if ((rightTrigger > 0)) {
                _inputProcessorArray[_rightTriggerGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, _rightTriggerGameKeyEvent, rightTrigger)
            }
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put("Unable to process analog input", this, commonStrings.PROCESS, e)
        }
    }
    

    getSourceId() {
        return 0
    }
}

import "../../../org/allbinary/game/input/GameInputProcessor" for GameInputProcessor
import "../../../org/allbinary/game/input/GameKeyEventSourceInterface" for GameKeyEventSourceInterface
import "../../../org/allbinary/game/input/GameKeyFactory" for GameKeyFactory
import "../../../org/allbinary/game/input/analog/AnalogLocationInput" for AnalogLocationInput
import "../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../org/allbinary/game/input/event/GameKeyEventFactory" for GameKeyEventFactory
import "../../../org/allbinary/graphics/CustomGPoint" for CustomGPoint
import "../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/string/CommonStrings" for CommonStrings

