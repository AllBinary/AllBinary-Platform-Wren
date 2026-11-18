/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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

class MyFontProcessor is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = MyFontProcessor.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_MyFontProcessor() {
  }

  construct new() {
    super()
    initFields_MyFontProcessor()
  }
    

    static defaultCharWidth(font) {
        return font.charWidth("C".bytes[0])
    }
    

    static defaultStringWidth(font, size) {
        return (MyFontProcessor.defaultCharWidth(font) * size)
    }
    

    static getInstance() {
        return MyFontProcessor.instance
    }
    

    process(graphics) {
    }
}

import "../../../../javax/microedition/lcdui/Font" for Font
import "../../../../javax/microedition/lcdui/Graphics" for Graphics

