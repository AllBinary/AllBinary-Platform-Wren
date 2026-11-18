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

class TerrainEventCircularStaticPool is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = TerrainEventCircularStaticPool.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  EVENT_POOL { _EVENT_POOL }
  EVENT_POOL=(value) { _EVENT_POOL = value }

  initFields_TerrainEventCircularStaticPool() {
    _EVENT_POOL = null
        _EVENT_POOL = AllBinaryEventCircularPool.new(20)
  }

  construct new() {
    super()
    initFields_TerrainEventCircularStaticPool()
  }
    

    static getInstance() {
        return TerrainEventCircularStaticPool.instance
    }
    

    init() {
        _EVENT_POOL.initAllBinaryEventCircularPool(TerrainEventFactory.new())
    }
    

    getNext(basicTerrainInfo) {
        var trackingEvent = _EVENT_POOL.getNextInstance()
        trackingEvent.setBasicTerrainInfoForCircularStaticPool(basicTerrainInfo)
        return trackingEvent
    }
}

import "../../../../org/allbinary/logic/util/event/AllBinaryEventCircularPool" for AllBinaryEventCircularPool
import "./TerrainEventFactory" for TerrainEventFactory
import "./TerrainEvent" for TerrainEvent
import "./BasicTerrainInfo" for BasicTerrainInfo

