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
// package org.allbinary.image

import "../../../allbinary_java" for JObject, JException, JR

class AnimationFactoryImageScaleUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = AnimationFactoryImageScaleUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  imageScaleUtil { _imageScaleUtil }
  imageScaleUtil=(value) { _imageScaleUtil = value }

  initFields_AnimationFactoryImageScaleUtil() {
    _imageScaleUtil = null
        _imageScaleUtil = ImageJ2MEScaleUtil.getInstance()
  }

  construct new() {
    super()
    initFields_AnimationFactoryImageScaleUtil()
  }
    

    static getInstance() {
        return AnimationFactoryImageScaleUtil.instance
    }
    

    createImage(image, width, height, scaleWidth, scaleHeight) {
        var scaledImage = null
        if (((scaleWidth != 0) && (scaleHeight != 0))) {
            var scaleX = ((scaleWidth) / (width))
            var scaleY = ((scaleHeight) / (height))
            if (((((scaleX == 1.0) && (scaleY == 1.0))) || (((scaleX == 0.0) || (scaleY == 0.0))))) {
                scaledImage = image
            } else {
                var scaledWidth = JR.i32(JR.d2i(((scaleX * width))))
                var scaledHeight = JR.i32(JR.d2i(((scaleY * height))))
                scaledImage = _imageScaleUtil.scale(image, scaledWidth, scaledHeight)
            }
        } else {
            scaledImage = image
        }
        return scaledImage
    }
    

    processAdjust(baseImageAnimationFactory) {
        var scaleProperties = baseImageAnimationFactory.getScalePropertiesP()
        if (((scaleProperties.scaleWidth != 0) && (scaleProperties.scaleHeight != 0))) {
            var animationFactoryInitializationVisitor = baseImageAnimationFactory.getAnimationFactoryInitializationVisitorP()
            var scaleX = ((scaleProperties.scaleWidth) / (animationFactoryInitializationVisitor.width))
            var scaleY = ((scaleProperties.scaleHeight) / (animationFactoryInitializationVisitor.height))
            if (((((scaleX == 1.0) && (scaleY == 1.0))) || (((scaleX == 0.0) || (scaleY == 0.0))))) {
            } else {
                animationFactoryInitializationVisitor.dx = JR.i32(((animationFactoryInitializationVisitor.originalDx * scaleX)))
                animationFactoryInitializationVisitor.dy = JR.i32(((animationFactoryInitializationVisitor.originalDy * scaleY)))
            }
        } else {
        }
    }
}

import "../../../javax/microedition/lcdui/Image" for Image
import "../../../org/allbinary/animation/image/AnimationFactoryInitializationVisitor" for AnimationFactoryInitializationVisitor
import "../../../org/allbinary/animation/image/BaseImageAnimationFactory" for BaseImageAnimationFactory
import "../../../org/allbinary/media/ScaleProperties" for ScaleProperties
import "../../../org/allbinary/media/image/ImageJ2MEScaleUtil" for ImageJ2MEScaleUtil

