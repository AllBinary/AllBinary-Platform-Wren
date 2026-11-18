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

class PickedUpLayerTypeFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = PickedUpLayerTypeFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  NONE { _NONE }
  NONE=(value) { _NONE = value }
  BEAM { _BEAM }
  BEAM=(value) { _BEAM = value }
  MINE { _MINE }
  MINE=(value) { _MINE = value }
  PROJECTILE { _PROJECTILE }
  PROJECTILE=(value) { _PROJECTILE = value }
  ENHANCEMENT { _ENHANCEMENT }
  ENHANCEMENT=(value) { _ENHANCEMENT = value }
  MORPH { _MORPH }
  MORPH=(value) { _MORPH = value }
  PART { _PART }
  PART=(value) { _PART = value }
  HEAL { _HEAL }
  HEAL=(value) { _HEAL = value }
  LIFE { _LIFE }
  LIFE=(value) { _LIFE = value }
  POINTS { _POINTS }
  POINTS=(value) { _POINTS = value }

  initFields_PickedUpLayerTypeFactory() {
    _NONE = null
    _BEAM = null
    _MINE = null
    _PROJECTILE = null
    _ENHANCEMENT = null
    _MORPH = null
    _PART = null
    _HEAL = null
    _LIFE = null
    _POINTS = null
        _NONE = PickedUpLayerType.new(StringUtil.getInstance().NULL_STRING)
        _BEAM = PickedUpLayerType.new("BEAM")
        _MINE = PickedUpLayerType.new("MINE")
        _PROJECTILE = PickedUpLayerType.new("PROJECTILE")
        _ENHANCEMENT = PickedUpLayerType.new("Enhancement")
        _MORPH = PickedUpLayerType.new("Morph")
        _PART = PickedUpLayerType.new("Part")
        _HEAL = PickedUpLayerType.new("Heal")
        _LIFE = PickedUpLayerType.new("Life")
        _POINTS = PickedUpLayerType.new("Points")
  }

  construct new() {
    super()
    initFields_PickedUpLayerTypeFactory()
  }
    

    static getInstance() {
        return PickedUpLayerTypeFactory.instance
    }
}

import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./PickedUpLayerType" for PickedUpLayerType

