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

class ShakeAnimationListenerFactory is JObject {

  initFields_ShakeAnimationListenerFactory() {
  }

  construct new() {
    super()
    initFields_ShakeAnimationListenerFactory()
  }
    

    static getInstance() {
        return NoShakeAnimationListener.new()
    }
}

import "./NoShakeAnimationListener" for NoShakeAnimationListener
import "./ShakeAnimationListener" for ShakeAnimationListener

