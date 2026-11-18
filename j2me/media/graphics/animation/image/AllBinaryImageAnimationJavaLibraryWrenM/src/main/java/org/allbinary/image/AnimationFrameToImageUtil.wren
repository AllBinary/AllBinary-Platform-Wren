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

class AnimationFrameToImageUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = AnimationFrameToImageUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_AnimationFrameToImageUtil() {
  }

  construct new() {
    super()
    initFields_AnimationFrameToImageUtil()
  }
    

    static getInstance() {
        return AnimationFrameToImageUtil.instance
    }
    

    getInstanceTranslate(width, height, animationInterface) {
        var image = GameFeatureImageCacheFactory.getInstance().get(JR.className(AnimationFrameToImageUtil.instance), (JR.shr((JR.i32(width * 3)), 1)), (JR.shr((JR.i32(height * 3)), 1)))
        var graphics = image.getGraphics()
        var tranlateX = (JR.shr(width, 2))
        var tranlateY = (JR.shr(height, 2))
        graphics.translate(tranlateX, tranlateY)
        animationInterface.paintXY(graphics, 0, 0)
        graphics.translate(-tranlateX, -tranlateY)
        return image
    }
    

    getInstanceWH(width, height, animationInterface) {
        var image = GameFeatureImageCacheFactory.getInstance().get(JR.className(AnimationFrameToImageUtil.instance), width, height)
        var graphics = image.getGraphics()
        animationInterface.paintXY(graphics, 0, 0)
        return image
    }
}

import "../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../javax/microedition/lcdui/Image" for Image
import "../../../org/allbinary/animation/Animation" for Animation
import "./GameFeatureImageCacheFactory" for GameFeatureImageCacheFactory

