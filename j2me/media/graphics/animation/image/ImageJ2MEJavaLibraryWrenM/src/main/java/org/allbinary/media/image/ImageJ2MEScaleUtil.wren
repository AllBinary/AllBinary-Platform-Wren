/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2023 AllBinary
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

class ImageJ2MEScaleUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ImageJ2MEScaleUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_ImageJ2MEScaleUtil() {
  }
    

    static getInstance() {
        return ImageJ2MEScaleUtil.instance
    }
    

    construct new() {
    super()
    initFields_ImageJ2MEScaleUtil()
    }
    

    scaleArray(images, width, height) {
        var scaledImages = List.filled(images.count, null)
        if (true) {
            var index = images.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            scaledImages[index] = this.scale(images[index], width, height)
            }
        }
        return scaledImages
    }
    

    scale(image, width, height) {
        var sourceWidth = image.getWidth()
        var sourceHeight = image.getHeight()
        var originalData = List.filled((image.getWidth() * image.getHeight()), 0)
        image.getRGB(originalData, 0, image.getWidth(), 0, 0, image.getWidth(), image.getHeight())
        var scaledData = List.filled(JR.i32(width * height), 0)
        var heightRatioFactor = JR.idiv((JR.i32(8 * sourceHeight)), height)
        var widthRatioFactor = JR.idiv((JR.i32(8 * sourceWidth)), width)
        var scaledIndex = JR.i32(scaledData.count - 1)
        var dx = 0
        var dy = 0
        if (true) {
            var index = height
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            dy = JR.shr((JR.i32(index * heightRatioFactor)), 3)
            if (true) {
                var index2 = width
                var jfirst = true
                while (true) {
                    jfirst = false
                    if (!((Fn.new {
index2 = JR.i32(index2 - 1)
return index2
}.call() >= 0))) break
                dx = JR.shr((JR.i32(index2 * widthRatioFactor)), 3)
                scaledData[Fn.new {
var jold = scaledIndex
scaledIndex = JR.i32(jold - 1)
return jold
}.call()] = originalData[JR.i32((JR.i32(sourceWidth * dy)) + dx)]
                }
            }
            }
        }
        var scaledImage = Image.createRGBImage(scaledData, width, height, true)
        return scaledImage
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image

