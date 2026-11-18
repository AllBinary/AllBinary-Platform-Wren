// Generated Code Do Not Modify
// package org.allbinary.graphics.font

import "../../../../allbinary_java" for JObject, JException, JR

//OpenGLESBaseJ2MEJavaLibrary
class FontDebugBase is JObject {
    static instanceBase {
    if (__instanceBase_set == null) {
      __instanceBase_set = true
      __instanceBase = FontDebugBase.new()
    }
    return __instanceBase
  }
  static instanceBase=(value) {
    __instanceBase_set = true
    __instanceBase = value
  }
  SET_FONT { _SET_FONT }
  SET_FONT=(value) { _SET_FONT = value }

  initFields_FontDebugBase() {
    _SET_FONT = null
        _SET_FONT = "setFont"
  }

  construct new() {
    super()
    initFields_FontDebugBase()
  }
    

    static getInstance() {
        return FontDebugBase.instanceBase
    }
    

    debugMetrics(currentFont, convertedTextSize, displayMetrics, stringBuffer) {
    }
    

    debugDpi(densityDpi, stringBuffer) {
    }
    

    debugDimension(currentFont, convertedTextSize, longestDimensionTotalPixels, stringBuffer) {
    }
}

import "../../../../javax/microedition/lcdui/Font" for Font
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker

