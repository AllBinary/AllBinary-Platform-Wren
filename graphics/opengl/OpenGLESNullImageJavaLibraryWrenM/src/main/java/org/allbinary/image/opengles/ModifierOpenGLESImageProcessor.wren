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
// package org.allbinary.image.opengles

import "../../../../allbinary_java" for JObject, JException, JR
import "./OpenGLESImageProcessor" for OpenGLESImageProcessor

class ModifierOpenGLESImageProcessor is OpenGLESImageProcessor {
    static instanceC {
    if (__instanceC_set == null) {
      __instanceC_set = true
      __instanceC = ModifierOpenGLESImageProcessor.new()
    }
    return __instanceC
  }
  static instanceC=(value) {
    __instanceC_set = true
    __instanceC = value
  }

  initFields_ModifierOpenGLESImageProcessor() {
  }

  construct new() {
    super()
    initFields_ModifierOpenGLESImageProcessor()
  }
    

    static getInstance() {
        return ModifierOpenGLESImageProcessor.instanceC
    }
}


