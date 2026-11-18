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
// package org.allbinary.graphics

import "../../../allbinary_java" for JObject, JException, JR

class Anchor is JObject {
    static TOP_LEFT {
    if (__TOP_LEFT_set == null) {
      __TOP_LEFT_set = true
      __TOP_LEFT = (Graphics.TOP & Graphics.LEFT)
    }
    return __TOP_LEFT
  }
  static TOP_LEFT=(value) {
    __TOP_LEFT_set = true
    __TOP_LEFT = value
  }

  initFields_Anchor() {
  }

  construct new() {
    super()
    initFields_Anchor()
  }
}

import "../../../javax/microedition/lcdui/Graphics" for Graphics

