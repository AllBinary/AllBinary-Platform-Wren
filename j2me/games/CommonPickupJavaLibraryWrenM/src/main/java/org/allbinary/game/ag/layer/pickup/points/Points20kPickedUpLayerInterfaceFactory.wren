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
// package org.allbinary.game.ag.layer.pickup.points

import "../../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../../org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactory" for PickedUpLayerInterfaceFactory

class Points20kPickedUpLayerInterfaceFactory is PickedUpLayerInterfaceFactory {
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

  initFields_Points20kPickedUpLayerInterfaceFactory() {
    _pool = null
        _pool = PointsLayerCircularStaticPool.new(PointsLayerFactory.new((GameConfigurationUtil.getInstance().getCompetitionValue() * 20000)), 1)
  }
    

    static init() {
        Points20kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = Points20kPickedUpLayerInterfaceFactory.new()
    }
    

    construct new() {
        super(PickedUpLayerTypeFactory.getInstance().POINTS, IconLayerFactory.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(PointsResources.getInstance().RESOURCE_2).getInstance(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(PointsResources.getInstance().RESOURCE_2).getInstance(0))
        initFields_Points20kPickedUpLayerInterfaceFactory()
    }
    

    getTotal() {
        return 1
    }
    

    static getInstance() {
        return Points20kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface
    }
    

    process(sourceLayerInterface) {
        _pool.visit(sourceLayerInterface)
    }
}

import "../../../../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" for FeaturedAnimationInterfaceFactoryInterfaceFactory
import "../../../../../../../org/allbinary/game/configuration/GameConfigurationUtil" for GameConfigurationUtil
import "../../../../../../../org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory" for CountedPickedUpLayerInterfaceFactory
import "../../../../../../../org/allbinary/game/layer/pickup/IconLayerFactory" for IconLayerFactory
import "../../../../../../../org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface" for PickedUpLayerInterfaceFactoryInterface
import "../../../../../../../org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory" for PickedUpLayerTypeFactory
import "../../../../../../../org/allbinary/game/layer/pickup/PickupProcessorInterface" for PickupProcessorInterface
import "../../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "./PointsLayerCircularStaticPool" for PointsLayerCircularStaticPool
import "./PointsLayerFactory" for PointsLayerFactory
import "./PointsResources" for PointsResources

