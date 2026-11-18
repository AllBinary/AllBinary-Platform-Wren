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

class VectorExplosionAnimationFactory is JObject {
  vectorExplosionGenerator { _vectorExplosionGenerator }
  vectorExplosionGenerator=(value) { _vectorExplosionGenerator = value }
  basicColor { _basicColor }
  basicColor=(value) { _basicColor = value }
  animationBehaviorFactory { _animationBehaviorFactory }
  animationBehaviorFactory=(value) { _animationBehaviorFactory = value }

  initFields_VectorExplosionAnimationFactory() {
    _vectorExplosionGenerator = null
    _basicColor = null
    _animationBehaviorFactory = null
        _vectorExplosionGenerator = VectorExplosionGenerator.getInstance()
        _basicColor = BasicColorFactory.getInstance().WHITE
        
  }
    

    construct new(basicColor, animationBehaviorFactory) {
    super()
    initFields_VectorExplosionAnimationFactory()
        _animationBehaviorFactory = animationBehaviorFactory
        this.setBasicColorP(basicColor)
    }
    

    getInstanceAnimation(animationInterface) {
        var vectorRotationAnimationInterface = animationInterface
        var frame = vectorRotationAnimationInterface.getFrame()
        var framePoints = vectorRotationAnimationInterface.getPoints(frame)
        var points = _vectorExplosionGenerator.getInstance(framePoints, 6, _vectorExplosionGenerator.ROTATION)
        return VectorRotationAnimation.new(points, this.getBasicColorP(), _animationBehaviorFactory.getOrCreateInstance())
    }
    

    setBasicColorP(basicColor) {
        _basicColor = basicColor
    }
    

    getBasicColorP() {
        return _basicColor
    }
}

import "../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "./ProceduralAnimationInterfaceFactoryInterface" for ProceduralAnimationInterfaceFactoryInterface
import "./VectorExplosionGenerator" for VectorExplosionGenerator
import "./AnimationBehaviorFactory" for AnimationBehaviorFactory
import "./VectorAnimationInterface" for VectorAnimationInterface
import "./VectorRotationAnimation" for VectorRotationAnimation
import "./Animation" for Animation

