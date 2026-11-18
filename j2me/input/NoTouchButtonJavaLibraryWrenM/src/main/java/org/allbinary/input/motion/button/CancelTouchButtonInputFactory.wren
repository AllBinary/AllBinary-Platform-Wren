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

class CancelTouchButtonInputFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = NullUtil.getInstance().NULL_OBJECT
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  cancelInputArray { _cancelInputArray }
  cancelInputArray=(value) { _cancelInputArray = value }

  initFields_CancelTouchButtonInputFactory() {
    _cancelInputArray = null
        _cancelInputArray = List.filled(InputFactory.getInstance().MAX, null)
  }
    

    static getInstance() {
        if ((CancelTouchButtonInputFactory.instance == NullUtil.getInstance().NULL_OBJECT)) {
            CancelTouchButtonInputFactory.instance = CancelTouchButtonInputFactory.new()
        }
        return CancelTouchButtonInputFactory.instance
    }
    

    construct new() {
    super()
    initFields_CancelTouchButtonInputFactory()
        var basicTouchInputFactory = BasicTouchInputFactory.getInstance()
        if (true) {
            var index = JR.i32(_cancelInputArray.count - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            _cancelInputArray[index] = basicTouchInputFactory.NONE
            }
        }
        _cancelInputArray[basicTouchInputFactory.UP.getId()] = basicTouchInputFactory.DOWN
        _cancelInputArray[basicTouchInputFactory.DOWN.getId()] = basicTouchInputFactory.UP
        _cancelInputArray[basicTouchInputFactory.LEFT.getId()] = basicTouchInputFactory.RIGHT
        _cancelInputArray[basicTouchInputFactory.RIGHT.getId()] = basicTouchInputFactory.LEFT
    }
    

    getCancel(touchButtonInput) {
        return _cancelInputArray[touchButtonInput.getId()]
    }
}

import "../../../../../org/allbinary/game/input/InputFactory" for InputFactory
import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "./TouchButtonInput" for TouchButtonInput
import "./BasicTouchInputFactory" for BasicTouchInputFactory

