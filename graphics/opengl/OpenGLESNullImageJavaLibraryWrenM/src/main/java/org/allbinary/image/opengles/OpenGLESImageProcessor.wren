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

class OpenGLESImageProcessor is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = OpenGLESImageProcessor.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_OpenGLESImageProcessor() {
  }

  construct new() {
    super()
    initFields_OpenGLESImageProcessor()
  }
    

    static getInstance() {
        return OpenGLESImageProcessor.instance
    }
    

    translate(gl, translateX, translateY) {
    }
    

    rotate(gl, angle) {
    }
    

    scale(gl, scaleX, scaleY) {
    }
    

    colorMask(gl, red, green, blue, alpha) {
    }
}

import "../../../../javax/microedition/khronos/opengles/GL10" for GL10

