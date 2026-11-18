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
// package org.allbinary.game.resource

import "../../../../allbinary_java" for JObject, JException, JR

class FeatureResourceInitializationUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = FeatureResourceInitializationUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }

  initFields_FeatureResourceInitializationUtil() {
    _logUtil = null
        _logUtil = LogUtil.getInstance()
  }

  construct new() {
    super()
    initFields_FeatureResourceInitializationUtil()
  }
    

    static getInstance() {
        return FeatureResourceInitializationUtil.instance
    }
    

    init(level) {
        var commonStrings = CommonStrings.getInstance()
        _logUtil.putF(commonStrings.START, this, commonStrings.INIT)
        var featuredResourceFactory = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance()
        featuredResourceFactory.init(level)
        FeaturedResourceRelativeRelationshipFactory.getInstance().init(level)
    }
}

import "../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" for FeaturedAnimationInterfaceFactoryInterfaceFactory
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./FeaturedResourceFactory" for FeaturedResourceFactory
import "./FeaturedResourceRelativeRelationshipFactory" for FeaturedResourceRelativeRelationshipFactory

