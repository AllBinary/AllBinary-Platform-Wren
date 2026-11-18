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
import "./CollisionHelper" for CollisionHelper

class SourceCollisionHelper is CollisionHelper {

  initFields_SourceCollisionHelper() {
  }
    

    construct new(layerInterface) {
        super(layerInterface)
    }
    

    isCollidable(layerInterface) {
        if ((this.sourceLayerInterface != layerInterface)) {
            return true
        }
        return false
    }
}

import "../../../../org/allbinary/game/layer/CollidableCompositeLayer" for CollidableCompositeLayer
import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer

