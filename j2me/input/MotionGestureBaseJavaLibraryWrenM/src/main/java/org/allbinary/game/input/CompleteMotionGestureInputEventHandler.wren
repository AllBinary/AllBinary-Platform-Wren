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
// package org.allbinary.game.input

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/logic/util/event/handler/BasicEventHandler" for BasicEventHandler

class CompleteMotionGestureInputEventHandler is BasicEventHandler {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = CompleteMotionGestureInputEventHandler.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  list { _list }
  list=(value) { _list = value }

  initFields_CompleteMotionGestureInputEventHandler() {
    _list = null
        _list = BasicArrayListD.new()
  }
    

    static getInstance() {
        return CompleteMotionGestureInputEventHandler.SINGLETON
    }
    

    construct new() {
    super()
    initFields_CompleteMotionGestureInputEventHandler()
    }
    

    addListener(completeMotionGestureInputEventListener) {
        if (!_list.contains(completeMotionGestureInputEventListener)) {
            _list.add(completeMotionGestureInputEventListener)
        }
    }
    

    removeAllListeners() {
        _list.clear()
        super.removeAllListeners()
    }
    

    removeListener(eventListenerInterface) {
        _list.remove(eventListenerInterface)
        super.removeListener(eventListenerInterface)
    }
    

    fireEvent(eventObject) {
        if (true) {
            var index = _list.size()
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            var jerror0 = Fiber.new {
                var completeMotionGestureInputEventListener = _list.objectArray[index]
                completeMotionGestureInputEventListener.onCompleteMotionGestureInputEvent(eventObject)
            }.try()
            if (jerror0 != null) {
                var e = jerror0
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
            }
            }
        }
        super.fireEvent(eventObject)
    }
    

    process(eventObject, eventListenerInterface) {
        var completeMotionGestureInputEventListenerInterface = eventListenerInterface
        completeMotionGestureInputEventListenerInterface.onCompleteMotionGestureInputEvent(eventObject)
    }
}

import "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../org/allbinary/logic/util/event/EventListenerInterface" for EventListenerInterface
import "../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./CompleteMotionGestureInputEventListener" for CompleteMotionGestureInputEventListener
import "./CompleteMotionGestureInputEvent" for CompleteMotionGestureInputEvent
import "./CompleteMotionGestureInputEventListenerInterface" for CompleteMotionGestureInputEventListenerInterface

