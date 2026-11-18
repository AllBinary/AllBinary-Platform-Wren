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
// package org.allbinary.animation

import "../../../allbinary_java" for JObject, JException, JR

class NullSpecialAnimationFactory is JObject {
    static NULL_SPECIAL_ANIMATION_FACTORY {
    if (__NULL_SPECIAL_ANIMATION_FACTORY_set == null) {
      __NULL_SPECIAL_ANIMATION_FACTORY_set = true
      __NULL_SPECIAL_ANIMATION_FACTORY = NullSpecialAnimationFactory.new()
    }
    return __NULL_SPECIAL_ANIMATION_FACTORY
  }
  static NULL_SPECIAL_ANIMATION_FACTORY=(value) {
    __NULL_SPECIAL_ANIMATION_FACTORY_set = true
    __NULL_SPECIAL_ANIMATION_FACTORY = value
  }

  initFields_NullSpecialAnimationFactory() {
  }
    

    construct new() {
    super()
    initFields_NullSpecialAnimationFactory()
    }
    

    static getFactoryInstance() {
        return NullSpecialAnimationFactory.NULL_SPECIAL_ANIMATION_FACTORY
    }
    

    getInstance(instanceId) {
        return SpecialAnimation.getInstance()
    }
    

    getInstanceAnimation(animationInterface) {
        return SpecialAnimation.getInstance()
    }
    

    setInitialScale(scaleProperties) {
    }
}

import "../../../org/allbinary/animation/special/SpecialAnimation" for SpecialAnimation
import "../../../org/allbinary/media/ScaleProperties" for ScaleProperties
import "./AnimationInterfaceFactoryInterface" for AnimationInterfaceFactoryInterface
import "./ProceduralAnimationInterfaceFactoryInterface" for ProceduralAnimationInterfaceFactoryInterface
import "./Animation" for Animation

