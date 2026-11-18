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
// package org.allbinary.animation.image

import "../../../../allbinary_java" for JObject, JException, JR
import "./BaseImageAnimationFactory" for BaseImageAnimationFactory

class ImageAnimationFactory is BaseImageAnimationFactory {

  initFields_ImageAnimationFactory() {
  }
    

    static createFactory(image) {
        return ImageAnimationFactory.new(image, image.getWidth(), image.getHeight(), 0, 0, AnimationBehaviorFactory.getInstance())
    }
    

    construct new(image, width, height, dx, dy, animationBehaviorFactory) {
        super(image, PrimitiveIntUtil.getArrayInstance(), width, height, dx, dy, animationBehaviorFactory)
    }
    

    getInstance(instanceId) {
        var scaledImage = this.animationFactoryImageScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        var openGLUtil = OpenGLUtil.getInstance()
        scaledImage = openGLUtil.addImage(scaledImage)
        if (((this.animationFactoryInitializationVisitor.dx != 0) || (this.animationFactoryInitializationVisitor.dy != 0))) {
            this.animationFactoryImageScaleUtil.processAdjust(this)
            return AdjustedImageAnimation.new(scaledImage, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance())
        } else {
            return ImageAnimation.new(scaledImage, this.animationBehaviorFactory.getOrCreateInstance())
        }
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/animation/Animation" for Animation
import "../../../../org/allbinary/animation/AnimationBehaviorFactory" for AnimationBehaviorFactory
import "../../../../org/allbinary/graphics/opengles/OpenGLUtil" for OpenGLUtil
import "../../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil
import "./ImageAnimation" for ImageAnimation
import "./AdjustedImageAnimation" for AdjustedImageAnimation

