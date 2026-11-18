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
// package org.allbinary.platform.graphics

import "../../../../allbinary_java" for JObject, JException, JR

class PlatformBitmapBaseFactory is JObject {
    static NULL_PLATFORM_BITMAP_BASE_FACTORY {
    if (__NULL_PLATFORM_BITMAP_BASE_FACTORY_set == null) {
      __NULL_PLATFORM_BITMAP_BASE_FACTORY_set = true
      __NULL_PLATFORM_BITMAP_BASE_FACTORY = PlatformBitmapBaseFactory.new()
    }
    return __NULL_PLATFORM_BITMAP_BASE_FACTORY
  }
  static NULL_PLATFORM_BITMAP_BASE_FACTORY=(value) {
    __NULL_PLATFORM_BITMAP_BASE_FACTORY_set = true
    __NULL_PLATFORM_BITMAP_BASE_FACTORY = value
  }

  initFields_PlatformBitmapBaseFactory() {
  }

  construct new() {
    super()
    initFields_PlatformBitmapBaseFactory()
  }
    

    createBitmap(image) {
        return PlatformBitmapBase.NULL_PLATFORM_BITMAP_BASE
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "./PlatformBitmapBase" for PlatformBitmapBase

