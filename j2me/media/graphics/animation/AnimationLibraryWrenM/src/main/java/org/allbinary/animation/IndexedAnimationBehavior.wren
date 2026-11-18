/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
import "./AnimationBehavior" for AnimationBehavior

class IndexedAnimationBehavior is AnimationBehavior {
  frameDelayTime { _frameDelayTime }
  frameDelayTime=(value) { _frameDelayTime = value }
  loopTotal { _loopTotal }
  loopTotal=(value) { _loopTotal = value }
  elapsedTime { _elapsedTime }
  elapsedTime=(value) { _elapsedTime = value }
  loopIndex { _loopIndex }
  loopIndex=(value) { _loopIndex = value }

  initFields_IndexedAnimationBehavior() {
    _frameDelayTime = 0
    _loopTotal = 0
    _elapsedTime = 0
    _loopIndex = 0
        
        
        _elapsedTime = 0
        _loopIndex = 0
  }
    

    construct new(loopTotal, frameDelayTime) {
    super()
    initFields_IndexedAnimationBehavior()
        _loopTotal = loopTotal
        _frameDelayTime = frameDelayTime
    }
    

    reset() {
        _loopIndex = 0
    }
}


