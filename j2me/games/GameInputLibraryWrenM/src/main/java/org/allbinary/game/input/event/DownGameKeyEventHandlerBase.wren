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

class DownGameKeyEventHandlerBase is BasicEventHandler {
    static TOTAL_LISTENERS { " Total PlayerGameInput Listeners: " }
    static LISTENER_LABEL { " PlayerGameInput Listener: " }
  list { _list }
  list=(value) { _list = value }

  initFields_DownGameKeyEventHandlerBase() {
    _list = null
        _list = BasicArrayListD.new()
  }
    

    construct new() {
    super()
    initFields_DownGameKeyEventHandlerBase()
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
                var playerGameInput = _list.objectArray[index]
                playerGameInput.onDownGameKeyEvent(eventObject)
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
        var downGameKeyEventListenerInterface = eventListenerInterface
        downGameKeyEventListenerInterface.onDownGameKeyEvent(eventObject)
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append(super.toString())
        stringBuffer.append(DownGameKeyEventHandlerBase.TOTAL_LISTENERS)
        stringBuffer.appendint(_list.size())
        var eventListenerInterface = null
        var size = _list.size()
        var index = 0
        while ((index < size)) {
            var jerror1 = Fiber.new {
                eventListenerInterface = _list.get(index)
                stringBuffer.append(DownGameKeyEventHandlerBase.LISTENER_LABEL)
                stringBuffer.append(eventListenerInterface.toString())
            }.try()
            if (jerror1 != null) {
                var e = jerror1
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.TOSTRING, e)
            }
            index = JR.i32(index + 1)
        }
        return stringBuffer.toString()
    }
}

import "../../../../../org/allbinary/game/input/PlayerGameInput" for PlayerGameInput
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../../org/allbinary/logic/util/event/EventListenerInterface" for EventListenerInterface
import "../../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./GameKeyEvent" for GameKeyEvent
import "./DownGameKeyEventListenerInterface" for DownGameKeyEventListenerInterface

