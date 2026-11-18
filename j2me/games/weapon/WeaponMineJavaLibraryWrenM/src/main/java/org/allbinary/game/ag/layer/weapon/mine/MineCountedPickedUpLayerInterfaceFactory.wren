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
// package org.allbinary.game.ag.layer.weapon.mine

import "../../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../../org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory" for CountedPickedUpLayerInterfaceFactory

class MineCountedPickedUpLayerInterfaceFactory is CountedPickedUpLayerInterfaceFactory {
    static pickedUpLayerInterfaceFactoryInterface {
    if (__pickedUpLayerInterfaceFactoryInterface_set == null) {
      __pickedUpLayerInterfaceFactoryInterface_set = true
      __pickedUpLayerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY
    }
    return __pickedUpLayerInterfaceFactoryInterface
  }
  static pickedUpLayerInterfaceFactoryInterface=(value) {
    __pickedUpLayerInterfaceFactoryInterface_set = true
    __pickedUpLayerInterfaceFactoryInterface = value
  }
  weaponLayerCircularStaticPool { _weaponLayerCircularStaticPool }
  weaponLayerCircularStaticPool=(value) { _weaponLayerCircularStaticPool = value }
  weaponProperties { _weaponProperties }
  weaponProperties=(value) { _weaponProperties = value }
  smallIntegerSingletonFactory { _smallIntegerSingletonFactory }
  smallIntegerSingletonFactory=(value) { _smallIntegerSingletonFactory = value }

  initFields_MineCountedPickedUpLayerInterfaceFactory() {
    _weaponLayerCircularStaticPool = null
    _weaponProperties = null
    _smallIntegerSingletonFactory = null
        _weaponLayerCircularStaticPool = MineLayerCircularStaticPool.getInstance()
        _weaponProperties = WeaponProperties.new(-1, -1, 0, 8000, JR.i16(10))
        _smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
  }
    

    static init() {
        MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = MineCountedPickedUpLayerInterfaceFactory.new()
    }
    

    construct new() {
        super(PickedUpLayerTypeFactory.getInstance().MINE, IconLayerFactory.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(MineWeaponResources.getInstance().DROP_ICON_RESOURCE).getInstance(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(MineWeaponResources.getInstance().DROP_RESOURCE).getInstance(0))
        initFields_MineCountedPickedUpLayerInterfaceFactory()
    }
    

    static getInstance() {
        return MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface
    }
    

    getTotal() {
        return 3
    }
    

    getNextInstance(hashtable, x, y, z) {
        var sourceLayerInterface = hashtable.get(_smallIntegerSingletonFactory.getAt(0))
        var angle = hashtable.get(_smallIntegerSingletonFactory.getAt(1))
        var scoreableInterface = sourceLayerInterface
        return _weaponLayerCircularStaticPool.getInstanceWeaponLayer(sourceLayerInterface, x, y, z, JR.i32(angle.intValue()), 0, _weaponProperties, scoreableInterface)
    }
}

import "../../../../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" for FeaturedAnimationInterfaceFactoryInterfaceFactory
import "../../../../../../../org/allbinary/game/combat/weapon/WeaponProperties" for WeaponProperties
import "../../../../../../../org/allbinary/game/layer/pickup/IconLayerFactory" for IconLayerFactory
import "../../../../../../../org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface" for PickedUpLayerInterfaceFactoryInterface
import "../../../../../../../org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory" for PickedUpLayerTypeFactory
import "../../../../../../../org/allbinary/game/layer/weapon/WeaponLayerCircularPool" for WeaponLayerCircularPool
import "../../../../../../../org/allbinary/game/score/ScoreableInterface" for ScoreableInterface
import "../../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../../../../java/lang/Integer" for Integer
import "./MineLayerCircularStaticPool" for MineLayerCircularStaticPool
import "./MineWeaponResources" for MineWeaponResources

