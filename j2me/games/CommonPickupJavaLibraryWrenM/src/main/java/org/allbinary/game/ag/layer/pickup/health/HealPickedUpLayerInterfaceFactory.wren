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
// package org.allbinary.game.ag.layer.pickup.health

import "../../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../../org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactory" for PickedUpLayerInterfaceFactory

class HealPickedUpLayerInterfaceFactory is PickedUpLayerInterfaceFactory {
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
  pool { _pool }
  pool=(value) { _pool = value }

  initFields_HealPickedUpLayerInterfaceFactory() {
    _pool = null
        _pool = HealLayerCircularStaticPool.new(HealLayerFactory.new(), 1)
  }
    

    static init() {
        HealPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = HealPickedUpLayerInterfaceFactory.new()
    }
    

    construct new() {
        super(PickedUpLayerTypeFactory.getInstance().HEAL, IconLayerFactory.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(HealthResources.getInstance().RESOURCE).getInstance(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(HealthResources.getInstance().RESOURCE).getInstance(0))
        initFields_HealPickedUpLayerInterfaceFactory()
    }
    

    getTotal() {
        return 1
    }
    

    static getInstance() {
        return HealPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface
    }
    

    process(sourceLayerInterface) {
        _pool.visit(sourceLayerInterface)
    }
}

import "../../../../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" for FeaturedAnimationInterfaceFactoryInterfaceFactory
import "../../../../../../../org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory" for CountedPickedUpLayerInterfaceFactory
import "../../../../../../../org/allbinary/game/layer/pickup/IconLayerFactory" for IconLayerFactory
import "../../../../../../../org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface" for PickedUpLayerInterfaceFactoryInterface
import "../../../../../../../org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory" for PickedUpLayerTypeFactory
import "../../../../../../../org/allbinary/game/layer/pickup/PickupProcessorInterface" for PickupProcessorInterface
import "../../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "./HealLayerCircularStaticPool" for HealLayerCircularStaticPool
import "./HealLayerFactory" for HealLayerFactory
import "./HealthResources" for HealthResources

