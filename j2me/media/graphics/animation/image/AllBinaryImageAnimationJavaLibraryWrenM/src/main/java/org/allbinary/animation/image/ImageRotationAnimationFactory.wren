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

class ImageRotationAnimationFactory is BaseImageAnimationFactory {
  angleIncrement { _angleIncrement }
  angleIncrement=(value) { _angleIncrement = value }

  initFields_ImageRotationAnimationFactory() {
    _angleIncrement = 0
        
  }
    

    construct new(image, width, height, dx, dy, angleIncrement, animationBehaviorFactory) {
        super(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        initFields_ImageRotationAnimationFactory()
        _angleIncrement = angleIncrement
        this.animationFactoryInitializationVisitor.dx = dx
        this.animationFactoryInitializationVisitor.dy = dy
    }
    

    getInstance(instanceId) {
        if (((this.animationFactoryInitializationVisitor.dx != 0) || (this.animationFactoryInitializationVisitor.dy != 0))) {
            this.animationFactoryImageScaleUtil.processAdjust(this)
            return AdjustedImageBaseRotationAnimation.new(this.getImage(), AngleInfo.getInstance(_angleIncrement), AngleFactory.getInstance().TOTAL_ANGLE, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance())
        } else {
            return ImageBaseRotationAnimation.new(this.getImage(), AngleInfo.getInstance(_angleIncrement), AngleFactory.getInstance().TOTAL_ANGLE, this.animationBehaviorFactory.getOrCreateInstance())
        }
    }
    

    getAngleIncrementP() {
        return _angleIncrement
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/animation/Animation" for Animation
import "../../../../org/allbinary/animation/AnimationBehaviorFactory" for AnimationBehaviorFactory
import "../../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil
import "../../../../org/allbinary/math/AngleFactory" for AngleFactory
import "../../../../org/allbinary/math/AngleInfo" for AngleInfo
import "./ImageBaseRotationAnimation" for ImageBaseRotationAnimation
import "./AdjustedImageBaseRotationAnimation" for AdjustedImageBaseRotationAnimation

