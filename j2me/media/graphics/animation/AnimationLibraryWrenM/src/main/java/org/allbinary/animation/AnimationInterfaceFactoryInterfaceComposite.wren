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

class AnimationInterfaceFactoryInterfaceComposite is JObject {
  animationInterfaceFactoryInterfaceArray { _animationInterfaceFactoryInterfaceArray }
  animationInterfaceFactoryInterfaceArray=(value) { _animationInterfaceFactoryInterfaceArray = value }

  initFields_AnimationInterfaceFactoryInterfaceComposite() {
    _animationInterfaceFactoryInterfaceArray = null
        
  }
    

    construct new(basicAnimationInterfaceFactoryInterfaceArray) {
    super()
    initFields_AnimationInterfaceFactoryInterfaceComposite()
        _animationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
    }
    

    getInstance(instanceId) {
        return NullAnimationFactory.getFactoryInstance().getInstance(0)
    }
    

    getAnimationInterfaceFactoryInterfaceArray() {
        return _animationInterfaceFactoryInterfaceArray
    }
    

    setInitialScale(scaleProperties) {
    }
}

import "../../../org/allbinary/media/ScaleProperties" for ScaleProperties
import "./AnimationInterfaceFactoryInterface" for AnimationInterfaceFactoryInterface
import "./NullAnimationFactory" for NullAnimationFactory
import "./Animation" for Animation

