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

class ImageArraySingletonAnimationInterfaceFactory is SingletonAnimationInterfaceFactory {

  initFields_ImageArraySingletonAnimationInterfaceFactory() {
  }
    

    construct new(imageArray) {
        super(ImageArrayAnimation.new(imageArray, AnimationBehavior.getInstance()))
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "./ImageArrayAnimation" for ImageArrayAnimation

