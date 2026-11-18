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

class BaseAnimationInterfaceFactoryInterfaceComposite is JObject {
  basicAnimationInterfaceFactoryInterfaceArray { _basicAnimationInterfaceFactoryInterfaceArray }
  basicAnimationInterfaceFactoryInterfaceArray=(value) { _basicAnimationInterfaceFactoryInterfaceArray = value }

  initFields_BaseAnimationInterfaceFactoryInterfaceComposite() {
    _basicAnimationInterfaceFactoryInterfaceArray = null
        
  }
    

    construct new(basicAnimationInterfaceFactoryInterfaceArray) {
    super()
    initFields_BaseAnimationInterfaceFactoryInterfaceComposite()
        _basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
    }
    

    getInstance(instanceId) {
        return NullAnimationFactory.getFactoryInstance().getInstance(0)
    }
    

    getBasicAnimationInterfaceFactoryInterfaceArray() {
        return _basicAnimationInterfaceFactoryInterfaceArray
    }
    

    setBasicAnimationInterfaceFactoryInterfaceArray(basicAnimationInterfaceFactoryInterfaceArray) {
        _basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
    }
    

    setInitialScale(scaleProperties) {
    }
}

import "../../../org/allbinary/media/ScaleProperties" for ScaleProperties
import "./AnimationInterfaceFactoryInterface" for AnimationInterfaceFactoryInterface
import "./BasicAnimationInterfaceFactoryInterface" for BasicAnimationInterfaceFactoryInterface
import "./NullAnimationFactory" for NullAnimationFactory
import "./Animation" for Animation

