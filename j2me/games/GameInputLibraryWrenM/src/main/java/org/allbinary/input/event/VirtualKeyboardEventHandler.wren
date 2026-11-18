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
// package org.allbinary.input.event

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/logic/util/event/handler/BasicEventHandler" for BasicEventHandler

class VirtualKeyboardEventHandler is BasicEventHandler {
    static gameKeyEventHandler {
    if (__gameKeyEventHandler_set == null) {
      __gameKeyEventHandler_set = true
      __gameKeyEventHandler = VirtualKeyboardEventHandler.new()
    }
    return __gameKeyEventHandler
  }
  static gameKeyEventHandler=(value) {
    __gameKeyEventHandler_set = true
    __gameKeyEventHandler = value
  }
  SHOW_EVENT { _SHOW_EVENT }
  SHOW_EVENT=(value) { _SHOW_EVENT = value }
  HIDE_EVENT { _HIDE_EVENT }
  HIDE_EVENT=(value) { _HIDE_EVENT = value }

  initFields_VirtualKeyboardEventHandler() {
    _SHOW_EVENT = null
    _HIDE_EVENT = null
        _SHOW_EVENT = VirtualKeyboardEvent.new(BooleanFactory.getInstance().TRUE)
        _HIDE_EVENT = VirtualKeyboardEvent.new(BooleanFactory.getInstance().FALSE)
  }
    

    construct new() {
    super()
    initFields_VirtualKeyboardEventHandler()
    }
    

    static getInstance() {
        return VirtualKeyboardEventHandler.gameKeyEventHandler
    }
    

    process(eventObject, eventListenerInterface) {
        var virtualKeyboardEventListenerInterface = eventListenerInterface
        virtualKeyboardEventListenerInterface.onVirtualKeyboardEvent(eventObject)
    }
    

    open() {
        var jerror0 = Fiber.new {
            Thread.sleep(120)
            this.fireEvent(_SHOW_EVENT)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "open", e)
        }
    }
    

    close() {
        var jerror1 = Fiber.new {
            Thread.sleep(120)
            this.fireEvent(_HIDE_EVENT)
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.CLOSE, e)
        }
    }
}

import "../../../../org/allbinary/logic/java/bool/BooleanFactory" for BooleanFactory
import "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../org/allbinary/logic/util/event/EventListenerInterface" for EventListenerInterface
import "../../../../java/lang/Thread" for Thread
import "./VirtualKeyboardEvent" for VirtualKeyboardEvent
import "./VirtualKeyboardEventListenerInterface" for VirtualKeyboardEventListenerInterface

