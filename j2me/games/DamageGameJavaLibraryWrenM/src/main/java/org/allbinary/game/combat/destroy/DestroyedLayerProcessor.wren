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
// package org.allbinary.game.combat.destroy

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/layer/BasicLayerProcessor" for BasicLayerProcessor

class DestroyedLayerProcessor is BasicLayerProcessor {
    static DESTROYED_LAYER_PROCESSOR {
    if (__DESTROYED_LAYER_PROCESSOR_set == null) {
      __DESTROYED_LAYER_PROCESSOR_set = true
      __DESTROYED_LAYER_PROCESSOR = BasicLayerProcessor.NULL_LAYER_PROCESSOR
    }
    return __DESTROYED_LAYER_PROCESSOR
  }
  static DESTROYED_LAYER_PROCESSOR=(value) {
    __DESTROYED_LAYER_PROCESSOR_set = true
    __DESTROYED_LAYER_PROCESSOR = value
  }

  initFields_DestroyedLayerProcessor() {
  }
    

    construct new() {
    super()
    initFields_DestroyedLayerProcessor()
    }
    

    static init() {
        DestroyedLayerProcessor.DESTROYED_LAYER_PROCESSOR = DestroyedLayerProcessor.new()
    }
    

    static getInstance() {
        return DestroyedLayerProcessor.DESTROYED_LAYER_PROCESSOR
    }
    

    process(allBinaryLayerManager) {
        var list = this.getList()
        var size = list.size()
        var destroyedEventHandler = DestroyedEventHandler.getInstance()
        var destroyEventCircularStaticPool = DestroyEventCircularStaticPool.getInstance()
        var destroyedEvent = null
        var layerInterface = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            var layerInterfaceCanBeNull = list.objectArray[index]
            if ((layerInterfaceCanBeNull != null)) {
                layerInterface = layerInterfaceCanBeNull
                allBinaryLayerManager.remove(layerInterface)
                destroyedEvent = destroyEventCircularStaticPool.getInstanceForLayer(layerInterface)
                destroyedEventHandler.fireEvent(destroyedEvent)
            } else {
                var commonStrings = CommonStrings.getInstance()
            }
            }
        }
        list.clear()
    }
}

import "../../../../../org/allbinary/game/combat/destroy/event/DestroyEventCircularStaticPool" for DestroyEventCircularStaticPool
import "../../../../../org/allbinary/game/combat/destroy/event/DestroyedEvent" for DestroyedEvent
import "../../../../../org/allbinary/game/combat/destroy/event/DestroyedEventHandler" for DestroyedEventHandler
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList

