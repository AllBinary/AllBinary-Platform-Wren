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
import "../../../../../org/allbinary/game/collision/CollidableBaseBehavior" for CollidableBaseBehavior

class CollidableDestroyableDamageableBehavior is CollidableBaseBehavior {
  damageUtil { _damageUtil }
  damageUtil=(value) { _damageUtil = value }

  initFields_CollidableDestroyableDamageableBehavior() {
    _damageUtil = null
        _damageUtil = DamageUtil.getInstance()
  }
    

    construct new(collidable) {
        super(collidable)
        initFields_CollidableDestroyableDamageableBehavior()
    }
    

    isCollision(ownerLayer, collisionLayer) {
        if ((ownerLayer.getGroupInterface()[0] != collisionLayer.getGroupInterface()[0])) {
            return super.isCollision(ownerLayer, collisionLayer)
        }
        return false
    }
    

    collide(ownerLayer, collidableInterfaceCompositeInterface) {
        var ownerCollidableDestroyableDamageableLayer = ownerLayer
        var collidableDestroyableDamageableLayer = collidableInterfaceCompositeInterface
        ownerCollidableDestroyableDamageableLayer.damage(collidableDestroyableDamageableLayer.getDamage(0), 0)
    }
    

    isCollisionInterface(ownerLayer, collidableInterfaceCompositeInterface) {
        ForcedLogUtil.log("No Longer Used", this)
        return false
    }
    

    collideInterface(ownerLayer, collidableInterfaceCompositeInterface) {
        ForcedLogUtil.log("No Longer Used", this)
    }
}

import "../../../../../org/allbinary/game/collision/CollidableInterfaceCompositeInterface" for CollidableInterfaceCompositeInterface
import "../../../../../org/allbinary/game/combat/damage/DamageUtil" for DamageUtil
import "../../../../../org/allbinary/game/layer/CollidableCompositeLayer" for CollidableCompositeLayer
import "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "./CollidableDestroyableDamageableLayer" for CollidableDestroyableDamageableLayer

