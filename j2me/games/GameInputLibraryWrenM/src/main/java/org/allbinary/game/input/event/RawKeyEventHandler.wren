/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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

class RawKeyEventHandler is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = RawKeyEventHandler.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
    static TOTAL_LISTENERS { "Total Listeners: " }
    static LISTENER_LABEL { " Listener: " }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  eventListenerInterfaceList { _eventListenerInterfaceList }
  eventListenerInterfaceList=(value) { _eventListenerInterfaceList = value }

  initFields_RawKeyEventHandler() {
    _logUtil = null
    _eventListenerInterfaceList = null
        _logUtil = LogUtil.getInstance()
        
  }
    

    static getInstance() {
        return RawKeyEventHandler.instance
    }
    

    construct new() {
    super()
    initFields_RawKeyEventHandler()
        _eventListenerInterfaceList = BasicArrayListD.new()
    }
    

    removeAllListeners() {
        _eventListenerInterfaceList = BasicArrayListD.new()
    }
    

    addListeners(vector) {
        var eventListenerInterface = null
        var size = vector.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            eventListenerInterface = vector.get(index)
            this.addListener(eventListenerInterface)
            }
        }
    }
    

    addListenerSingleThreaded(eventListenerInterface) {
        if (!_eventListenerInterfaceList.contains(eventListenerInterface)) {
            _eventListenerInterfaceList.add(eventListenerInterface)
        }
    }
    

    addListener(eventListenerInterface) {
        if (!_eventListenerInterfaceList.contains(eventListenerInterface)) {
            _eventListenerInterfaceList.add(eventListenerInterface)
        }
    }
    

    removeListenerSingleThreaded(eventListenerInterface) {
        _eventListenerInterfaceList.remove(eventListenerInterface)
    }
    

    removeListener(eventListenerInterface) {
        _eventListenerInterfaceList.remove(eventListenerInterface)
    }
    

    fireEvent(keyCode, deviceId, repeated) {
        var eventListenerInterface = null
        var index = 0
        while ((index < _eventListenerInterfaceList.size())) {
            var jerror0 = Fiber.new {
                eventListenerInterface = _eventListenerInterfaceList.get(index)
                this.process(keyCode, deviceId, repeated, eventListenerInterface)
            }.try()
            if (jerror0 != null) {
                var e = jerror0
                var commonStrings = CommonStrings.getInstance()
                _logUtil.put(commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
            }
            index = JR.i32(index + 1)
        }
    }
    

    process(keyCode, deviceId, repeated, eventListenerInterface) {
        eventListenerInterface.onEventRaw(keyCode, deviceId, repeated)
    }
    

    getEventListenerInterfaceListP() {
        return _eventListenerInterfaceList
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append(RawKeyEventHandler.TOTAL_LISTENERS)
        stringBuffer.appendint(_eventListenerInterfaceList.size())
        var eventListenerInterface = null
        var index = 0
        while ((index < _eventListenerInterfaceList.size())) {
            var jerror1 = Fiber.new {
                eventListenerInterface = _eventListenerInterfaceList.get(index)
                stringBuffer.append(RawKeyEventHandler.LISTENER_LABEL)
                stringBuffer.append(eventListenerInterface.toString())
            }.try()
            if (jerror1 != null) {
                var e = jerror1
                var commonStrings = CommonStrings.getInstance()
                _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.TOSTRING, e)
            }
            index = JR.i32(index + 1)
        }
        return stringBuffer.toString()
    }
}

import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./RawKeyEventListener" for RawKeyEventListener

