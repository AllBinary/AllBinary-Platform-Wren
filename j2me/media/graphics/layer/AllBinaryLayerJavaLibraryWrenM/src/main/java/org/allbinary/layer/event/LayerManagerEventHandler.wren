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
// package org.allbinary.layer.event

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/logic/util/event/handler/BasicEventHandler" for BasicEventHandler

class LayerManagerEventHandler is BasicEventHandler {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = LayerManagerEventHandler.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  list { _list }
  list=(value) { _list = value }
  CREATE { _CREATE }
  CREATE=(value) { _CREATE = value }
  DELETE { _DELETE }
  DELETE=(value) { _DELETE = value }

  initFields_LayerManagerEventHandler() {
    _list = null
    _CREATE = null
    _DELETE = null
        _list = BasicArrayListD.new()
        _CREATE = "Create"
        _DELETE = "Delete"
  }
    

    static getInstance() {
        return LayerManagerEventHandler.instance
    }
    

    construct new() {
    super()
    initFields_LayerManagerEventHandler()
    }
    

    addListener(layerManagerEventListener) {
        if (!_list.contains(layerManagerEventListener)) {
            _list.add(layerManagerEventListener)
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
                var layerManagerEventListener = _list.objectArray[index]
                layerManagerEventListener.onCreateLayerManagerEvent(eventObject)
            }.try()
            if (jerror0 != null) {
                var e = jerror0
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
            }
            }
        }
        super.fireEvent(eventObject)
    }
    

    fireDeleteEvent(eventObject) {
        if (true) {
            var index = _list.size()
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            var jerror1 = Fiber.new {
                var layerManagerEventListener = _list.objectArray[index]
                layerManagerEventListener.onDeleteLayerManagerEvent(eventObject)
            }.try()
            if (jerror1 != null) {
                var e = jerror1
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
            }
            }
        }
        var eventListenerInterfaceList = this.eventListenerInterfaceList
        var eventListenerInterface = null
        var layerManagerEventListenerInterface = null
        var listenerIndex = 0
        while ((listenerIndex < eventListenerInterfaceList.size())) {
            var jerror2 = Fiber.new {
                eventListenerInterface = eventListenerInterfaceList.objectArray[listenerIndex]
                layerManagerEventListenerInterface = (eventListenerInterface)
                layerManagerEventListenerInterface.onDeleteLayerManagerEvent(eventObject)
            }.try()
            if (jerror2 != null) {
                var e = jerror2
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
            }
            listenerIndex = JR.i32(listenerIndex + 1)
        }
    }
    

    process(eventObject, eventListenerInterface) {
        var layerManagerEventListenerInterface = (eventListenerInterface)
        layerManagerEventListenerInterface.onCreateLayerManagerEvent(eventObject)
    }
}

import "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../org/allbinary/logic/util/event/EventListenerInterface" for EventListenerInterface
import "../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./LayerManagerEventListener" for LayerManagerEventListener
import "./LayerManagerEvent" for LayerManagerEvent
import "./LayerManagerEventListenerInterface" for LayerManagerEventListenerInterface

