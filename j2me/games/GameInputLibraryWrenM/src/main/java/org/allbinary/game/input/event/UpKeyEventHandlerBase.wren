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
// package org.allbinary.game.input.event

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/logic/util/event/handler/BasicEventHandler" for BasicEventHandler

class UpKeyEventHandlerBase is BasicEventHandler {
    static TOTAL_LISTENERS { " Total PlayerGameInput Listeners: " }
    static LISTENER_LABEL { " PlayerGameInput Listener: " }
  list { _list }
  list=(value) { _list = value }

  initFields_UpKeyEventHandlerBase() {
    _list = null
        _list = BasicArrayListD.new()
  }
    

    construct new() {
    super()
    initFields_UpKeyEventHandlerBase()
    }
    

    addListener(playerGameInput) {
        if (!_list.contains(playerGameInput)) {
            _list.add(playerGameInput)
        }
    }
    

    removeAllListeners() {
        _list.clear()
        super.removeAllListeners()
    }
    

    removeListenerSingleThreaded(eventListenerInterface) {
        _list.remove(eventListenerInterface)
        super.removeListenerSingleThreaded(eventListenerInterface)
    }
    

    removeListener(eventListenerInterface) {
        _list.remove(eventListenerInterface)
        super.removeListener(eventListenerInterface)
    }
    

    fireEventForInteger(eventObject) {
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
                var playerGameInput = _list.objectArray[index]
                playerGameInput.onUpKeyEvent(eventObject)
            }.try()
            if (jerror0 != null) {
                var e = jerror0
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
            }
            }
        }
        var index = 0
        var eventListenerInterface = null
        while ((index < this.eventListenerInterfaceList.size())) {
            var jerror1 = Fiber.new {
                eventListenerInterface = this.eventListenerInterfaceList.get(index)
                this.processForInteger(eventObject, eventListenerInterface)
            }.try()
            if (jerror1 != null) {
                var e = jerror1
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
            }
            index = JR.i32(index + 1)
        }
    }
    

    processForInteger(eventObject, eventListenerInterface) {
        var upKeyEventListenerInterface = eventListenerInterface
        upKeyEventListenerInterface.onUpKeyEvent(eventObject)
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append(super.toString())
        stringBuffer.append(UpKeyEventHandlerBase.TOTAL_LISTENERS)
        stringBuffer.appendint(_list.size())
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < _list.size()))) break
            var jerror2 = Fiber.new {
                var eventListenerInterface = _list.get(index)
                stringBuffer.append(UpKeyEventHandlerBase.LISTENER_LABEL)
                stringBuffer.append(eventListenerInterface.toString())
            }.try()
            if (jerror2 != null) {
                var e = jerror2
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.TOSTRING, e)
            }
            }
        }
        return stringBuffer.toString()
    }
}

import "../../../../../org/allbinary/game/input/PlayerGameInput" for PlayerGameInput
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/util/event/EventListenerInterface" for EventListenerInterface
import "../../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../../../java/lang/Integer" for Integer
import "./UpKeyEventListenerInterface" for UpKeyEventListenerInterface

