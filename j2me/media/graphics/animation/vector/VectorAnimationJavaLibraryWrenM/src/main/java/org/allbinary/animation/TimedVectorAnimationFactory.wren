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

class TimedVectorAnimationFactory is JObject {

  initFields_TimedVectorAnimationFactory() {
  }

  construct new() {
    super()
    initFields_TimedVectorAnimationFactory()
  }
    

    getInstance(points, basicColor) {
        return TimedVectorAnimation.new(points, basicColor, AnimationBehavior.getInstance())
    }
}

import "../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "./VectorAnimationFactoryInterface" for VectorAnimationFactoryInterface
import "./TimedVectorAnimation" for TimedVectorAnimation
import "./AnimationBehavior" for AnimationBehavior
import "./VectorAnimation" for VectorAnimation

