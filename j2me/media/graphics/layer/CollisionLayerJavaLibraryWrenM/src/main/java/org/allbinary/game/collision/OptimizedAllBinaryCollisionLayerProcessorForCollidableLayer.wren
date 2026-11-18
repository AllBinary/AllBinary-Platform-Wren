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
// package org.allbinary.game.collision

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/layer/LayerProcessor" for LayerProcessor

class OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer is LayerProcessor {

  initFields_OptimizedAllBinaryCollisionLayerProcesso59dableLayer() {
  }
    

    construct new() {
        super(OptimizedAllBinaryCollisionLayerManager.new())
    }
    

    processAt(allBinaryLayerManager, layerInterface, startIndex) {
        var collidableInterfaceCompositeInterface = layerInterface
        var collidableBase = collidableInterfaceCompositeInterface.getCollidableInferface()
        if (collidableBase.isCollidable(collidableInterfaceCompositeInterface)) {
            var layerManager = this.getLayerManager()
            var size = layerManager.getSize()
            var collidableInterfaceCompositeInterface2 = null
            var collidableBase2 = null
            if (true) {
                var index = JR.i32(startIndex + 1)
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < size))) break
                collidableInterfaceCompositeInterface2 = layerManager.getLayerAt(index)
                collidableBase2 = collidableInterfaceCompositeInterface2.getCollidableInferface()
                if ((collidableBase2.isCollidable(collidableInterfaceCompositeInterface) && collidableBase.isCollision(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2))) {
                    collidableBase.collide(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
                    collidableBase2.collide(collidableInterfaceCompositeInterface2, collidableInterfaceCompositeInterface)
                }
                }
            }
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

import "../../../../org/allbinary/game/layer/CollidableCompositeLayer" for CollidableCompositeLayer
import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../org/allbinary/layer/LayerManager" for LayerManager
import "./OptimizedAllBinaryCollisionLayerManager" for OptimizedAllBinaryCollisionLayerManager
import "./CollidableBaseBehavior" for CollidableBaseBehavior

