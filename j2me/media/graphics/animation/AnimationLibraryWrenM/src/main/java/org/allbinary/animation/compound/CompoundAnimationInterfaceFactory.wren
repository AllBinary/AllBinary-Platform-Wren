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

class CompoundAnimationInterfaceFactory is JObject {
  basicAnimationInterfaceFactoryInterfaceArrayP { _basicAnimationInterfaceFactoryInterfaceArrayP }
  basicAnimationInterfaceFactoryInterfaceArrayP=(value) { _basicAnimationInterfaceFactoryInterfaceArrayP = value }
  animationBehaviorFactory { _animationBehaviorFactory }
  animationBehaviorFactory=(value) { _animationBehaviorFactory = value }

  initFields_CompoundAnimationInterfaceFactory() {
    _basicAnimationInterfaceFactoryInterfaceArrayP = null
    _animationBehaviorFactory = null
        
        
  }
    

    construct new(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory) {
    super()
    initFields_CompoundAnimationInterfaceFactory()
        _basicAnimationInterfaceFactoryInterfaceArrayP = basicAnimationInterfaceFactoryInterfaceArray
        _animationBehaviorFactory = animationBehaviorFactory
    }
    

    getInstance(instanceId) {
        var size = _basicAnimationInterfaceFactoryInterfaceArrayP.count
        var animationInterfaceArray = this.createArray(size)
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            animationInterfaceArray[index] = _basicAnimationInterfaceFactoryInterfaceArrayP[index].getInstance(instanceId)
            }
        }
        return this.createAnimation(animationInterfaceArray)
    }
    

    createArray(size) {
        return NullAnimationFactory.getFactoryInstance().EMPTY_ARRAY
    }
    

    createAnimation(animationInterfaceArray) {
        return NullAnimationFactory.getFactoryInstance().getInstance(0)
    }
    

    getBasicAnimationInterfaceFactoryInterfaceArray() {
        return _basicAnimationInterfaceFactoryInterfaceArrayP
    }
    

    setInitialScale(scaleProperties) {
        var size = _basicAnimationInterfaceFactoryInterfaceArrayP.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            _basicAnimationInterfaceFactoryInterfaceArrayP[index].setInitialScale(scaleProperties)
            }
        }
    }
}

import "../../../../org/allbinary/animation/Animation" for Animation
import "../../../../org/allbinary/animation/AnimationBehaviorFactory" for AnimationBehaviorFactory
import "../../../../org/allbinary/animation/AnimationInterfaceFactoryInterface" for AnimationInterfaceFactoryInterface
import "../../../../org/allbinary/animation/NullAnimationFactory" for NullAnimationFactory
import "../../../../org/allbinary/media/ScaleProperties" for ScaleProperties

