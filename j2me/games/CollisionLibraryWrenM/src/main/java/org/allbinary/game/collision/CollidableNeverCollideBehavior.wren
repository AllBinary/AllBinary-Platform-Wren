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
import "./CollidableBaseBehavior" for CollidableBaseBehavior

class CollidableNeverCollideBehavior is CollidableBaseBehavior {

  initFields_CollidableNeverCollideBehavior() {
  }
    

    construct new(isCollidable) {
        super(isCollidable)
    }
    

    isCollision(ownerLayer, allbinaryCollidableLayer) {
        return false
    }
    

    collide(ownerLayer, allbinaryCollidableLayer) {
    }
    

    collideInterface(ownerLayer, collidableInterfaceCompositeInterface) {
    }
    

    isCollisionInterface(ownerLayer, collidableInterfaceCompositeInterface) {
        return false
    }
}

import "../../../../org/allbinary/game/layer/CollidableCompositeLayer" for CollidableCompositeLayer
import "./CollidableInterfaceCompositeInterface" for CollidableInterfaceCompositeInterface

