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
// package org.allbinary.game.layer.special

import "../../../../../allbinary_java" for JObject, JException, JR
import "./CollidableDestroyableDamageableBehavior" for CollidableDestroyableDamageableBehavior

class CollidableCharacterBehavior is CollidableDestroyableDamageableBehavior {

  initFields_CollidableCharacterBehavior() {
  }
    

    construct new(collidable) {
        super(collidable)
    }
    

    collide(ownerLayer, collidableInterfaceCompositeInterface) {
        var collisionTypeFactory = CollisionTypeFactory.getInstance()
        var collisionType = collidableInterfaceCompositeInterface.getCollidableInferface().getCollisionTypeWith(ownerLayer)
        if ((collisionType == collisionTypeFactory.PICKUP)) {
            var collidableDestroyableDamageableLayer = ownerLayer
            collidableDestroyableDamageableLayer.getPickupBehavior().doPickupLayer(collidableInterfaceCompositeInterface)
        } else {
            super.collide(ownerLayer, collidableInterfaceCompositeInterface)
        }
    }
    

    collideInterface(ownerLayer, collidableInterfaceCompositeInterface) {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this)
    }
}

import "../../../../../org/allbinary/game/collision/CollidableInterfaceCompositeInterface" for CollidableInterfaceCompositeInterface
import "../../../../../org/allbinary/game/collision/CollisionType" for CollisionType
import "../../../../../org/allbinary/game/collision/CollisionTypeFactory" for CollisionTypeFactory
import "../../../../../org/allbinary/game/layer/CollidableCompositeLayer" for CollidableCompositeLayer
import "../../../../../org/allbinary/game/layer/pickup/PickedUpLayerInterface" for PickedUpLayerInterface
import "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "./CollidableDestroyableDamageableLayer" for CollidableDestroyableDamageableLayer

