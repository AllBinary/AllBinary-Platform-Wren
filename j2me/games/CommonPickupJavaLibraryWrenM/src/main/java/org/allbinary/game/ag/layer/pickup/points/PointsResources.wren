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

class PointsResources is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = PointsResources.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  RESOURCE { _RESOURCE }
  RESOURCE=(value) { _RESOURCE = value }
  RESOURCE_2 { _RESOURCE_2 }
  RESOURCE_2=(value) { _RESOURCE_2 = value }
  RESOURCE_3 { _RESOURCE_3 }
  RESOURCE_3=(value) { _RESOURCE_3 = value }
  RESOURCE_4 { _RESOURCE_4 }
  RESOURCE_4=(value) { _RESOURCE_4 = value }

  initFields_PointsResources() {
    _RESOURCE = null
    _RESOURCE_2 = null
    _RESOURCE_3 = null
    _RESOURCE_4 = null
        _RESOURCE = "points_drop_20_by_20.png"
        _RESOURCE_2 = "points_2_drop_20_by_20.png"
        _RESOURCE_3 = "points_3_drop_20_by_20.png"
        _RESOURCE_4 = "points_4_drop_20_by_20.png"
  }
    

    construct new() {
    super()
    initFields_PointsResources()
    }
    

    static getInstance() {
        return PointsResources.SINGLETON
    }
}


