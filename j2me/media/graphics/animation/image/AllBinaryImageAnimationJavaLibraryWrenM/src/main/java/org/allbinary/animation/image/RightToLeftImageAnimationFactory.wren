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
// package org.allbinary.animation.image

import "../../../../allbinary_java" for JObject, JException, JR
import "./BaseImageAnimationFactory" for BaseImageAnimationFactory

class RightToLeftImageAnimationFactory is BaseImageAnimationFactory {

  initFields_RightToLeftImageAnimationFactory() {
  }
    

    construct new(image, dx, dy, animationBehaviorFactory) {
        super(image, PrimitiveIntUtil.getArrayInstance(), image.getWidth(), image.getHeight(), dx, dy, animationBehaviorFactory)
    }
    

    getInstance(instanceId) {
        var scaledImage = this.animationFactoryImageScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        if (((this.animationFactoryInitializationVisitor.dx != 0) || (this.animationFactoryInitializationVisitor.dy != 0))) {
            this.animationFactoryImageScaleUtil.processAdjust(this)
            return AdjustedRightToLeftImageAnimation.new(scaledImage, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance())
        } else {
            return RightToLeftImageAnimation.new(scaledImage, this.animationBehaviorFactory.getOrCreateInstance())
        }
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/animation/Animation" for Animation
import "../../../../org/allbinary/animation/AnimationBehaviorFactory" for AnimationBehaviorFactory
import "../../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil
import "./RightToLeftImageAnimation" for RightToLeftImageAnimation
import "./AdjustedRightToLeftImageAnimation" for AdjustedRightToLeftImageAnimation

