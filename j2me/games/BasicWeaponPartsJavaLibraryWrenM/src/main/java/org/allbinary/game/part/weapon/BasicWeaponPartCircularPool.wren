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

class BasicWeaponPartCircularPool is JObject {
    static NULL_BASIC_WEAPON_PART_CIRCULAR_POOL {
    if (__NULL_BASIC_WEAPON_PART_CIRCULAR_POOL_set == null) {
      __NULL_BASIC_WEAPON_PART_CIRCULAR_POOL_set = true
      __NULL_BASIC_WEAPON_PART_CIRCULAR_POOL = BasicWeaponPartCircularPool.new()
    }
    return __NULL_BASIC_WEAPON_PART_CIRCULAR_POOL
  }
  static NULL_BASIC_WEAPON_PART_CIRCULAR_POOL=(value) {
    __NULL_BASIC_WEAPON_PART_CIRCULAR_POOL_set = true
    __NULL_BASIC_WEAPON_PART_CIRCULAR_POOL = value
  }
  basicWeaponPart { _basicWeaponPart }
  basicWeaponPart=(value) { _basicWeaponPart = value }

  initFields_BasicWeaponPartCircularPool() {
    _basicWeaponPart = null
        _basicWeaponPart = BasicWeaponPart.NULL_BASIC_WEAPON_PART
  }

  construct new() {
    super()
    initFields_BasicWeaponPartCircularPool()
  }
    

    init(basicWeaponPartFactoryInterface) {
        _basicWeaponPart = basicWeaponPartFactoryInterface.getInstance()
    }
    

    getInstance(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship) {
        _basicWeaponPart.init(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        return _basicWeaponPart
    }
}

import "../../../../../org/allbinary/game/combat/weapon/WeaponProperties" for WeaponProperties
import "../../../../../org/allbinary/game/score/ScoreableInterface" for ScoreableInterface
import "../../../../../org/allbinary/graphics/RelativeRelationship" for RelativeRelationship
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "./BasicWeaponPart" for BasicWeaponPart
import "./BasicWeaponPartFactoryInterface" for BasicWeaponPartFactoryInterface

