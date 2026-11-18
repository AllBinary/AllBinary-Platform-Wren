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
// package org.allbinary.platform.opengles

import "../../../../allbinary_java" for JObject, JException, JR

class PlatformTextureBaseFactory is JObject {
    static NULL_PLATFORM_TEXTURE_BASE_FACTORY {
    if (__NULL_PLATFORM_TEXTURE_BASE_FACTORY_set == null) {
      __NULL_PLATFORM_TEXTURE_BASE_FACTORY_set = true
      __NULL_PLATFORM_TEXTURE_BASE_FACTORY = PlatformTextureBaseFactory.new()
    }
    return __NULL_PLATFORM_TEXTURE_BASE_FACTORY
  }
  static NULL_PLATFORM_TEXTURE_BASE_FACTORY=(value) {
    __NULL_PLATFORM_TEXTURE_BASE_FACTORY_set = true
    __NULL_PLATFORM_TEXTURE_BASE_FACTORY = value
  }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }

  initFields_PlatformTextureBaseFactory() {
    _commonStrings = null
        _commonStrings = CommonStrings.getInstance()
  }

  construct new() {
    super()
    initFields_PlatformTextureBaseFactory()
  }
    

    load(gl, target, level, image, border, flip) {
    }
}

import "../../../../javax/microedition/khronos/opengles/GL10" for GL10
import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings

