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
// package org.allbinary.game.layer.weapon

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/game/layer/special/CollidableDestroyableDamageableBehavior" for CollidableDestroyableDamageableBehavior

class CollidableDamageWeaponBehavior is CollidableDestroyableDamageableBehavior {
  collided { _collided }
  collided=(value) { _collided = value }
  collisionHelper { _collisionHelper }
  collisionHelper=(value) { _collisionHelper = value }

  initFields_CollidableDamageWeaponBehavior() {
    _collided = false
    _collisionHelper = null
        _collided = false
        
  }
    

    construct new(collidable) {
        super(collidable)
        initFields_CollidableDamageWeaponBehavior()
        this.setCollided(false)
        this.setCollidable(true)
        _collisionHelper = CollidableHelperFactory.getInstance()
    }
    

    init(sourceLayerInterface) {
        this.setCollided(false)
        _collisionHelper.setOwnerLayerInterface(sourceLayerInterface)
    }
    

    isCollision(ownerLayer, collisionLayer) {
        if (_collisionHelper.isCollidable(collisionLayer)) {
            if ((ownerLayer.getGroupInterface()[0] != collisionLayer.getGroupInterface()[0])) {
                return super.isCollision(ownerLayer, collisionLayer)
            }
        }
        return false
    }
    

    collide(ownerLayer, collisionLayer) {
        super.collide(ownerLayer, collisionLayer)
        _collided = true
    }
    

    isCollisionInterface(ownerLayer, collidableInterfaceCompositeInterface) {
        if (_collisionHelper.isCollidable(collidableInterfaceCompositeInterface)) {
            var layerInterface = collidableInterfaceCompositeInterface
            if ((ownerLayer.getGroupInterface()[0] != layerInterface.getGroupInterface()[0])) {
                if (this.layerCollisionUtil.isCollision(ownerLayer, layerInterface)) {
                    return true
                }
            }
        }
        return false
    }
    

    collideInterface(ownerLayer, collidableInterfaceCompositeInterface) {
        this.damageUtil.process(ownerLayer, collidableInterfaceCompositeInterface)
        _collided = true
    }
    

    getCollisionTypeWith(layerInterface) {
        return CollisionTypeFactory.getInstance().COLLISION
    }
    

    isCollided() {
        return _collided
    }
    

    setCollided(collided) {
        _collided = collided
    }
}

import "../../../../../org/allbinary/game/collision/CollidableHelperFactory" for CollidableHelperFactory
import "../../../../../org/allbinary/game/collision/CollidableInterfaceCompositeInterface" for CollidableInterfaceCompositeInterface
import "../../../../../org/allbinary/game/collision/CollisionHelper" for CollisionHelper
import "../../../../../org/allbinary/game/collision/CollisionType" for CollisionType
import "../../../../../org/allbinary/game/collision/CollisionTypeFactory" for CollisionTypeFactory
import "../../../../../org/allbinary/game/combat/damage/DamageableInterface" for DamageableInterface
import "../../../../../org/allbinary/game/layer/CollidableCompositeLayer" for CollidableCompositeLayer
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer

