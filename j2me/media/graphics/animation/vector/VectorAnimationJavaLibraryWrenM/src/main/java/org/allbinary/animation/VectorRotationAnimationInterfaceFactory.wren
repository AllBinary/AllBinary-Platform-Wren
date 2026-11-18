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

class VectorRotationAnimationInterfaceFactory is JObject {
  currentPoints { _currentPoints }
  currentPoints=(value) { _currentPoints = value }
  basicColor { _basicColor }
  basicColor=(value) { _basicColor = value }
  animationBehaviorFactory { _animationBehaviorFactory }
  animationBehaviorFactory=(value) { _animationBehaviorFactory = value }

  initFields_VectorRotationAnimationInterfaceFactory() {
    _currentPoints = null
    _basicColor = null
    _animationBehaviorFactory = null
        _currentPoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY
        _basicColor = BasicColorFactory.getInstance().WHITE
        
  }
    

    construct new(currentPoints, basicColor, animationBehaviorFactory) {
    super()
    initFields_VectorRotationAnimationInterfaceFactory()
        _currentPoints = currentPoints
        this.setBasicColorP(basicColor)
        _animationBehaviorFactory = animationBehaviorFactory
    }
    

    getInstance(instanceId) {
        return VectorRotationAnimation.new(_currentPoints, this.getBasicColorP(), _animationBehaviorFactory.getOrCreateInstance())
    }
    

    setBasicColorP(basicColor) {
        _basicColor = basicColor
    }
    

    getBasicColorP() {
        return _basicColor
    }
    

    setInitialScale(scaleProperties) {
    }
}

import "../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../org/allbinary/media/ScaleProperties" for ScaleProperties
import "./AnimationInterfaceFactoryInterface" for AnimationInterfaceFactoryInterface
import "./AnimationBehaviorFactory" for AnimationBehaviorFactory
import "./VectorRotationAnimation" for VectorRotationAnimation
import "./Animation" for Animation

