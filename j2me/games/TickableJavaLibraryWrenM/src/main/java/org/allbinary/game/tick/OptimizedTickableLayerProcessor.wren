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
// package org.allbinary.game.tick

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/layer/LayerProcessor" for LayerProcessor

class OptimizedTickableLayerProcessor is LayerProcessor {

  initFields_OptimizedTickableLayerProcessor() {
  }
    

    construct new() {
        super(OptimizedTickableLayerManager.new())
    }
    

    processAt(allBinaryLayerManager, layerInterface, index) {
        var tickableInterface = layerInterface
        tickableInterface.processTick(allBinaryLayerManager)
    }
    

    isProcessorLayer(layerInterface) {
        if (layerInterface.implmentsTickableInterface()) {
            return true
        } else {
            return false
        }
    }
}

import "../../../../org/allbinary/game/layer/AllBinaryGameLayer" for AllBinaryGameLayer
import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "./OptimizedTickableLayerManager" for OptimizedTickableLayerManager

