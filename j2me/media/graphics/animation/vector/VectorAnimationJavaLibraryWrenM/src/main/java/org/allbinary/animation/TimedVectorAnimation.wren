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
import "./VectorAnimation" for VectorAnimation

class TimedVectorAnimation is VectorAnimation {
  timeElapsedHelper { _timeElapsedHelper }
  timeElapsedHelper=(value) { _timeElapsedHelper = value }

  initFields_TimedVectorAnimation() {
    _timeElapsedHelper = null
        _timeElapsedHelper = TimeDelayHelper.new(200)
  }
    

    construct new(currentPoints, basicColor, animationBehavior) {
        super(currentPoints, basicColor, animationBehavior)
        initFields_TimedVectorAnimation()
    }
    

    nextFrame() {
        if (_timeElapsedHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            super.nextFrame()
        }
    }
}

import "../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../org/allbinary/time/GameTickTimeDelayHelperFactory" for GameTickTimeDelayHelperFactory
import "../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper
import "./AnimationBehavior" for AnimationBehavior

