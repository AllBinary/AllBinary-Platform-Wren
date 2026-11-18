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

class PlatformBitmapBase is JObject {
    static NULL_PLATFORM_BITMAP_BASE {
    if (__NULL_PLATFORM_BITMAP_BASE_set == null) {
      __NULL_PLATFORM_BITMAP_BASE_set = true
      __NULL_PLATFORM_BITMAP_BASE = PlatformBitmapBase.new()
    }
    return __NULL_PLATFORM_BITMAP_BASE
  }
  static NULL_PLATFORM_BITMAP_BASE=(value) {
    __NULL_PLATFORM_BITMAP_BASE_set = true
    __NULL_PLATFORM_BITMAP_BASE = value
  }
  alpha { _alpha }
  alpha=(value) { _alpha = value }
  basicColor { _basicColor }
  basicColor=(value) { _basicColor = value }

  initFields_PlatformBitmapBase() {
    _alpha = 0
    _basicColor = null
        _alpha = 255
        _basicColor = BasicColorFactory.getInstance().NULL_COLOR
  }

  construct new() {
    super()
    initFields_PlatformBitmapBase()
  }
    

    getWidth() {
        return 0
    }
    

    getHeight() {
        return 0
    }
    

    getImage() {
        return NullImage.NULL_IMAGE
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../javax/microedition/lcdui/NullImage" for NullImage
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory

