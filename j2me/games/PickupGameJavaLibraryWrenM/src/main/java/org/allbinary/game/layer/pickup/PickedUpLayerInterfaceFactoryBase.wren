/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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

class PickedUpLayerInterfaceFactoryBase is JObject {
    static NULL_PICKED_UP_LAYER_FACTORY_BASE {
    if (__NULL_PICKED_UP_LAYER_FACTORY_BASE_set == null) {
      __NULL_PICKED_UP_LAYER_FACTORY_BASE_set = true
      __NULL_PICKED_UP_LAYER_FACTORY_BASE = PickedUpLayerInterfaceFactoryBase.new()
    }
    return __NULL_PICKED_UP_LAYER_FACTORY_BASE
  }
  static NULL_PICKED_UP_LAYER_FACTORY_BASE=(value) {
    __NULL_PICKED_UP_LAYER_FACTORY_BASE_set = true
    __NULL_PICKED_UP_LAYER_FACTORY_BASE = value
  }

  initFields_PickedUpLayerInterfaceFactoryBase() {
  }

  construct new() {
    super()
    initFields_PickedUpLayerInterfaceFactoryBase()
  }
    

    getIconLayer() {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    getAnimationInterface() {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    getPickedUpLayerType() {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
}

import "../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "./PickedUpLayerInterfaceFactoryInterface" for PickedUpLayerInterfaceFactoryInterface
import "./PickedUpLayerType" for PickedUpLayerType

