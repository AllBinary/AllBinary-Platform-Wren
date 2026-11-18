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
import "../../../../org/allbinary/layer/NamedInterface" for NamedInterface

class CollidableInterface is JObject {
    

    isCollidable(ownerLayer) {
        Fiber.abort(JR.exception("AbstractMethodError", "isCollidable"))
    }
    

    isCollision(ownerLayer, collidableInterfaceCompositeInterface) {
        Fiber.abort(JR.exception("AbstractMethodError", "isCollision"))
    }
    

    collide(ownerLayer, collidableInterfaceCompositeInterface) {
        Fiber.abort(JR.exception("AbstractMethodError", "collide"))
    }
    

    getCollisionTypeWith(layerInterface) {
        Fiber.abort(JR.exception("AbstractMethodError", "getCollisionTypeWith"))
    }
}

import "../../../../org/allbinary/game/layer/CollidableCompositeLayer" for CollidableCompositeLayer
import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "./CollisionType" for CollisionType

