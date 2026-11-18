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
// package org.allbinary.logic.util.event.handler

import "../../../../../../allbinary_java" for JObject, JException, JR

class BasicEventHandler is JObject {
    static PERFORMANCE_MESSAGE { "Use Custom onEvent Methods for needed optimization" }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  eventListenerInterfaceList { _eventListenerInterfaceList }
  eventListenerInterfaceList=(value) { _eventListenerInterfaceList = value }

  initFields_BasicEventHandler() {
    _logUtil = null
    _eventListenerInterfaceList = null
        _logUtil = LogUtil.getInstance()
        
  }
    

    construct new() {
    super()
    initFields_BasicEventHandler()
        _eventListenerInterfaceList = BasicArrayListD.new()
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        var LISTENER = " Listener: "
        stringBuffer.append("Total Listeners: ")
        stringBuffer.appendint(_eventListenerInterfaceList.size())
        var eventListenerInterface = null
        var index = 0
        while ((index < _eventListenerInterfaceList.size())) {
            var jerror0 = Fiber.new {
                eventListenerInterface = _eventListenerInterfaceList.objectArray[index]
                stringBuffer.append(LISTENER)
                stringBuffer.append(StringUtil.getInstance().toString(eventListenerInterface))
            }.try()
            if (jerror0 != null) {
                var e = jerror0
                var commonStrings = CommonStrings.getInstance()
                _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.TOSTRING, e)
            }
            index = JR.i32(index + 1)
        }
        return stringBuffer.toString()
    }
    

    removeAllListeners() {
        _eventListenerInterfaceList = BasicArrayListD.new()
    }
    

    addListenerSingleThreaded(eventListenerInterface) {
        if (!_eventListenerInterfaceList.contains(eventListenerInterface)) {
            _eventListenerInterfaceList.add(eventListenerInterface)
        }
    }
    

    addListenerInterface(eventListenerInterface) {
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
    

    fireEvent(eventObject) {
        var index = 0
        var eventListenerInterface = null
        while ((index < _eventListenerInterfaceList.size())) {
            var jerror1 = Fiber.new {
                eventListenerInterface = _eventListenerInterfaceList.objectArray[index]
                this.process(eventObject, eventListenerInterface)
            }.try()
            if (jerror1 != null) {
                var e = jerror1
                var commonStrings = CommonStrings.getInstance()
                _logUtil.put(commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
            }
            index = JR.i32(index + 1)
        }
    }
    

    process(eventObject, eventListenerInterface) {
        eventListenerInterface.onEvent(eventObject)
    }
    

    getEventListenerInterfaceListP() {
        return _eventListenerInterfaceList
    }
}

import "../../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../../../org/allbinary/logic/util/event/EventListenerInterface" for EventListenerInterface
import "../../../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "../../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./BasicEventHandlerInterface" for BasicEventHandlerInterface

