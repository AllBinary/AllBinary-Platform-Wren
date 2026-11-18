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

class CollisionHelper is JObject {
  sourceLayerInterface { _sourceLayerInterface }
  sourceLayerInterface=(value) { _sourceLayerInterface = value }

  initFields_CollisionHelper() {
    _sourceLayerInterface = null
        
  }
    

    construct new(sourceLayerInterface) {
    super()
    initFields_CollisionHelper()
        _sourceLayerInterface = sourceLayerInterface
    }
    

    isCollidable(layerInterface) {
        return true
    }
    

    getOwnerLayerInterface() {
        return _sourceLayerInterface
    }
    

    setOwnerLayerInterface(sourceLayerInterface) {
        _sourceLayerInterface = sourceLayerInterface
    }
}

import "../../../../org/allbinary/game/layer/CollidableCompositeLayer" for CollidableCompositeLayer
import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer

