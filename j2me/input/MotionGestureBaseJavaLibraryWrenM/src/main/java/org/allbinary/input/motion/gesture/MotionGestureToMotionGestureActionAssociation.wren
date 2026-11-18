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
// package org.allbinary.input.motion.gesture

import "../../../../../allbinary_java" for JObject, JException, JR

class MotionGestureToMotionGestureActionAssociation is JObject {
  list { _list }
  list=(value) { _list = value }
  motionGestureAction { _motionGestureAction }
  motionGestureAction=(value) { _motionGestureAction = value }

  initFields_MotionGestureToMotionGestureActionAssociation() {
    _list = null
    _motionGestureAction = null
        
        
  }
    

    construct new(list, commandAction) {
    super()
    initFields_MotionGestureToMotionGestureActionAssociation()
        _list = list
        _motionGestureAction = commandAction
    }
    

    getMotionGesture() {
        return _list
    }
    

    setMotionGestures(list) {
        _list = list
    }
    

    getCommandAction() {
        return _motionGestureAction
    }
    

    setMotionGestureAction(commandAction) {
        _motionGestureAction = commandAction
    }
    

    isMotionGestureArrayEquals(aList) {
        var size = aList.size()
        if ((_list.size() != size)) {
            return false
        }
        if (true) {
            var i = JR.i32(size - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    i = JR.i32(i - 1)
                }
                jfirst = false
                if (!((i >= 0))) break
            if ((aList.objectArray[i] != _list.objectArray[i])) {
                return false
            }
            }
        }
        return true
    }
}

import "../../../../../org/allbinary/game/input/CompleteMotionGestureInputEvent" for CompleteMotionGestureInputEvent
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList

