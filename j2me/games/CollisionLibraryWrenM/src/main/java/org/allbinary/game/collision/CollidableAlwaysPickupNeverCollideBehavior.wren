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
import "./CollidableNeverCollideBehavior" for CollidableNeverCollideBehavior

class CollidableAlwaysPickupNeverCollideBehavior is CollidableNeverCollideBehavior {

  initFields_CollidableAlwaysPickupNeverCollideBehavior() {
  }
    

    construct new() {
        super(true)
    }
    

    getCollisionTypeWith(layerInterface) {
        return CollisionTypeFactory.getInstance().PICKUP
    }
}

import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "./CollisionTypeFactory" for CollisionTypeFactory
import "./CollisionType" for CollisionType

