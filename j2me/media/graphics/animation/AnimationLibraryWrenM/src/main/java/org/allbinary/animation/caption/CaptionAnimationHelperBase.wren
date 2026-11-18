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
// package org.allbinary.animation.caption

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/animation/Animation" for Animation

class CaptionAnimationHelperBase is Animation {
    static INSTANCE {
    if (__INSTANCE_set == null) {
      __INSTANCE_set = true
      __INSTANCE = CaptionAnimationHelperBase.new()
    }
    return __INSTANCE
  }
  static INSTANCE=(value) {
    __INSTANCE_set = true
    __INSTANCE = value
  }

  initFields_CaptionAnimationHelperBase() {
  }

  construct new() {
    super()
    initFields_CaptionAnimationHelperBase()
  }
    

    isShowing() {
        return false
    }
    

    tick() {
    }
    

    update(message, basicColor) {
    }
    

    paintXY(graphics, x, y) {
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor

