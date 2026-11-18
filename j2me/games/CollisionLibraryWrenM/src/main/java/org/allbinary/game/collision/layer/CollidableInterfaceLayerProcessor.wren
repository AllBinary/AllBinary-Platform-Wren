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
// package org.allbinary.game.collision.layer

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/layer/LayerProcessor" for LayerProcessor

class CollidableInterfaceLayerProcessor is LayerProcessor {

  initFields_CollidableInterfaceLayerProcessor() {
  }
    

    construct new() {
        super(CollidableInterfaceLayerManager.new())
    }
    

    processAt(allBinaryLayerManager, layerInterface, index) {
        var collidableInterfaceCompositeInterface = layerInterface
        if (collidableInterfaceCompositeInterface.getCollidableInferface().isCollidable(collidableInterfaceCompositeInterface)) {
            AllBinaryCollisionManager.getInstance().process(this.getLayerManager(), collidableInterfaceCompositeInterface, index)
        }
    }
    

    isProcessorLayer(layerInterface) {
        if (layerInterface.implmentsCollidableInterface()) {
            return true
        } else {
            return false
        }
    }
}

import "../../../../../org/allbinary/game/collision/CollidableInterfaceCompositeInterface" for CollidableInterfaceCompositeInterface
import "../../../../../org/allbinary/game/layer/CollidableCompositeLayer" for CollidableCompositeLayer
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "./CollidableInterfaceLayerManager" for CollidableInterfaceLayerManager
import "./AllBinaryCollisionManager" for AllBinaryCollisionManager

