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
// package org.allbinary.image

import "../../../allbinary_java" for JObject, JException, JR

class PaintableToImageUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = PaintableToImageUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_PaintableToImageUtil() {
  }

  construct new() {
    super()
    initFields_PaintableToImageUtil()
  }
    

    static getImage(paintableInterface, width, height) {
        var image = GameFeatureImageCacheFactory.getInstance().get(JR.className(PaintableToImageUtil.instance), width, height)
        var graphics = image.getGraphics()
        paintableInterface.paint(graphics)
        return image
    }
}

import "../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../javax/microedition/lcdui/Image" for Image
import "../../../org/allbinary/graphics/paint/PaintableInterface" for PaintableInterface
import "./GameFeatureImageCacheFactory" for GameFeatureImageCacheFactory

