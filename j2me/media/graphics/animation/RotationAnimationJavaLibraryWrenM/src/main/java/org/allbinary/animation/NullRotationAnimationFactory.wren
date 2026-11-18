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

class NullRotationAnimationFactory is JObject {
    static NULL_ROTATION_ANIMATION_FACTORY {
    if (__NULL_ROTATION_ANIMATION_FACTORY_set == null) {
      __NULL_ROTATION_ANIMATION_FACTORY_set = true
      __NULL_ROTATION_ANIMATION_FACTORY = NullRotationAnimationFactory.new()
    }
    return __NULL_ROTATION_ANIMATION_FACTORY
  }
  static NULL_ROTATION_ANIMATION_FACTORY=(value) {
    __NULL_ROTATION_ANIMATION_FACTORY_set = true
    __NULL_ROTATION_ANIMATION_FACTORY = value
  }
  NULL_ROTATION_ANIMATION_ARRAY { _NULL_ROTATION_ANIMATION_ARRAY }
  NULL_ROTATION_ANIMATION_ARRAY=(value) { _NULL_ROTATION_ANIMATION_ARRAY = value }
  NULL_ANIMATION { _NULL_ANIMATION }
  NULL_ANIMATION=(value) { _NULL_ANIMATION = value }

  initFields_NullRotationAnimationFactory() {
    _NULL_ROTATION_ANIMATION_ARRAY = null
    _NULL_ANIMATION = null
        _NULL_ROTATION_ANIMATION_ARRAY = List.filled(0, null)
        _NULL_ANIMATION = NullRotationAnimation2.new()
  }
    

    construct new() {
    super()
    initFields_NullRotationAnimationFactory()
    }
    

    static getFactoryInstance() {
        return NullRotationAnimationFactory.NULL_ROTATION_ANIMATION_FACTORY
    }
    

    getInstance(instanceId) {
        return _NULL_ANIMATION
    }
    

    getInstanceAnimation(animationInterface) {
        return _NULL_ANIMATION
    }
    

    setInitialScale(scaleProperties) {
    }
}

import "../../../org/allbinary/media/ScaleProperties" for ScaleProperties
import "./AnimationInterfaceFactoryInterface" for AnimationInterfaceFactoryInterface
import "./ProceduralAnimationInterfaceFactoryInterface" for ProceduralAnimationInterfaceFactoryInterface
import "./RotationAnimation" for RotationAnimation
import "./NullRotationAnimation2" for NullRotationAnimation2
import "./Animation" for Animation

