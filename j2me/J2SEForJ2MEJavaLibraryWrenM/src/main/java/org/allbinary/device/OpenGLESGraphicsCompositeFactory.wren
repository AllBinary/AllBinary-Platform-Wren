/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.device

import "../../../allbinary_java" for JObject, JException, JR

class OpenGLESGraphicsCompositeFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = OpenGLESGraphicsCompositeFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  openGLESGraphicsFactory { _openGLESGraphicsFactory }
  openGLESGraphicsFactory=(value) { _openGLESGraphicsFactory = value }

  initFields_OpenGLESGraphicsCompositeFactory() {
    _openGLESGraphicsFactory = null
        _openGLESGraphicsFactory = OpenGLESGraphicsFactory.new()
  }

  construct new() {
    super()
    initFields_OpenGLESGraphicsCompositeFactory()
  }
    

    static getInstance() {
        return OpenGLESGraphicsCompositeFactory.instance
    }
    

    set(openGLESGraphicsFactory) {
        _openGLESGraphicsFactory = openGLESGraphicsFactory
    }
    

    get() {
        return _openGLESGraphicsFactory
    }
}

import "./OpenGLESGraphicsFactory" for OpenGLESGraphicsFactory

