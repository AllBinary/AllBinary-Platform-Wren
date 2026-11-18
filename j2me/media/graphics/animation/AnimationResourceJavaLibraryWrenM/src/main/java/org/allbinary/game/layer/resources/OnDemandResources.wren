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
// package org.allbinary.game.layer.resources

import "../../../../../allbinary_java" for JObject, JException, JR

class OnDemandResources is JObject {
    static NULL_ON_DEMAND_RESOURCES {
    if (__NULL_ON_DEMAND_RESOURCES_set == null) {
      __NULL_ON_DEMAND_RESOURCES_set = true
      __NULL_ON_DEMAND_RESOURCES = OnDemandResources.new()
    }
    return __NULL_ON_DEMAND_RESOURCES
  }
  static NULL_ON_DEMAND_RESOURCES=(value) {
    __NULL_ON_DEMAND_RESOURCES_set = true
    __NULL_ON_DEMAND_RESOURCES = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }

  initFields_OnDemandResources() {
    _logUtil = null
        _logUtil = LogUtil.getInstance()
  }
    

    construct new() {
    super()
    initFields_OnDemandResources()
    }
    

    waitFor() {
    }
    

    init() {
    }
    

    initAt(imageCache, resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index) {
        return 0
    }
}

import "../../../../../org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory" for BaseResourceAnimationInterfaceFactoryInterfaceFactory
import "../../../../../org/allbinary/image/ImageCache" for ImageCache
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil

