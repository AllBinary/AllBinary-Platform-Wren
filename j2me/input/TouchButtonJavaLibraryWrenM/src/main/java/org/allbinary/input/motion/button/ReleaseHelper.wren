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

class ReleaseHelper is JObject {
  touchButtonRecognizer { _touchButtonRecognizer }
  touchButtonRecognizer=(value) { _touchButtonRecognizer = value }

  initFields_ReleaseHelper() {
    _touchButtonRecognizer = null
        
  }
    

    construct new(touchButtonRecognizer) {
    super()
    initFields_ReleaseHelper()
        _touchButtonRecognizer = touchButtonRecognizer
    }
    

    release(touchButtonInput, deviceId) {
        var nextTouchButtonInput = null
        var gameKeyEvent = null
        if (true) {
            var index = JR.i32(_touchButtonRecognizer.currentlyPressedTouchButtonSingleton.size() - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            nextTouchButtonInput = _touchButtonRecognizer.currentlyPressedTouchButtonSingleton.get(index)
            gameKeyEvent = nextTouchButtonInput.getGameKeyEvent()
            _touchButtonRecognizer.upGameKeyEventHandler.fireEvent(gameKeyEvent)
            _touchButtonRecognizer.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            _touchButtonRecognizer.currentlyPressedTouchButtonSingleton.removeAt(index)
            }
        }
    }
}

import "../../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "./TouchButtonRecognizer" for TouchButtonRecognizer
import "./TouchButtonInput" for TouchButtonInput

