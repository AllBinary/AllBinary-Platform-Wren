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
// package org.allbinary.animation.compound

import "../../../../allbinary_java" for JObject, JException, JR
import "./CompoundAnimationInterfaceFactory" for CompoundAnimationInterfaceFactory

class AutoCompoundRotationAnimationInterfaceFactory is CompoundAnimationInterfaceFactory {

  initFields_AutoCompoundRotationAnimationInterfaceFactory() {
  }
    

    construct new(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory) {
        super(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
    }
    

    createArray(size) {
        return List.filled(size, null)
    }
    

    createAnimation(animationInterfaceArray) {
        return AutoCompoundRotationAnimation.new(animationInterfaceArray, this.animationBehaviorFactory.getOrCreateInstance())
    }
}

import "../../../../org/allbinary/animation/Animation" for Animation
import "../../../../org/allbinary/animation/AnimationBehaviorFactory" for AnimationBehaviorFactory
import "../../../../org/allbinary/animation/AnimationInterfaceFactoryInterface" for AnimationInterfaceFactoryInterface
import "../../../../org/allbinary/animation/RotationAnimation" for RotationAnimation
import "./AutoCompoundRotationAnimation" for AutoCompoundRotationAnimation

