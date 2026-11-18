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
// package org.allbinary.input.motion

import "../../../../allbinary_java" for JObject, JException, JR
import "./MotionRecognizer" for MotionRecognizer

class OnlyTouchButtonRecognizer is MotionRecognizer {
  touchButtonRecognizer { _touchButtonRecognizer }
  touchButtonRecognizer=(value) { _touchButtonRecognizer = value }
  touchButtonProcessing { _touchButtonProcessing }
  touchButtonProcessing=(value) { _touchButtonProcessing = value }

  initFields_OnlyTouchButtonRecognizer() {
    _touchButtonRecognizer = null
    _touchButtonProcessing = false
        
        _touchButtonProcessing = false
  }
    

    construct new() {
    super()
    initFields_OnlyTouchButtonRecognizer()
        _touchButtonRecognizer = TouchButtonRecognizer.new()
    }
    

    processStartMotionEvent(x, y, deviceId, modifiers) {
        if (_touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId)) {
            _touchButtonProcessing = true
        }
    }
    

    processEndMotionEvent(x, y, deviceId, modifiers) {
        if (_touchButtonProcessing) {
            _touchButtonProcessing = false
        }
        if (_touchButtonRecognizer.releaseTouchButtonInput(x, y, deviceId)) {
            return
        }
    }
    

    processDraggedMotionEvent(x, y, deviceId, modifiers) {
        if (_touchButtonProcessing) {
            _touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId)
        }
    }
}

import "../../../../org/allbinary/input/motion/button/TouchButtonRecognizer" for TouchButtonRecognizer

