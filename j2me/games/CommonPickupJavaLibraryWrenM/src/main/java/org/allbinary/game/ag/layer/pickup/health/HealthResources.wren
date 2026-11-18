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

class HealthResources is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = HealthResources.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  RESOURCE { _RESOURCE }
  RESOURCE=(value) { _RESOURCE = value }

  initFields_HealthResources() {
    _RESOURCE = null
        _RESOURCE = "health_drop_20_by_20.png"
  }
    

    construct new() {
    super()
    initFields_HealthResources()
    }
    

    static getInstance() {
        return HealthResources.SINGLETON
    }
}


