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
// package org.allbinary.animation.vector

import "../../../../allbinary_java" for JObject, JException, JR

class LineAnimationFactory is JObject {
  basicColor { _basicColor }
  basicColor=(value) { _basicColor = value }

  initFields_LineAnimationFactory() {
    _basicColor = null
        
  }
    

    construct new(basicColor) {
    super()
    initFields_LineAnimationFactory()
        _basicColor = basicColor
    }
    

    getInstance(instanceId) {
        return LineAnimation.new(_basicColor)
    }
    

    setInitialScale(scaleProperties) {
    }
}

import "../../../../org/allbinary/animation/Animation" for Animation
import "../../../../org/allbinary/animation/AnimationInterfaceFactoryInterface" for AnimationInterfaceFactoryInterface
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/media/ScaleProperties" for ScaleProperties
import "./LineAnimation" for LineAnimation

