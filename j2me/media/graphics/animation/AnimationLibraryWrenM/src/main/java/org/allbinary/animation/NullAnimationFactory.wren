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

class NullAnimationFactory is JObject {
    static NULL_NOT_FOR_USE_ANIMATION_FACTORY {
    if (__NULL_NOT_FOR_USE_ANIMATION_FACTORY_set == null) {
      __NULL_NOT_FOR_USE_ANIMATION_FACTORY_set = true
      __NULL_NOT_FOR_USE_ANIMATION_FACTORY = NullAnimationFactory.new()
    }
    return __NULL_NOT_FOR_USE_ANIMATION_FACTORY
  }
  static NULL_NOT_FOR_USE_ANIMATION_FACTORY=(value) {
    __NULL_NOT_FOR_USE_ANIMATION_FACTORY_set = true
    __NULL_NOT_FOR_USE_ANIMATION_FACTORY = value
  }
    static NULL_ANIMATION_FACTORY {
    if (__NULL_ANIMATION_FACTORY_set == null) {
      __NULL_ANIMATION_FACTORY_set = true
      __NULL_ANIMATION_FACTORY = NullAnimationFactory.new()
    }
    return __NULL_ANIMATION_FACTORY
  }
  static NULL_ANIMATION_FACTORY=(value) {
    __NULL_ANIMATION_FACTORY_set = true
    __NULL_ANIMATION_FACTORY = value
  }
  NULL_ANIMATION { _NULL_ANIMATION }
  NULL_ANIMATION=(value) { _NULL_ANIMATION = value }
  EMPTY_ARRAY { _EMPTY_ARRAY }
  EMPTY_ARRAY=(value) { _EMPTY_ARRAY = value }

  initFields_NullAnimationFactory() {
    _NULL_ANIMATION = null
    _EMPTY_ARRAY = null
        _NULL_ANIMATION = Animation.new()
        _EMPTY_ARRAY = List.filled(0, null)
  }
    

    construct new() {
    super()
    initFields_NullAnimationFactory()
    }
    

    static getFactoryInstance() {
        return NullAnimationFactory.NULL_ANIMATION_FACTORY
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

import "../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../org/allbinary/media/ScaleProperties" for ScaleProperties
import "./AnimationInterfaceFactoryInterface" for AnimationInterfaceFactoryInterface
import "./ProceduralAnimationInterfaceFactoryInterface" for ProceduralAnimationInterfaceFactoryInterface
import "./Animation" for Animation

