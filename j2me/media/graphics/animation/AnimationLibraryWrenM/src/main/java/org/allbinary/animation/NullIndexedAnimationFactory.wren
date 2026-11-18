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

class NullIndexedAnimationFactory is JObject {
    static NULL_INDEXED_ANIMATION_ARRAY {
    if (__NULL_INDEXED_ANIMATION_ARRAY_set == null) {
      __NULL_INDEXED_ANIMATION_ARRAY_set = true
      __NULL_INDEXED_ANIMATION_ARRAY = List.filled(0, null)
    }
    return __NULL_INDEXED_ANIMATION_ARRAY
  }
  static NULL_INDEXED_ANIMATION_ARRAY=(value) {
    __NULL_INDEXED_ANIMATION_ARRAY_set = true
    __NULL_INDEXED_ANIMATION_ARRAY = value
  }
    static NULL_INDEXED_ANIMATION_FACTORY {
    if (__NULL_INDEXED_ANIMATION_FACTORY_set == null) {
      __NULL_INDEXED_ANIMATION_FACTORY_set = true
      __NULL_INDEXED_ANIMATION_FACTORY = NullIndexedAnimationFactory.new()
    }
    return __NULL_INDEXED_ANIMATION_FACTORY
  }
  static NULL_INDEXED_ANIMATION_FACTORY=(value) {
    __NULL_INDEXED_ANIMATION_FACTORY_set = true
    __NULL_INDEXED_ANIMATION_FACTORY = value
  }
  NULL_ANIMATION { _NULL_ANIMATION }
  NULL_ANIMATION=(value) { _NULL_ANIMATION = value }

  initFields_NullIndexedAnimationFactory() {
    _NULL_ANIMATION = null
        _NULL_ANIMATION = NullIndexedAnimationInner.new()
  }
    

    construct new() {
    super()
    initFields_NullIndexedAnimationFactory()
    }
    

    static getFactoryInstance() {
        return NullIndexedAnimationFactory.NULL_INDEXED_ANIMATION_FACTORY
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
import "./IndexedAnimation" for IndexedAnimation
import "./NullIndexedAnimationInner" for NullIndexedAnimationInner
import "./Animation" for Animation

