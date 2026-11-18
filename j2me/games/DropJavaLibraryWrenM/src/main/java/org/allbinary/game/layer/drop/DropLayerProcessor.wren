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
// package org.allbinary.game.layer.drop

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/layer/BasicLayerProcessor" for BasicLayerProcessor

class DropLayerProcessor is BasicLayerProcessor {
    static LAYER_PROCESSOR {
    if (__LAYER_PROCESSOR_set == null) {
      __LAYER_PROCESSOR_set = true
      __LAYER_PROCESSOR = DropLayerProcessor.new()
    }
    return __LAYER_PROCESSOR
  }
  static LAYER_PROCESSOR=(value) {
    __LAYER_PROCESSOR_set = true
    __LAYER_PROCESSOR = value
  }

  initFields_DropLayerProcessor() {
  }
    

    construct new() {
    super()
    initFields_DropLayerProcessor()
    }
    

    static getInstance() {
        return DropLayerProcessor.LAYER_PROCESSOR
    }
    

    process(allBinaryLayerManager) {
        var list = this.getList()
        var size = list.size()
        var layerInterface = null
        var dropLayerInterface = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            layerInterface = list.objectArray[index]
            dropLayerInterface = layerInterface
            layerInterface = dropLayerInterface.getDroppedLayer()
            allBinaryLayerManager.append(layerInterface)
            }
        }
        list.clear()
    }
}

import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "./DropLayerInterface" for DropLayerInterface

