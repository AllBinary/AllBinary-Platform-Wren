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

class IndependentVectorExplosionRotationAnimationFactory is JObject {
  framePoints { _framePoints }
  framePoints=(value) { _framePoints = value }
  vectorInfo { _vectorInfo }
  vectorInfo=(value) { _vectorInfo = value }
  basicColor { _basicColor }
  basicColor=(value) { _basicColor = value }
  vectorAnimationFactoryInterface { _vectorAnimationFactoryInterface }
  vectorAnimationFactoryInterface=(value) { _vectorAnimationFactoryInterface = value }
  vectorExplosionGenerator { _vectorExplosionGenerator }
  vectorExplosionGenerator=(value) { _vectorExplosionGenerator = value }

  initFields_IndependentVectorExplosionRotationAnimationFactory() {
    _framePoints = null
    _vectorInfo = null
    _basicColor = null
    _vectorAnimationFactoryInterface = null
    _vectorExplosionGenerator = null
        _framePoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY
        
        
        
        _vectorExplosionGenerator = VectorExplosionGenerator.getInstance()
  }
    

    construct new(vectorInfo, basicColor, vectorAnimationFactoryInterface) {
    super()
    initFields_IndependentVectorExplosionRotationAnimationFactory()
        _vectorInfo = vectorInfo
        _basicColor = basicColor
        _vectorAnimationFactoryInterface = vectorAnimationFactoryInterface
        this.init()
    }
    

    init() {
        _framePoints = VectorRotationGenerator.getInstance().getInstance(_vectorInfo)
    }
    

    getInstanceAnimation(animationInterface) {
        var frame = 0
        if ((animationInterface != null)) {
            var rotationAnimationInterface = animationInterface
            frame = rotationAnimationInterface.getFrame()
        }
        var points = _vectorExplosionGenerator.getInstance(_framePoints[frame], 6, _vectorExplosionGenerator.ROTATION)
        return _vectorAnimationFactoryInterface.getInstance(points, _basicColor)
    }
}

import "../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../org/allbinary/vector/VectorInfo" for VectorInfo
import "./ProceduralAnimationInterfaceFactoryInterface" for ProceduralAnimationInterfaceFactoryInterface
import "./VectorAnimationFactoryInterface" for VectorAnimationFactoryInterface
import "./VectorRotationGenerator" for VectorRotationGenerator
import "./VectorExplosionGenerator" for VectorExplosionGenerator
import "./IndexedAnimation" for IndexedAnimation
import "./Animation" for Animation

