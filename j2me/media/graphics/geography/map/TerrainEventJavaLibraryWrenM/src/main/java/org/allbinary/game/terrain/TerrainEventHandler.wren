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
// package org.allbinary.game.terrain

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/logic/util/event/handler/BasicEventHandler" for BasicEventHandler

class TerrainEventHandler is BasicEventHandler {
    static hashtable {
    if (__hashtable_set == null) {
      __hashtable_set = true
      __hashtable = StdUtil.getInstance().NULL_TABLE
    }
    return __hashtable
  }
  static hashtable=(value) {
    __hashtable_set = true
    __hashtable = value
  }
  list { _list }
  list=(value) { _list = value }

  initFields_TerrainEventHandler() {
    _list = null
        _list = BasicArrayListD.new()
  }
    

    static init() {
        TerrainEventHandler.hashtable = StdUtil.getInstance().createHashtable()
    }
    

    static getInstance(anyType) {
        var eventHandlerCanBeNull = TerrainEventHandler.hashtable.get(anyType)
        if ((eventHandlerCanBeNull == null)) {
            eventHandlerCanBeNull = TerrainEventHandler.new()
            TerrainEventHandler.hashtable.put(anyType, eventHandlerCanBeNull)
        }
        return eventHandlerCanBeNull
    }
    

    construct new() {
    super()
    initFields_TerrainEventHandler()
    }
    

    addListener(terrainEventListener) {
        if (!_list.contains(terrainEventListener)) {
            _list.add(terrainEventListener)
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
                var terrainEventListener = _list.get(index)
                terrainEventListener.onTerrainEvent(eventObject)
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
        var terrainEventListenerInterface = eventListenerInterface
        terrainEventListenerInterface.onTerrainEvent(eventObject)
    }
}

import "../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../org/allbinary/logic/util/event/EventListenerInterface" for EventListenerInterface
import "../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./TerrainEventListener" for TerrainEventListener
import "./TerrainEvent" for TerrainEvent
import "./TerrainEventListenerInterface" for TerrainEventListenerInterface

