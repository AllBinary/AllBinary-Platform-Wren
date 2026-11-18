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

class ArcedMultiBeamWeaponPart is BasicWeaponPart {
  weaponLayerCircularStaticPool { _weaponLayerCircularStaticPool }
  weaponLayerCircularStaticPool=(value) { _weaponLayerCircularStaticPool = value }
  total { _total }
  total=(value) { _total = value }
  TOTAL_ANGLE { _TOTAL_ANGLE }
  TOTAL_ANGLE=(value) { _TOTAL_ANGLE = value }

  initFields_ArcedMultiBeamWeaponPart() {
    _weaponLayerCircularStaticPool = null
    _total = 0
    _TOTAL_ANGLE = 0
        
        
        _TOTAL_ANGLE = JR.i32(AngleFactory.getInstance().TOTAL_ANGLE)
  }
    

    construct new(animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, total, weaponProperties, scoreableInterface, relativeRelationship) {
        super(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        initFields_ArcedMultiBeamWeaponPart()
        _total = total
        _weaponLayerCircularStaticPool = weaponLayerCircularStaticPool
    }
    

    processScore(allbinaryLayerManager, angle, otherAngle, weaponProperties, scoreableInterface) {
        var increment = JR.i16((JR.idiv((JR.i32(_total - 1)), _TOTAL_ANGLE)))
        var minAngle = JR.i16((JR.i32(JR.i32(angle) - (JR.shr((JR.i32(JR.i32(increment) * _total)), 1)))))
        var next = 0
        var weaponLayer = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < _total))) break
            weaponLayer = _weaponLayerCircularStaticPool.getInstanceWeaponLayer(this.getOwnerLayerInterface(), this.relativeRelationship.getX(), this.relativeRelationship.getY(), 0, (JR.i32(minAngle + increment)), JR.i32(otherAngle), weaponProperties, scoreableInterface)
            allbinaryLayerManager.append(weaponLayer)
            next = JR.i32(next + JR.i32(increment))
            }
        }
    }
}

import "../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../org/allbinary/game/combat/weapon/WeaponProperties" for WeaponProperties
import "../../../../../org/allbinary/game/layer/weapon/WeaponLayer" for WeaponLayer
import "../../../../../org/allbinary/game/layer/weapon/WeaponLayerCircularPool" for WeaponLayerCircularPool
import "../../../../../org/allbinary/game/score/ScoreableInterface" for ScoreableInterface
import "../../../../../org/allbinary/graphics/RelativeRelationship" for RelativeRelationship
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../../org/allbinary/math/AngleFactory" for AngleFactory

