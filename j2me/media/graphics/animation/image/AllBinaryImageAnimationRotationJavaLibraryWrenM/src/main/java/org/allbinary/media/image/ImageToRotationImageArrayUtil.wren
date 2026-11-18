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

class ImageToRotationImageArrayUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ImageToRotationImageArrayUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_ImageToRotationImageArrayUtil() {
  }
    

    static getInstance() {
        return ImageToRotationImageArrayUtil.instance
    }
    

    construct new() {
    super()
    initFields_ImageToRotationImageArrayUtil()
    }
    

    generate(image, angleIncrement, totalAngle) {
        var imageRotationUtil = ImageRotationUtil.getInstance()
        var totalFrames = JR.idiv(totalAngle, angleIncrement)
        var imageArray = List.filled(totalFrames, null)
        imageArray[0] = image
        if (true) {
            var index = 1
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < totalFrames))) break
            imageArray[index] = imageRotationUtil.createRotatedImage(image, JR.i32(index * angleIncrement))
            }
        }
        return imageArray
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "./ImageRotationUtil" for ImageRotationUtil

