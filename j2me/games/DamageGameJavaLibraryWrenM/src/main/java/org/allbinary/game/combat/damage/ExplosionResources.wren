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
// package org.allbinary.game.combat.damage

import "../../../../../allbinary_java" for JObject, JException, JR

class ExplosionResources is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ExplosionResources.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  EXPLOSION_90_RESOURCE { _EXPLOSION_90_RESOURCE }
  EXPLOSION_90_RESOURCE=(value) { _EXPLOSION_90_RESOURCE = value }
  EXPLOSION_60_RESOURCE { _EXPLOSION_60_RESOURCE }
  EXPLOSION_60_RESOURCE=(value) { _EXPLOSION_60_RESOURCE = value }
  HALF_EXPLOSION_RESOURCE { _HALF_EXPLOSION_RESOURCE }
  HALF_EXPLOSION_RESOURCE=(value) { _HALF_EXPLOSION_RESOURCE = value }
  THIRD_EXPLOSION_RESOURCE { _THIRD_EXPLOSION_RESOURCE }
  THIRD_EXPLOSION_RESOURCE=(value) { _THIRD_EXPLOSION_RESOURCE = value }

  initFields_ExplosionResources() {
    _EXPLOSION_90_RESOURCE = null
    _EXPLOSION_60_RESOURCE = null
    _HALF_EXPLOSION_RESOURCE = null
    _THIRD_EXPLOSION_RESOURCE = null
        _EXPLOSION_90_RESOURCE = "/explosion_sprite_90_by_90.png"
        _EXPLOSION_60_RESOURCE = "/explosion_sprite_60_by_60.png"
        _HALF_EXPLOSION_RESOURCE = "/explosion_sprite_30_by_30.png"
        _THIRD_EXPLOSION_RESOURCE = "/explosion_sprite_15_by_15.png"
  }
    

    static getInstance() {
        return ExplosionResources.instance
    }
    

    construct new() {
    super()
    initFields_ExplosionResources()
    }
}


