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
// package org.allbinary.graphics.font

import "../../../../allbinary_java" for JObject, JException, JR

class FontDebugFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = FontDebugFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_FontDebugFactory() {
  }

  construct new() {
    super()
    initFields_FontDebugFactory()
  }
    

    static getInstance() {
        return FontDebugFactory.instance
    }
    

    setFont(font, graphics) {
        graphics.setFont(font)
    }
}

import "../../../../javax/microedition/lcdui/Font" for Font
import "../../../../javax/microedition/lcdui/Graphics" for Graphics

