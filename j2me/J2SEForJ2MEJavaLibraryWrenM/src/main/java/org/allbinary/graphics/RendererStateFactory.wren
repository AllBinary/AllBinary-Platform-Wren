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
// package org.allbinary.graphics

import "../../../allbinary_java" for JObject, JException, JR

class RendererStateFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = RendererStateFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  loaded { _loaded }
  loaded=(value) { _loaded = value }
  surfaceChanged { _surfaceChanged }
  surfaceChanged=(value) { _surfaceChanged = value }

  initFields_RendererStateFactory() {
    _loaded = false
    _surfaceChanged = false
        _loaded = false
        _surfaceChanged = false
  }

  construct new() {
    super()
    initFields_RendererStateFactory()
  }
    

    static getInstance() {
        return RendererStateFactory.instance
    }
    

    setLoaded(loaded) {
        _loaded = loaded
    }
    

    isLoaded() {
        return _loaded
    }
    

    setSurfaceChanged(initialized) {
        _surfaceChanged = initialized
    }
    

    isSurfaceChanged() {
        return _surfaceChanged
    }
}


