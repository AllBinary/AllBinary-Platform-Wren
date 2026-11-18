// Generated Code Do Not Modify
// package org.allbinary.game.terrain

import "../../../../allbinary_java" for JObject, JException, JR

class TerrainEventListener is JObject {
  list { _list }
  list=(value) { _list = value }

  initFields_TerrainEventListener() {
    _list = null
        _list = BasicArrayListD.new()
  }

  construct new() {
    super()
    initFields_TerrainEventListener()
  }
    

    onEvent(eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)
    }
    

    onTerrainEvent(terrainEvent) {
        _list.clear()
        _list.add(terrainEvent)
    }
    

    getList() {
        return _list
    }
}

import "../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./TerrainEventListenerInterface" for TerrainEventListenerInterface
import "./TerrainEvent" for TerrainEvent

