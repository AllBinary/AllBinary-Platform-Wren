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

class AllBinaryCollisionManager is JObject {
    static allBinaryCollisionManager {
    if (__allBinaryCollisionManager_set == null) {
      __allBinaryCollisionManager_set = true
      __allBinaryCollisionManager = AllBinaryCollisionManager.new()
    }
    return __allBinaryCollisionManager
  }
  static allBinaryCollisionManager=(value) {
    __allBinaryCollisionManager_set = true
    __allBinaryCollisionManager = value
  }

  initFields_AllBinaryCollisionManager() {
  }
    

    construct new() {
    super()
    initFields_AllBinaryCollisionManager()
    }
    

    static getInstance() {
        return AllBinaryCollisionManager.allBinaryCollisionManager
    }
    

    process(layerManager, collidableInterfaceCompositeInterface, startIndex) {
        var size = layerManager.getSize()
        if (true) {
            var index = JR.i32(startIndex + 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            var collidableInterfaceCompositeInterface2 = layerManager.getLayerAt(index)
            this.collide(layerManager, collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
            }
        }
    }
    

    collide(layerManager, collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2) {
        var collidableBase2 = collidableInterfaceCompositeInterface2.getCollidableInferface()
        var collidableBase = collidableInterfaceCompositeInterface.getCollidableInferface()
        if (collidableBase2.isCollidable(collidableInterfaceCompositeInterface)) {
            if (collidableBase.isCollisionInterface(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)) {
                collidableBase.collideInterface(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
                collidableBase2.collideInterface(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface)
            }
        }
    }
}

import "../../../../../org/allbinary/game/collision/CollidableBaseBehavior" for CollidableBaseBehavior
import "../../../../../org/allbinary/game/collision/CollidableInterfaceCompositeInterface" for CollidableInterfaceCompositeInterface
import "../../../../../org/allbinary/game/layer/CollidableCompositeLayer" for CollidableCompositeLayer
import "../../../../../org/allbinary/layer/LayerManager" for LayerManager

