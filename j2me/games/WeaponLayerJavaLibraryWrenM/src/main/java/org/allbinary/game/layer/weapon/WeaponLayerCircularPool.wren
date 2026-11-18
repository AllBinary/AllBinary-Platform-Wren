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
import "../../../../../org/allbinary/layer/AllBinaryLayerCircularPool" for AllBinaryLayerCircularPool

class WeaponLayerCircularPool is AllBinaryLayerCircularPool {

  initFields_WeaponLayerCircularPool() {
  }
    

    construct new() {
    super()
    initFields_WeaponLayerCircularPool()
    }
    

    getInstanceWeaponLayer(sourceLayerInterface, x, y, z, angle, otherAngle, weaponProperties, scoreable) {
        var weaponLayer = super.getNextInstance()
        weaponLayer.initXYZ(x, y, z)
        weaponLayer.init(sourceLayerInterface, angle, otherAngle, weaponProperties, scoreable)
        return weaponLayer
    }
}

import "../../../../../org/allbinary/game/combat/weapon/WeaponProperties" for WeaponProperties
import "../../../../../org/allbinary/game/score/ScoreableInterface" for ScoreableInterface
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "./WeaponLayer" for WeaponLayer

