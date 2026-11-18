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
// package org.allbinary.game.layer.pickup

import "../../../../../allbinary_java" for JObject, JException, JR
import "./PickedUpLayerInterfaceFactory" for PickedUpLayerInterfaceFactory

class CountedPickedUpLayerInterfaceFactory is PickedUpLayerInterfaceFactory {
    static NULL_COUNTED_PICKUP_LAYER_FACTORY {
    if (__NULL_COUNTED_PICKUP_LAYER_FACTORY_set == null) {
      __NULL_COUNTED_PICKUP_LAYER_FACTORY_set = true
      __NULL_COUNTED_PICKUP_LAYER_FACTORY = CountedPickedUpLayerInterfaceFactory.new(PickedUpLayerTypeFactory.getInstance().NONE, IconLayer.NULL_ICON_LAYER, NullAnimationFactory.getFactoryInstance().getInstance(0))
    }
    return __NULL_COUNTED_PICKUP_LAYER_FACTORY
  }
  static NULL_COUNTED_PICKUP_LAYER_FACTORY=(value) {
    __NULL_COUNTED_PICKUP_LAYER_FACTORY_set = true
    __NULL_COUNTED_PICKUP_LAYER_FACTORY = value
  }
  id { _id }
  id=(value) { _id = value }

  initFields_CountedPickedUpLayerInterfaceFactory() {
    _id = 0
        
  }
    

    construct new(pickeUpLayerType, iconLayer, animationInterface) {
        super(pickeUpLayerType, iconLayer, animationInterface)
        initFields_CountedPickedUpLayerInterfaceFactory()
        var list = CountedPickedUpLayerInterfaceFactoryPool.getInstance().getList()
        _id = list.size()
        list.add(this)
    }
    

    getNextInstance(hashtable, x, y, z) {
        Fiber.abort(JR.exception("Exception", CommonStrings.getInstance().NOT_IMPLEMENTED))
    }
    

    getTotal() {
        return -1
    }
    

    getId() {
        return _id
    }
}

import "../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../org/allbinary/animation/NullAnimationFactory" for NullAnimationFactory
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "./CountedPickedUpLayerInterfaceFactoryInterface" for CountedPickedUpLayerInterfaceFactoryInterface
import "./PickedUpLayerTypeFactory" for PickedUpLayerTypeFactory
import "./IconLayer" for IconLayer
import "./CountedPickedUpLayerInterfaceFactoryPool" for CountedPickedUpLayerInterfaceFactoryPool
import "./PickedUpLayerType" for PickedUpLayerType

