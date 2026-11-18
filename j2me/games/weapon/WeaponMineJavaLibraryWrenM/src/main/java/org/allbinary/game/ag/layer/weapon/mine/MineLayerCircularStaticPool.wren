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

class MineLayerCircularStaticPool is JObject {
    static WEAPON_LAYER_CIRCULAR_STATIC_POOL {
    if (__WEAPON_LAYER_CIRCULAR_STATIC_POOL_set == null) {
      __WEAPON_LAYER_CIRCULAR_STATIC_POOL_set = true
      __WEAPON_LAYER_CIRCULAR_STATIC_POOL = WeaponLayerCircularPool.new()
    }
    return __WEAPON_LAYER_CIRCULAR_STATIC_POOL
  }
  static WEAPON_LAYER_CIRCULAR_STATIC_POOL=(value) {
    __WEAPON_LAYER_CIRCULAR_STATIC_POOL_set = true
    __WEAPON_LAYER_CIRCULAR_STATIC_POOL = value
  }

  initFields_MineLayerCircularStaticPool() {
  }

  construct new() {
    super()
    initFields_MineLayerCircularStaticPool()
  }
    

    static init(viewPositionFactoryInterface) {
        MineCountedPickedUpLayerInterfaceFactory.init()
        MineLayerCircularStaticPool.WEAPON_LAYER_CIRCULAR_STATIC_POOL.initAllBinaryLayerCircularPool(MineLayerFactory.new(viewPositionFactoryInterface), 20)
    }
    

    static getInstance() {
        return MineLayerCircularStaticPool.WEAPON_LAYER_CIRCULAR_STATIC_POOL
    }
}

import "../../../../../../../org/allbinary/game/layer/weapon/WeaponLayerCircularPool" for WeaponLayerCircularPool
import "../../../../../../../org/allbinary/view/ViewPositionFactoryInterface" for ViewPositionFactoryInterface
import "./MineCountedPickedUpLayerInterfaceFactory" for MineCountedPickedUpLayerInterfaceFactory
import "./MineLayerFactory" for MineLayerFactory

