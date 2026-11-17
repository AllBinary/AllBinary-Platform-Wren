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
// package org.allbinary.graphics.color

import "../../../../allbinary_java" for JObject, JException, JR

class BasicColorUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = BasicColorUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  ZERO_ARRAY { _ZERO_ARRAY }
  ZERO_ARRAY=(value) { _ZERO_ARRAY = value }
  ALPHA { _ALPHA }
  ALPHA=(value) { _ALPHA = value }
  isAlpha { _isAlpha }
  isAlpha=(value) { _isAlpha = value }
  ffOpaque { _ffOpaque }
  ffOpaque=(value) { _ffOpaque = value }

  initFields_BasicColorUtil() {
    _ZERO_ARRAY = null
    _ALPHA = 0
    _isAlpha = false
    _ffOpaque = false
        _ZERO_ARRAY = List.filled(0, null)
        _ALPHA = 0xFF000000
        _isAlpha = true
        _ffOpaque = true
  }

  construct new() {
    super()
    initFields_BasicColorUtil()
  }
    

    static getInstance() {
        return BasicColorUtil.instance
    }
    

    getRGB(red, green, blue) {
        var value = 0
        if (_isAlpha) {
            if (_ffOpaque) {
                value = _ALPHA
            }
        }
        value = JR.or((JR.shl(red, 16)), value)
        value = JR.or((JR.shl(green, 8)), value)
        value = JR.or(blue, value)
        return value
    }
    

    getARGB(alphaValue, r, g, b) {
        return JR.i32(JR.i32(JR.i32((JR.and((JR.shl(alphaValue, 24)), _ALPHA)) + (JR.and((JR.shl(r, 16)), 0x00FF0000))) + (JR.and((JR.shl(g, 8)), 0x0000FF00))) + (JR.and(b, 0x000000FF)))
    }
    

    get(alphaValue, color) {
        return JR.i32((JR.and((JR.shl(alphaValue, 24)), _ALPHA)) + color)
    }
    

    invert(color) {
        return JR.or((JR.i32(0xFFFFFF - color)), _ALPHA)
    }
}

import "./BasicColor" for BasicColor

