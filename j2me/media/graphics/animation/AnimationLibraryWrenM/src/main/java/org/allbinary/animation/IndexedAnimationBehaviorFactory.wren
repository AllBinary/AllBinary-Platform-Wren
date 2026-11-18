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
import "./AnimationBehaviorFactory" for AnimationBehaviorFactory

class IndexedAnimationBehaviorFactory is AnimationBehaviorFactory {
  frameDelayTime { _frameDelayTime }
  frameDelayTime=(value) { _frameDelayTime = value }
  loopTotal { _loopTotal }
  loopTotal=(value) { _loopTotal = value }

  initFields_IndexedAnimationBehaviorFactory() {
    _frameDelayTime = 0
    _loopTotal = 0
        
        
  }
    

    construct new(loopTotal, frameDelayTime) {
    super()
    initFields_IndexedAnimationBehaviorFactory()
        _loopTotal = loopTotal
        _frameDelayTime = frameDelayTime
    }
    

    getOrCreateInstance() {
        return IndexedAnimationBehavior.new(_loopTotal, _frameDelayTime)
    }
}

import "./IndexedAnimationBehavior" for IndexedAnimationBehavior
import "./AnimationBehavior" for AnimationBehavior

