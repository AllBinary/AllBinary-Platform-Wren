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
// package org.allbinary.game.tracking

import "../../../../allbinary_java" for JObject, JException, JR

class TrackingEventCircularStaticPool is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = TrackingEventCircularStaticPool.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  EVENT_POOL { _EVENT_POOL }
  EVENT_POOL=(value) { _EVENT_POOL = value }

  initFields_TrackingEventCircularStaticPool() {
    _EVENT_POOL = null
        _EVENT_POOL = AllBinaryEventCircularPool.new(20)
  }

  construct new() {
    super()
    initFields_TrackingEventCircularStaticPool()
  }
    

    static getInstance() {
        return TrackingEventCircularStaticPool.instance
    }
    

    init() {
        _EVENT_POOL.initAllBinaryEventCircularPool(TrackingEventFactory.new())
    }
    

    getNextInstance(layerInterface) {
        var trackingEvent = _EVENT_POOL.getNextInstance()
        trackingEvent.setLayerInterfaceForCircularStaticPool(layerInterface)
        return trackingEvent
    }
}

import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../org/allbinary/logic/util/event/AllBinaryEventCircularPool" for AllBinaryEventCircularPool
import "./TrackingEventFactory" for TrackingEventFactory
import "./TrackingEvent" for TrackingEvent

