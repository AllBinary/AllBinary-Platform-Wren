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
// package org.allbinary.game.input

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/layer/LayerProcessor" for LayerProcessor

class GameInputLayerProcessor is LayerProcessor {

  initFields_GameInputLayerProcessor() {
  }
    

    construct new() {
        super(GameInputLayerManager.new())
    }
    

    processAt(allBinaryLayerManager, layerInterface, index) {
        var gameInputInterface = layerInterface
        gameInputInterface.processInput(allBinaryLayerManager)
    }
    

    isProcessorLayer(layerInterface) {
        if (layerInterface.implmentsGameInputInterface()) {
            return true
        } else {
            return false
        }
    }
}

import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "./GameInputLayerManager" for GameInputLayerManager
import "./GameInputInterface" for GameInputInterface

