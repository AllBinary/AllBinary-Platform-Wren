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

class TouchButtonRecognizer is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  rectangleCollisionUtil { _rectangleCollisionUtil }
  rectangleCollisionUtil=(value) { _rectangleCollisionUtil = value }
  upGameKeyEventHandler { _upGameKeyEventHandler }
  upGameKeyEventHandler=(value) { _upGameKeyEventHandler = value }
  downGameKeyEventHandler { _downGameKeyEventHandler }
  downGameKeyEventHandler=(value) { _downGameKeyEventHandler = value }
  lastPressedTouchButtonInput { _lastPressedTouchButtonInput }
  lastPressedTouchButtonInput=(value) { _lastPressedTouchButtonInput = value }
  currentlyPressedTouchButtonSingleton { _currentlyPressedTouchButtonSingleton }
  currentlyPressedTouchButtonSingleton=(value) { _currentlyPressedTouchButtonSingleton = value }
  releaseHelper { _releaseHelper }
  releaseHelper=(value) { _releaseHelper = value }

  initFields_TouchButtonRecognizer() {
    _logUtil = null
    _rectangleCollisionUtil = null
    _upGameKeyEventHandler = null
    _downGameKeyEventHandler = null
    _lastPressedTouchButtonInput = null
    _currentlyPressedTouchButtonSingleton = null
    _releaseHelper = null
        _logUtil = LogUtil.getInstance()
        _rectangleCollisionUtil = RectangleCollisionUtil.getInstance()
        _upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
        _downGameKeyEventHandler = DownGameKeyEventHandler.getInstance()
        _lastPressedTouchButtonInput = BasicTouchInputFactory.getInstance().NONE
        _currentlyPressedTouchButtonSingleton = CurrentlyPressedTouchButtonSingleton.getInstance()
        _releaseHelper = null
  }
    

    construct new() {
    super()
    initFields_TouchButtonRecognizer()
        if (TouchScreenFactory.getInstance().isMultiTouch()) {
            _releaseHelper = MultitouchReleaseHelper.new(this)
        } else {
            _releaseHelper = ReleaseHelper.new(this)
        }
    }
    

    processRelease(touchButtonInput, deviceId) {
        _releaseHelper.release(touchButtonInput, deviceId)
        var gameKeyEvent = touchButtonInput.getGameKeyEvent()
        _upGameKeyEventHandler.fireEvent(gameKeyEvent)
        _upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
        _currentlyPressedTouchButtonSingleton.remove(touchButtonInput)
    }
    

    releaseTouchButtonInput(x, y, deviceId) {
        var touchButtonInput = _lastPressedTouchButtonInput
        if (_currentlyPressedTouchButtonSingleton.contains(touchButtonInput)) {
            _lastPressedTouchButtonInput = BasicTouchInputFactory.getInstance().NONE
            this.processRelease(touchButtonInput, deviceId)
            return true
        } else {
            var list = TouchButtonFactory.getInstance().getList()
            var rectangle = null
            var point = null
            var touchButton = null
            if (true) {
                var index = JR.i32(list.size() - 1)
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index - 1)
                    }
                    jfirst = false
                    if (!((index >= 0))) break
                touchButton = list.objectArray[index]
                rectangle = touchButton.getRectangle()
                point = rectangle.getPoint()
                if (_rectangleCollisionUtil.isInside(point.getX(), point.getY(), rectangle.getMaxX(), rectangle.getMaxY(), x, y)) {
                    touchButtonInput = touchButton.getTouchButtonInput()
                    this.processRelease(touchButtonInput, deviceId)
                    return true
                }
                }
            }
        }
        return false
    }
    

    pressTouchButtonInput(x, y, deviceId) {
        var list = TouchButtonFactory.getInstance().getList()
        var rectangle = null
        var point = null
        var touchButton = null
        var touchButtonInput = null
        var gameKeyEvent = null
        if (true) {
            var index = JR.i32(list.size() - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            touchButton = list.objectArray[index]
            rectangle = touchButton.getRectangle()
            point = rectangle.getPoint()
            if (_rectangleCollisionUtil.isInside(point.getX(), point.getY(), rectangle.getMaxX(), rectangle.getMaxY(), x, y)) {
                touchButtonInput = touchButton.getTouchButtonInput()
                if (!_currentlyPressedTouchButtonSingleton.contains(touchButtonInput)) {
                    _releaseHelper.release(touchButtonInput, deviceId)
                    _lastPressedTouchButtonInput = touchButtonInput
                    _currentlyPressedTouchButtonSingleton.add(touchButtonInput)
                    gameKeyEvent = touchButtonInput.getGameKeyEvent()
                    _downGameKeyEventHandler.fireEvent(gameKeyEvent)
                    _downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
                }
                return true
            }
            }
        }
        return false
    }
}

import "../../../../../org/allbinary/game/input/event/DownGameKeyEventHandler" for DownGameKeyEventHandler
import "../../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../../org/allbinary/game/input/event/UpGameKeyEventHandler" for UpGameKeyEventHandler
import "../../../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/math/RectangleCollisionUtil" for RectangleCollisionUtil
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "./BasicTouchInputFactory" for BasicTouchInputFactory
import "./TouchButtonInput" for TouchButtonInput
import "./CurrentlyPressedTouchButtonSingleton" for CurrentlyPressedTouchButtonSingleton
import "./ReleaseHelper" for ReleaseHelper
import "./TouchScreenFactory" for TouchScreenFactory
import "./MultitouchReleaseHelper" for MultitouchReleaseHelper
import "./TouchButtonFactory" for TouchButtonFactory
import "./TouchButton" for TouchButton

