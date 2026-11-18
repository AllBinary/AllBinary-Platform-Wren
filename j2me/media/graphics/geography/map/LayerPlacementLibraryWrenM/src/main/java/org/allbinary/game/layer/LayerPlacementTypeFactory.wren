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
// package org.allbinary.game.layer

import "../../../../allbinary_java" for JObject, JException, JR

class LayerPlacementTypeFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = LayerPlacementTypeFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  MAP { _MAP }
  MAP=(value) { _MAP = value }
  LEFT { _LEFT }
  LEFT=(value) { _LEFT = value }
  DOWN { _DOWN }
  DOWN=(value) { _DOWN = value }
  UP { _UP }
  UP=(value) { _UP = value }
  RIGHT { _RIGHT }
  RIGHT=(value) { _RIGHT = value }

  initFields_LayerPlacementTypeFactory() {
    _MAP = null
    _LEFT = null
    _DOWN = null
    _UP = null
    _RIGHT = null
        _MAP = LayerPlacementType.new(Integer.MAX_VALUE)
        _LEFT = LayerPlacementType.new(DirectionFactory.getInstance().LEFT.getValue())
        _DOWN = LayerPlacementType.new(DirectionFactory.getInstance().DOWN.getValue())
        _UP = LayerPlacementType.new(DirectionFactory.getInstance().UP.getValue())
        _RIGHT = LayerPlacementType.new(DirectionFactory.getInstance().RIGHT.getValue())
  }

  construct new() {
    super()
    initFields_LayerPlacementTypeFactory()
  }
    

    static getInstance() {
        return LayerPlacementTypeFactory.instance
    }
}

import "../../../../org/allbinary/direction/DirectionFactory" for DirectionFactory
import "../../../../java/lang/Integer" for Integer
import "./LayerPlacementType" for LayerPlacementType

