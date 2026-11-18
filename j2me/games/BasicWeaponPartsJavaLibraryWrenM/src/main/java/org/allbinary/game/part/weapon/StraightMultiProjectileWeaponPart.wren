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

class StraightMultiProjectileWeaponPart is BasicWeaponPart {
  weaponLayerCircularStaticPool { _weaponLayerCircularStaticPool }
  weaponLayerCircularStaticPool=(value) { _weaponLayerCircularStaticPool = value }
  total { _total }
  total=(value) { _total = value }
  noDecimalTrigTable { _noDecimalTrigTable }
  noDecimalTrigTable=(value) { _noDecimalTrigTable = value }

  initFields_StraightMultiProjectileWeaponPart() {
    _weaponLayerCircularStaticPool = null
    _total = 0
    _noDecimalTrigTable = null
        
        
        _noDecimalTrigTable = NoDecimalTrigTable.getInstance()
  }
    

    static createStraightMultiProjectileWeaponPart(animationInterface, weaponLayerCircularStaticPool) {
        return StraightMultiProjectileWeaponPart.new(animationInterface, AllBinaryLayer.NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, 2, WeaponProperties.NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship.NULL_RELATIVE_RELATIONSHIP)
    }
    

    construct new(animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, total, weaponProperties, scoreableInterface, relativeRelationship) {
        super(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        initFields_StraightMultiProjectileWeaponPart()
        _total = total
        _weaponLayerCircularStaticPool = weaponLayerCircularStaticPool
    }
    

    processScore(allbinaryLayerManager, angle, otherAngle, weaponProperties, scoreableInterface) {
        var sourceLayerInterface = this.getOwnerLayerInterface()
        var reducedWidth = (((sourceLayerInterface.getWidth() * 8) / 10))
        var halfWidth = (JR.shr(reducedWidth, 1))
        var x = this.relativeRelationship.getX()
        var y = this.relativeRelationship.getY()
        var sine = 0
        var beamX = 0
        var cosine = 0
        var beamY = 0
        var weaponLayer = null
        var increment = JR.idiv(reducedWidth, (JR.i32(_total - 1)))
        var next = -halfWidth
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < _total))) break
            sine = ((next * _noDecimalTrigTable.sin(JR.i32(angle))))
            beamX = JR.i32(((sine / _noDecimalTrigTable.SCALE)))
            cosine = ((next * _noDecimalTrigTable.cos(JR.i32(angle))))
            beamY = -JR.i32(((cosine / _noDecimalTrigTable.SCALE)))
            weaponLayer = _weaponLayerCircularStaticPool.getInstanceWeaponLayer(sourceLayerInterface, JR.i32(x + beamX), JR.i32(y + beamY), 0, JR.i32(angle), JR.i32(otherAngle), weaponProperties, scoreableInterface)
            allbinaryLayerManager.append(weaponLayer)
            next = JR.i32(next + increment)
            }
        }
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
import "../../../../../org/allbinary/math/NoDecimalTrigTable" for NoDecimalTrigTable

