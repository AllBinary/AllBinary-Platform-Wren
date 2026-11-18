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
import "./ReleaseHelper" for ReleaseHelper

class MultitouchReleaseHelper is ReleaseHelper {

  initFields_MultitouchReleaseHelper() {
  }
    

    construct new(touchButtonRecognizer) {
        super(touchButtonRecognizer)
    }
    

    release(touchButtonInput, deviceId) {
        var cancelTouchButtonInput = CancelTouchButtonInputFactory.getInstance().getCancel(touchButtonInput)
        var nextTouchButtonInput = null
        var gameKeyEvent = null
        if (true) {
            var index = JR.i32(this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.size() - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            nextTouchButtonInput = this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.get(index)
            if ((cancelTouchButtonInput == nextTouchButtonInput)) {
                gameKeyEvent = nextTouchButtonInput.getGameKeyEvent()
                this.touchButtonRecognizer.upGameKeyEventHandler.fireEvent(gameKeyEvent)
                this.touchButtonRecognizer.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
                this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.removeAt(index)
            }
            }
        }
    }
}

import "../../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "./TouchButtonRecognizer" for TouchButtonRecognizer
import "./CancelTouchButtonInputFactory" for CancelTouchButtonInputFactory
import "./TouchButtonInput" for TouchButtonInput

