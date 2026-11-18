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

class CollidableWeaponBehavior is CollidableDestroyableDamageableBehavior {
    static NULL_COLLIDABLE_WEAPON_BEHAVIOR {
    if (__NULL_COLLIDABLE_WEAPON_BEHAVIOR_set == null) {
      __NULL_COLLIDABLE_WEAPON_BEHAVIOR_set = true
      __NULL_COLLIDABLE_WEAPON_BEHAVIOR = NullUtil.getInstance().NULL_OBJECT
    }
    return __NULL_COLLIDABLE_WEAPON_BEHAVIOR
  }
  static NULL_COLLIDABLE_WEAPON_BEHAVIOR=(value) {
    __NULL_COLLIDABLE_WEAPON_BEHAVIOR_set = true
    __NULL_COLLIDABLE_WEAPON_BEHAVIOR = value
  }
  collided { _collided }
  collided=(value) { _collided = value }
  collisionHelper { _collisionHelper }
  collisionHelper=(value) { _collisionHelper = value }

  initFields_CollidableWeaponBehavior() {
    _collided = false
    _collisionHelper = null
        _collided = false
        
  }
    

    static getNullInstance() {
        if ((CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR == NullUtil.getInstance().NULL_OBJECT)) {
            CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR = CollidableWeaponBehavior.new(false)
        }
        return CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR
    }
    

    construct new(collidable) {
        super(collidable)
        initFields_CollidableWeaponBehavior()
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
        var ownerDamageableInterface = ownerLayer
        var damageableInterface = collidableInterfaceCompositeInterface
        this.damageUtil.process(ownerDamageableInterface, damageableInterface)
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
import "../../../../../org/allbinary/logic/NullUtil" for NullUtil

