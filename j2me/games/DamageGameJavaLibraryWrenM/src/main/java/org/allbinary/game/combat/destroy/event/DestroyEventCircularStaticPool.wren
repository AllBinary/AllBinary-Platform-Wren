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
// package org.allbinary.game.combat.destroy.event

import "../../../../../../allbinary_java" for JObject, JException, JR

class DestroyEventCircularStaticPool is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = DestroyEventCircularStaticPool.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  EVENT_POOL { _EVENT_POOL }
  EVENT_POOL=(value) { _EVENT_POOL = value }

  initFields_DestroyEventCircularStaticPool() {
    _EVENT_POOL = null
        _EVENT_POOL = AllBinaryEventCircularPool.new(20)
  }
    

    static getInstance() {
        return DestroyEventCircularStaticPool.instance
    }
    

    construct new() {
    super()
    initFields_DestroyEventCircularStaticPool()
    }
    

    init(combatGameCanvas) {
        _EVENT_POOL.initAllBinaryEventCircularPool(DestroyEventFactory.new(combatGameCanvas))
    }
    

    getInstanceForLayer(layerInterface) {
        var destroyedEvent = _EVENT_POOL.getNextInstance()
        destroyedEvent.setLayerInterfaceForCircularStaticPool(layerInterface)
        return destroyedEvent
    }
}

import "../../../../../../org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" for AllBinaryGameCanvas
import "../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../org/allbinary/logic/util/event/AllBinaryEventCircularPool" for AllBinaryEventCircularPool
import "./DestroyEventFactory" for DestroyEventFactory
import "./DestroyedEvent" for DestroyedEvent

