/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.graphics.opengles.shader

import "../../../../../allbinary_java" for JObject, JException, JR

class ShaderUpdater is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ShaderUpdater.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  rendererStrings { _rendererStrings }
  rendererStrings=(value) { _rendererStrings = value }

  initFields_ShaderUpdater() {
    _commonStrings = null
    _rendererStrings = null
        _commonStrings = CommonStrings.getInstance()
        _rendererStrings = RendererStrings.getInstance()
  }

  construct new() {
    super()
    initFields_ShaderUpdater()
  }
    

    static getInstance() {
        return ShaderUpdater.instance
    }
    

    onSurfaceCreated(gl, eglConfig) {
    }
}

import "../../../../../javax/microedition/khronos/egl/EGLConfig" for EGLConfig
import "../../../../../javax/microedition/khronos/opengles/GL10" for GL10
import "../../../../../org/allbinary/graphics/opengles/renderer/RendererStrings" for RendererStrings
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings

