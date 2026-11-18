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
// package org.allbinary.graphics

import "../../../allbinary_java" for JObject, JException, JR

class ScreenCaptureFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ScreenCaptureNoneFactory.getInstance()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_ScreenCaptureFactory() {
  }

  construct new() {
    super()
    initFields_ScreenCaptureFactory()
  }
    

    static getInstance() {
        return ScreenCaptureFactory.instance
    }
}

import "./ScreenCaptureNoneFactory" for ScreenCaptureNoneFactory
import "./ScreenCapture" for ScreenCapture

