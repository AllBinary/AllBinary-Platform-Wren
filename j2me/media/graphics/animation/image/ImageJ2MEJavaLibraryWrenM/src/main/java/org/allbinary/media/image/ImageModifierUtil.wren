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
// package org.allbinary.media.image

import "../../../../allbinary_java" for JObject, JException, JR

class ImageModifierUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ImageModifierUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_ImageModifierUtil() {
  }

  construct new() {
    super()
    initFields_ImageModifierUtil()
  }
    

    static getInstanceOrCreate() {
        return ImageModifierUtil.instance
    }
    

    setColor(unusedOriginalImage, image, imageIndex, basicColor) {
    }
    

    changeColor(unusedOriginalImage, image, imageIndex, basicColor) {
    }
    

    setAlpha(originalImage, image, imageIndex, alphaInt) {
    }
    

    getImageArray(originalImageArray) {
        return originalImageArray
    }
    

    handleImage(imageArray, index, image) {
    }
    

    reset() {
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor

