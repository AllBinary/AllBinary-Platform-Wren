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
import "../../../../org/allbinary/animation/SingletonAnimationInterfaceFactory" for SingletonAnimationInterfaceFactory

class ImageAnimationSingletonInterfaceFactory is SingletonAnimationInterfaceFactory {

  initFields_ImageAnimationSingletonInterfaceFactory() {
  }
    

    construct new(animationInterface, width, height) {
        super(ImageAnimation.new(AnimationFrameToImageUtil.getInstance().getInstanceWH(width, height, animationInterface), AnimationBehavior.getInstance()))
    }
}

import "../../../../org/allbinary/animation/Animation" for Animation
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/image/AnimationFrameToImageUtil" for AnimationFrameToImageUtil
import "./ImageAnimation" for ImageAnimation

