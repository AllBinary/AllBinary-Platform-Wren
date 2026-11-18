/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
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
// package org.allbinary.media.image

import "../../../../allbinary_java" for JObject, JException, JR

class ImageRotationUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ImageRotationUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  anchor { _anchor }
  anchor=(value) { _anchor = value }

  initFields_ImageRotationUtil() {
    _anchor = 0
        _anchor = Anchor.TOP_LEFT
  }
    

    static getInstance() {
        return ImageRotationUtil.instance
    }
    

    construct new() {
    super()
    initFields_ImageRotationUtil()
    }
    

    createRotatedImage(originalImage, rotationInDegrees) {
        return originalImage
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/graphics/Anchor" for Anchor

