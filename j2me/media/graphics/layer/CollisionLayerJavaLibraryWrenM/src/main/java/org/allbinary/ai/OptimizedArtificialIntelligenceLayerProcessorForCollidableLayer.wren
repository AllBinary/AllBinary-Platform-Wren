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
// package org.allbinary.ai

import "../../../allbinary_java" for JObject, JException, JR
import "../../../org/allbinary/layer/LayerProcessor" for LayerProcessor

class OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer is LayerProcessor {

  initFields_OptimizedArtificialIntelligenceLayerProc63dableLayer() {
  }
    

    construct new() {
        super(OptimizedArtificialIntelligenceLayerManager.new())
    }
    

    processAt(allBinaryLayerManager, layerInterface, index) {
        var artificialIntelligenceCompositeInterface = layerInterface
        artificialIntelligenceCompositeInterface.getArtificialIntelligenceInterface().processAI(allBinaryLayerManager)
    }
    

    isProcessorLayer(layerInterface) {
        if (layerInterface.implmentsArtificialIntelligenceCompositeInterface()) {
            return true
        } else {
            return false
        }
    }
}

import "../../../org/allbinary/game/layer/CollidableCompositeLayer" for CollidableCompositeLayer
import "../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "./OptimizedArtificialIntelligenceLayerManager" for OptimizedArtificialIntelligenceLayerManager

