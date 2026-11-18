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

class ImageArrayAnimationFactory is JObject {
  dx { _dx }
  dx=(value) { _dx = value }
  dy { _dy }
  dy=(value) { _dy = value }
  imageArray { _imageArray }
  imageArray=(value) { _imageArray = value }
  animationBehaviorFactory { _animationBehaviorFactory }
  animationBehaviorFactory=(value) { _animationBehaviorFactory = value }

  initFields_ImageArrayAnimationFactory() {
    _dx = 0
    _dy = 0
    _imageArray = null
    _animationBehaviorFactory = null
        _dx = 0
        _dy = 0
        
        
  }
    

    construct new(imageArray, dx, dy, animationBehaviorFactory) {
    super()
    initFields_ImageArrayAnimationFactory()
        _imageArray = imageArray
        _animationBehaviorFactory = animationBehaviorFactory
        _dx = dx
        _dy = dy
    }
    

    getInstance(instanceId) {
        if (((_dx != 0) || (_dy != 0))) {
            return AdjustedImageArrayAnimation.new(_imageArray, _dx, _dy, _animationBehaviorFactory.getOrCreateInstance())
        } else {
            return ImageArrayAnimation.new(_imageArray, AnimationBehavior.getInstance())
        }
    }
    

    setInitialScale(scaleProperties) {
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/animation/Animation" for Animation
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/animation/AnimationBehaviorFactory" for AnimationBehaviorFactory
import "../../../../org/allbinary/animation/AnimationInterfaceFactoryInterface" for AnimationInterfaceFactoryInterface
import "../../../../org/allbinary/media/ScaleProperties" for ScaleProperties
import "./ImageArrayAnimation" for ImageArrayAnimation
import "./AdjustedImageArrayAnimation" for AdjustedImageArrayAnimation

