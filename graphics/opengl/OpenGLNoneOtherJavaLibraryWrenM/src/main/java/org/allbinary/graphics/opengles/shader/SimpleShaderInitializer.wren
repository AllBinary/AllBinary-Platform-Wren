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
import "./ShaderInitializer" for ShaderInitializer

class SimpleShaderInitializer is ShaderInitializer {
    static instanceC {
    if (__instanceC_set == null) {
      __instanceC_set = true
      __instanceC = SimpleShaderInitializer.new()
    }
    return __instanceC
  }
  static instanceC=(value) {
    __instanceC_set = true
    __instanceC = value
  }

  initFields_SimpleShaderInitializer() {
  }

  construct new() {
    super()
    initFields_SimpleShaderInitializer()
  }
    

    static getInstance() {
        return SimpleShaderInitializer.instanceC
    }
}


