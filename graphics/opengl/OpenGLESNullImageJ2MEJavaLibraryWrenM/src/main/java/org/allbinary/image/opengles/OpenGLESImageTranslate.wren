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
// package org.allbinary.image.opengles

import "../../../../allbinary_java" for JObject, JException, JR

class OpenGLESImageTranslate is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = OpenGLESImageTranslate.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_OpenGLESImageTranslate() {
  }

  construct new() {
    super()
    initFields_OpenGLESImageTranslate()
  }
    

    static getInstance() {
        return OpenGLESImageTranslate.instance
    }
    

    translate(gl, openGLESImage, x, y) {
    }
    

    translate2(gl, openGLESImage) {
    }
}

import "../../../../javax/microedition/khronos/opengles/GL10" for GL10
import "./OpenGLESImage" for OpenGLESImage

