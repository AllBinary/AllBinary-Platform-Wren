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
// package org.allbinary.animation.transition.shake

import "../../../../../allbinary_java" for JObject, JException, JR
import "./ShakeAnimationListener" for ShakeAnimationListener

class NoShakeAnimationListener is ShakeAnimationListener {
    static NO_SHAKE_ANIMATION_LISTENER {
    if (__NO_SHAKE_ANIMATION_LISTENER_set == null) {
      __NO_SHAKE_ANIMATION_LISTENER_set = true
      __NO_SHAKE_ANIMATION_LISTENER = NoShakeAnimationListener.new()
    }
    return __NO_SHAKE_ANIMATION_LISTENER
  }
  static NO_SHAKE_ANIMATION_LISTENER=(value) {
    __NO_SHAKE_ANIMATION_LISTENER_set = true
    __NO_SHAKE_ANIMATION_LISTENER = value
  }

  initFields_NoShakeAnimationListener() {
  }

  construct new() {
    super()
    initFields_NoShakeAnimationListener()
  }
}


