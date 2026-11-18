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

class ImageCreationUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ImageCreationUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_ImageCreationUtil() {
  }
    

    static getInstance() {
        return ImageCreationUtil.instance
    }
    

    construct new() {
    super()
    initFields_ImageCreationUtil()
    }
    

    createImageWH(width, height) {
        var image = GameFeatureImageCacheFactory.getInstance().get(JR.className(this), width, height)
        return image
    }
    

    createImage(width, height, maxScaleX, maxScaleY) {
        var image = GameFeatureImageCacheFactory.getInstance().get(JR.className(this), JR.i32(JR.i32(JR.d2i(((width * maxScaleX)))) + 1), JR.i32(JR.i32(JR.d2i(((height * maxScaleY)))) + 1))
        return image
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/image/GameFeatureImageCacheFactory" for GameFeatureImageCacheFactory

