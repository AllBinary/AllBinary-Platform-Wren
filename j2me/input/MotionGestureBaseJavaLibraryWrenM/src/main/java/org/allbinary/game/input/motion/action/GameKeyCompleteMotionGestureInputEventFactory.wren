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
// package org.allbinary.game.input.motion.action

import "../../../../../../allbinary_java" for JObject, JException, JR

class GameKeyCompleteMotionGestureInputEventFactory is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = GameKeyCompleteMotionGestureInputEventFactory.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  eventList { _eventList }
  eventList=(value) { _eventList = value }

  initFields_GameKeyCompleteMotionGestureInputEventFactory() {
    _logUtil = null
    _eventList = null
        _logUtil = LogUtil.getInstance()
        _eventList = BasicArrayListD.new()
  }

  construct new() {
    super()
    initFields_GameKeyCompleteMotionGestureInputEventFactory()
  }
    

    static getInstance() {
        return GameKeyCompleteMotionGestureInputEventFactory.SINGLETON
    }
    

    add(gameKeyCompleteMotionGestureInputEvent) {
        _eventList.add(gameKeyCompleteMotionGestureInputEvent)
    }
    

    updateAll() {
        _logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().START_LABEL).appendint(_eventList.size()).toString(), this, "updateAll")
        if (true) {
            var index = JR.i32(_eventList.size() - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            var gameKeyCompleteMotionGestureInputEvent = _eventList.objectArray[index]
            gameKeyCompleteMotionGestureInputEvent.update()
            }
        }
    }
}

import "../../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./GameKeyCompleteMotionGestureInputEvent" for GameKeyCompleteMotionGestureInputEvent

