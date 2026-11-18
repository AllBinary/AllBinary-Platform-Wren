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

class SimultaneousCompoundIndexAnimationInterfaceFactory is JObject {
  basicAnimationInterfaceFactoryInterfaceArray { _basicAnimationInterfaceFactoryInterfaceArray }
  basicAnimationInterfaceFactoryInterfaceArray=(value) { _basicAnimationInterfaceFactoryInterfaceArray = value }
  animationBehaviorFactory { _animationBehaviorFactory }
  animationBehaviorFactory=(value) { _animationBehaviorFactory = value }

  initFields_SimultaneousCompoundIndexAnimationInterfaceFactory() {
    _basicAnimationInterfaceFactoryInterfaceArray = null
    _animationBehaviorFactory = null
        
        
  }
    

    construct new(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory) {
    super()
    initFields_SimultaneousCompoundIndexAnimationInterfaceFactory()
        _basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
        _animationBehaviorFactory = animationBehaviorFactory
    }
    

    getInstance(instanceId) {
        var size = _basicAnimationInterfaceFactoryInterfaceArray.count
        var animationInterfaceArray = List.filled(size, null)
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            animationInterfaceArray[index] = _basicAnimationInterfaceFactoryInterfaceArray[index].getInstance(instanceId)
            }
        }
        return this.getOrCreate(animationInterfaceArray)
    }
    

    getOrCreate(animationInterfaceArray) {
        return SimultaneousCompoundIndexAnimation.new(animationInterfaceArray, _animationBehaviorFactory.getOrCreateInstance())
    }
    

    getBasicAnimationInterfaceFactoryInterfaceArray() {
        return _basicAnimationInterfaceFactoryInterfaceArray
    }
    

    setInitialScale(scaleProperties) {
    }
}

import "../../../../org/allbinary/animation/Animation" for Animation
import "../../../../org/allbinary/animation/AnimationBehaviorFactory" for AnimationBehaviorFactory
import "../../../../org/allbinary/animation/AnimationInterfaceFactoryInterface" for AnimationInterfaceFactoryInterface
import "../../../../org/allbinary/animation/IndexedAnimation" for IndexedAnimation
import "../../../../org/allbinary/media/ScaleProperties" for ScaleProperties
import "./SimultaneousCompoundIndexAnimation" for SimultaneousCompoundIndexAnimation

