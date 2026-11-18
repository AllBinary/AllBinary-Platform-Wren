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
// package org.allbinary.game.part.weapon

import "../../../../../allbinary_java" for JObject, JException, JR
import "./BasicWeaponPart" for BasicWeaponPart

class BasicProjectileWeaponPart is BasicWeaponPart {
  weaponLayerCircularStaticPool { _weaponLayerCircularStaticPool }
  weaponLayerCircularStaticPool=(value) { _weaponLayerCircularStaticPool = value }

  initFields_BasicProjectileWeaponPart() {
    _weaponLayerCircularStaticPool = null
        
  }
    

    static createBasicProjectileWeaponPart(animationInterface, weaponLayerCircularStaticPool) {
        return BasicProjectileWeaponPart.new(animationInterface, AllBinaryLayer.NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, WeaponProperties.NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship.NULL_RELATIVE_RELATIONSHIP)
    }
    

    construct new(animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, weaponProperties, scoreableInterface, relativeRelationship) {
        super(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        initFields_BasicProjectileWeaponPart()
        _weaponLayerCircularStaticPool = weaponLayerCircularStaticPool
    }
    

    processScore(allbinaryLayerManager, angle, otherAngle, weaponProperties, scoreableInterface) {
        var weaponLayer = _weaponLayerCircularStaticPool.getInstanceWeaponLayer(this.getOwnerLayerInterface(), this.relativeRelationship.getX(), this.relativeRelationship.getY(), this.relativeRelationship.getZ(), JR.i32(angle), JR.i32(otherAngle), weaponProperties, scoreableInterface)
        allbinaryLayerManager.append(weaponLayer)
    }
}

import "../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../org/allbinary/game/combat/weapon/WeaponProperties" for WeaponProperties
import "../../../../../org/allbinary/game/layer/weapon/WeaponLayer" for WeaponLayer
import "../../../../../org/allbinary/game/layer/weapon/WeaponLayerCircularPool" for WeaponLayerCircularPool
import "../../../../../org/allbinary/game/score/NoScoreable" for NoScoreable
import "../../../../../org/allbinary/game/score/ScoreableInterface" for ScoreableInterface
import "../../../../../org/allbinary/graphics/RelativeRelationship" for RelativeRelationship
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager

