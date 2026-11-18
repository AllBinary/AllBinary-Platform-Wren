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

class ShaderInitializer is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ShaderInitializer.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }

  initFields_ShaderInitializer() {
    _commonStrings = null
        _commonStrings = CommonStrings.getInstance()
  }

  construct new() {
    super()
    initFields_ShaderInitializer()
  }
    

    static getInstance() {
        return ShaderInitializer.instance
    }
    

    init(gl, shader, attributeArray) {
        return -1
    }
}

import "../../../../../javax/microedition/khronos/opengles/GL10" for GL10
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./Shader" for Shader

