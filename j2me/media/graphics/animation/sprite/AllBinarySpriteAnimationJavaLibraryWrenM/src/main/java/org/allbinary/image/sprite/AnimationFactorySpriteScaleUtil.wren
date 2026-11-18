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
// package org.allbinary.image.sprite

import "../../../../allbinary_java" for JObject, JException, JR

class AnimationFactorySpriteScaleUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = AnimationFactorySpriteScaleUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  imageCache { _imageCache }
  imageCache=(value) { _imageCache = value }
  imageScaleUtil { _imageScaleUtil }
  imageScaleUtil=(value) { _imageScaleUtil = value }
  openGLUtil { _openGLUtil }
  openGLUtil=(value) { _openGLUtil = value }
  j2seMath { _j2seMath }
  j2seMath=(value) { _j2seMath = value }
  openGLESImageExclusionUtil { _openGLESImageExclusionUtil }
  openGLESImageExclusionUtil=(value) { _openGLESImageExclusionUtil = value }

  initFields_AnimationFactorySpriteScaleUtil() {
    _imageCache = null
    _imageScaleUtil = null
    _openGLUtil = null
    _j2seMath = null
    _openGLESImageExclusionUtil = null
        _imageCache = ImageCacheFactory.getInstance()
        _imageScaleUtil = ImageScaleUtil.getInstance()
        _openGLUtil = OpenGLUtil.getInstance()
        _j2seMath = J2SEMath.getInstance()
        _openGLESImageExclusionUtil = OpenGLESImageExclusionUtil.getInstance()
  }

  construct new() {
    super()
    initFields_AnimationFactorySpriteScaleUtil()
  }
    

    static getInstance() {
        return AnimationFactorySpriteScaleUtil.instance
    }
    

    createImage(image, width, height, scaleWidth, scaleHeight) {
        var spriteFactory = SpriteFactory.getInstance()
        var sprite = null
        var scaledImage = null
        if (((scaleWidth != 0) && (scaleHeight != 0))) {
            var scaleX = ((scaleWidth) / (width))
            var scaleY = ((scaleHeight) / (height))
            if (((((scaleX == 1.0) && (scaleY == 1.0))) || (((scaleX == 0.0) || (scaleY == 0.0))))) {
                scaledImage = _openGLUtil.addImage(image)
                sprite = spriteFactory.createSprite(scaledImage, width, height)
            } else {
                if (_openGLESImageExclusionUtil.isCustomScaling(image)) {
                    var width2 = _j2seMath.round(((scaleWidth) - 0.5))
                    var height2 = _j2seMath.round(((scaleHeight) - 0.5))
                    var multiplesOf16Width = JR.idiv(width2, 16)
                    var by16Width = JR.i32(multiplesOf16Width * 16)
                    scaleX = ((by16Width) / width)
                    var multiplesOf16Height = JR.idiv(height2, 16)
                    var by16Height = JR.i32(multiplesOf16Height * 16)
                    scaleY = ((by16Height) / height)
                    if ((scaleWidth < width)) {
                        scaleX = (scaleX * 2.35)
                    }
                    if ((scaleHeight < height)) {
                        scaleY = (scaleY * 2.35)
                    }
                }
                scaledImage = _imageScaleUtil.createImage2(_imageCache, image, scaleX, 1.0, scaleY, 1.0, true)
                sprite = spriteFactory.createSprite(scaledImage, JR.i32(JR.d2i(((width * scaleX)))), JR.i32(JR.d2i(((height * scaleY)))))
            }
        } else {
            scaledImage = _openGLUtil.addImage(image)
            sprite = spriteFactory.createSprite(scaledImage, width, height)
        }
        return sprite
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../javax/microedition/lcdui/game/Sprite" for Sprite
import "../../../../org/allbinary/game/layer/SpriteFactory" for SpriteFactory
import "../../../../org/allbinary/graphics/opengles/OpenGLUtil" for OpenGLUtil
import "../../../../org/allbinary/image/ImageCache" for ImageCache
import "../../../../org/allbinary/image/ImageCacheFactory" for ImageCacheFactory
import "../../../../org/allbinary/image/opengles/OpenGLESImageExclusionUtil" for OpenGLESImageExclusionUtil
import "../../../../org/allbinary/logic/math/J2SEMath" for J2SEMath
import "../../../../org/allbinary/media/image/ImageScaleUtil" for ImageScaleUtil

