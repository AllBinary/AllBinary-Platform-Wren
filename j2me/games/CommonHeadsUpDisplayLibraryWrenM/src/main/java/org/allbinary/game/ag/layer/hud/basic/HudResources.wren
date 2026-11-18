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
// package org.allbinary.game.ag.layer.hud.basic

import "../../../../../../../allbinary_java" for JObject, JException, JR

class HudResources is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = HudResources.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  RESOURCE_LIFE { _RESOURCE_LIFE }
  RESOURCE_LIFE=(value) { _RESOURCE_LIFE = value }
  RESOURCE_HEALTH { _RESOURCE_HEALTH }
  RESOURCE_HEALTH=(value) { _RESOURCE_HEALTH = value }

  initFields_HudResources() {
    _RESOURCE_LIFE = null
    _RESOURCE_HEALTH = null
        _RESOURCE_LIFE = "/hud_life_10_by_10.png"
        _RESOURCE_HEALTH = "/hud_health_10_by_10.png"
  }
    

    static getInstance() {
        return HudResources.instance
    }
    

    construct new() {
    super()
    initFields_HudResources()
    }
}


