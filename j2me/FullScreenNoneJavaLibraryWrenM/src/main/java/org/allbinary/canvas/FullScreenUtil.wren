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
// package org.allbinary.canvas

import "../../../allbinary_java" for JObject, JException, JR

class FullScreenUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = FullScreenUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_FullScreenUtil() {
  }

  construct new() {
    super()
    initFields_FullScreenUtil()
  }
    

    static getInstance() {
        return FullScreenUtil.instance
    }
    

    initOnRun(fullScreenInterface, commandListener) {
        if ((commandListener != null)) {
            this.init(fullScreenInterface)
        }
    }
    

    init(fullScreenInterface) {
    }
    

    isScreenChange(isFullScreen) {
        var mainFeatureFactory = MainFeatureFactory.getInstance()
        var features = Features.getInstance()
        if ((features.isFeature(mainFeatureFactory.FULL_SCREEN) != isFullScreen)) {
            return true
        }
        return false
    }
    

    isScreenChangeCanvas(fullScreenInterface) {
        return this.isScreenChange(false)
    }
}

import "../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../org/allbinary/game/configuration/feature/MainFeatureFactory" for MainFeatureFactory

