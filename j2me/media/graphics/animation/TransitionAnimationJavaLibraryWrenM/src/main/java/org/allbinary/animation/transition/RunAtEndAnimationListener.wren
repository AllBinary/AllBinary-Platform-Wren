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
// package org.allbinary.animation.transition

import "../../../../allbinary_java" for JObject, JException, JR

class RunAtEndAnimationListener is JObject {
  runnable { _runnable }
  runnable=(value) { _runnable = value }

  initFields_RunAtEndAnimationListener() {
    _runnable = null
        
  }
    

    construct new(runnable) {
    super()
    initFields_RunAtEndAnimationListener()
        _runnable = runnable
    }
    

    onPlatformAnimationStart() {
    }
    

    onPlatformAnimationEnd() {
    }
    

    onPlatformAnimationRepeat() {
    }
}

import "../../../../java/lang/Runnable" for Runnable
import "./AnimationListenerInterface" for AnimationListenerInterface

