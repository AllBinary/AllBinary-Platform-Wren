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

class ImageScaleUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ImageScaleUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_ImageScaleUtil() {
  }
    

    static getInstance() {
        return ImageScaleUtil.instance
    }
    

    construct new() {
    super()
    initFields_ImageScaleUtil()
    }
    

    createImage2(imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached) {
        return this.createImage3(imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, true)
    }
    

    createImage3(imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, mutable) {
        return originalImage
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/image/ImageCache" for ImageCache

