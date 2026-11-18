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
// package org.allbinary.animation.special

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/animation/IndexedAnimation" for IndexedAnimation

class SpecialAnimation is IndexedAnimation {
    static NULL_SPECIAL_ANIMATION {
    if (__NULL_SPECIAL_ANIMATION_set == null) {
      __NULL_SPECIAL_ANIMATION_set = true
      __NULL_SPECIAL_ANIMATION = SpecialAnimation.new(IndexedAnimationBehavior.new(1, 250))
    }
    return __NULL_SPECIAL_ANIMATION
  }
  static NULL_SPECIAL_ANIMATION=(value) {
    __NULL_SPECIAL_ANIMATION_set = true
    __NULL_SPECIAL_ANIMATION = value
  }

  initFields_SpecialAnimation() {
  }
    

    static getInstance() {
        return SpecialAnimation.NULL_SPECIAL_ANIMATION
    }
    

    construct new(animationBehavior) {
        super(animationBehavior)
    }
    

    nextFrame() {
        var indexedAnimationBehavior = (this.animationBehaviorP)
        indexedAnimationBehavior.loopIndex = JR.i32(indexedAnimationBehavior.loopIndex + 1)
    }
    

    setLastFrame() {
    }
    

    isComplete() {
        return false
    }
    

    open() {
    }
    

    close() {
    }
    

    process() {
    }
}

import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/animation/IndexedAnimationBehavior" for IndexedAnimationBehavior
import "./SpecialAnimationInterface" for SpecialAnimationInterface

