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

class VectorAnimationFactory is JObject {

  initFields_VectorAnimationFactory() {
  }

  construct new() {
    super()
    initFields_VectorAnimationFactory()
  }
    

    getInstance(points, basicColor) {
        return VectorAnimation.new(points, basicColor, AnimationBehavior.getInstance())
    }
}

import "../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "./VectorAnimationFactoryInterface" for VectorAnimationFactoryInterface
import "./VectorAnimation" for VectorAnimation
import "./AnimationBehavior" for AnimationBehavior

