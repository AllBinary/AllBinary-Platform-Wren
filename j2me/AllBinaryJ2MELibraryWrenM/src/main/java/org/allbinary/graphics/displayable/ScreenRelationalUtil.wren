// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable

import "../../../../allbinary_java" for JObject, JException, JR

class ScreenRelationalUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ScreenRelationalUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_ScreenRelationalUtil() {
  }

  construct new() {
    super()
    initFields_ScreenRelationalUtil()
  }
    

    static getInstance() {
        return ScreenRelationalUtil.instance
    }
    

    getScaleImage(image) {
        return this.getScaleWH(image.getWidth(), image.getHeight())
    }
    

    getScaleWH(aWidth, aHeight) {
        return this.getScaleWHA(aWidth, aHeight, 20)
    }
    

    getScaleWHA(aWidth, aHeight, add) {
        var displayInfoSingleton = DisplayInfoSingleton.getInstance()
        var last = displayInfoSingleton.getLast()
        var width = last[displayInfoSingleton.WIDTH]
        var height = last[displayInfoSingleton.HEIGHT]
        var largestSize = width
        if ((largestSize < height)) {
            largestSize = height
        }
        var scale = ((largestSize) / aWidth)
        return scale
    }
    

    getScaledHeight(aWidth, aHeight) {
        return JR.i32(JR.d2i(((this.getScaleWH(aWidth, aHeight) * aHeight))))
    }
    

    getScaledHeightAdd(aWidth, aHeight, add) {
        return JR.i32(JR.d2i(((this.getScaleWHA(aWidth, aHeight, add) * aHeight))))
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "./DisplayInfoSingleton" for DisplayInfoSingleton

