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

class SingletonAnimationInterfaceFactory is JObject {
  animationInterface { _animationInterface }
  animationInterface=(value) { _animationInterface = value }

  initFields_SingletonAnimationInterfaceFactory() {
    _animationInterface = null
        
  }
    

    construct new(animationInterface) {
    super()
    initFields_SingletonAnimationInterfaceFactory()
        _animationInterface = animationInterface
    }
    

    getInstance(instanceId) {
        return _animationInterface
    }
    

    getInstanceAnimation(animationInterface) {
        return _animationInterface
    }
    

    setInitialScale(scaleProperties) {
    }
}

import "../../../org/allbinary/media/ScaleProperties" for ScaleProperties
import "./AnimationInterfaceFactoryInterface" for AnimationInterfaceFactoryInterface
import "./ProceduralAnimationInterfaceFactoryInterface" for ProceduralAnimationInterfaceFactoryInterface
import "./Animation" for Animation

