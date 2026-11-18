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

class OpenGLESImageExclusionUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = OpenGLESImageExclusionUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  list { _list }
  list=(value) { _list = value }

  initFields_OpenGLESImageExclusionUtil() {
    _list = null
        _list = BasicArrayListD.new()
  }

  construct new() {
    super()
    initFields_OpenGLESImageExclusionUtil()
  }
    

    static getInstance() {
        return OpenGLESImageExclusionUtil.instance
    }
    

    isCustomScaling(image) {
        return false
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD

