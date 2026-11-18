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
import "./ImageArrayBaseRotationAnimation" for ImageArrayBaseRotationAnimation

class ImageArrayRotationAnimation is ImageArrayBaseRotationAnimation {
  expectedTotalFrames { _expectedTotalFrames }
  expectedTotalFrames=(value) { _expectedTotalFrames = value }

  initFields_ImageArrayRotationAnimation() {
    _expectedTotalFrames = 0
        _expectedTotalFrames = 0
  }
    

    static createAnimation(anyType, animationBehavior) {
        var imageRotationAnimationInfo = anyType
        return ImageArrayRotationAnimation.new(imageRotationAnimationInfo.getImageArray(), imageRotationAnimationInfo.getAngleInfoP(), imageRotationAnimationInfo.getTotalAngle(), animationBehavior)
    }
    

    construct new(imageArray, angleInfo, totalAngle, animationBehavior) {
        super(imageArray, angleInfo, animationBehavior)
        initFields_ImageArrayRotationAnimation()
        this.initImageArray(imageArray, angleInfo, totalAngle)
    }
    

    initImageArray(imageArray, angleInfo, totalAngle) {
        _expectedTotalFrames = (totalAngle / this.angleInfo.getAngleIncrementInfo().getAngleIncrement())
        this.angleInfo.adjustAngle(0)
        if ((_expectedTotalFrames != this.getSize())) {
            Fiber.abort(JR.exception("Exception", "Wrong Number of Frames"))
        }
    }
    

    setImageArray(imageArray) {
        super.setImageArray(imageArray)
        this.angleInfo.adjustAngle(0)
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/math/AngleInfo" for AngleInfo
import "./ImageArrayRotationAnimationInfo" for ImageArrayRotationAnimationInfo

