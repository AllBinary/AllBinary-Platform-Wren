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

class BasicColorFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = BasicColorFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  NULL_COLOR { _NULL_COLOR }
  NULL_COLOR=(value) { _NULL_COLOR = value }
  TAN { _TAN }
  TAN=(value) { _TAN = value }
  SKIN_PINK { _SKIN_PINK }
  SKIN_PINK=(value) { _SKIN_PINK = value }
  RED { _RED }
  RED=(value) { _RED = value }
  LIGHT_RED { _LIGHT_RED }
  LIGHT_RED=(value) { _LIGHT_RED = value }
  DARK_GREEN { _DARK_GREEN }
  DARK_GREEN=(value) { _DARK_GREEN = value }
  GREEN { _GREEN }
  GREEN=(value) { _GREEN = value }
  LIGHT_GREEN { _LIGHT_GREEN }
  LIGHT_GREEN=(value) { _LIGHT_GREEN = value }
  PURPLE { _PURPLE }
  PURPLE=(value) { _PURPLE = value }
  BLUE { _BLUE }
  BLUE=(value) { _BLUE = value }
  LIGHT_BLUE { _LIGHT_BLUE }
  LIGHT_BLUE=(value) { _LIGHT_BLUE = value }
  VERY_LIGHT_BLUE { _VERY_LIGHT_BLUE }
  VERY_LIGHT_BLUE=(value) { _VERY_LIGHT_BLUE = value }
  PUCE { _PUCE }
  PUCE=(value) { _PUCE = value }
  AQUA { _AQUA }
  AQUA=(value) { _AQUA = value }
  YELLOW { _YELLOW }
  YELLOW=(value) { _YELLOW = value }
  PINK { _PINK }
  PINK=(value) { _PINK = value }
  BLACK { _BLACK }
  BLACK=(value) { _BLACK = value }
  GREY { _GREY }
  GREY=(value) { _GREY = value }
  LIGHT_GREY { _LIGHT_GREY }
  LIGHT_GREY=(value) { _LIGHT_GREY = value }
  DARK_GREY { _DARK_GREY }
  DARK_GREY=(value) { _DARK_GREY = value }
  ORANGE { _ORANGE }
  ORANGE=(value) { _ORANGE = value }
  BROWN { _BROWN }
  BROWN=(value) { _BROWN = value }
  WHITE { _WHITE }
  WHITE=(value) { _WHITE = value }
  TRANSPARENT_COLOR { _TRANSPARENT_COLOR }
  TRANSPARENT_COLOR=(value) { _TRANSPARENT_COLOR = value }
  TRANSPARENT_GREY { _TRANSPARENT_GREY }
  TRANSPARENT_GREY=(value) { _TRANSPARENT_GREY = value }
  TRANSPARENT_BLACK { _TRANSPARENT_BLACK }
  TRANSPARENT_BLACK=(value) { _TRANSPARENT_BLACK = value }
  TRANSPARENT_RED { _TRANSPARENT_RED }
  TRANSPARENT_RED=(value) { _TRANSPARENT_RED = value }
  CLEAR_COLOR { _CLEAR_COLOR }
  CLEAR_COLOR=(value) { _CLEAR_COLOR = value }
  BORDER_COLOR { _BORDER_COLOR }
  BORDER_COLOR=(value) { _BORDER_COLOR = value }

  initFields_BasicColorFactory() {
    _NULL_COLOR = null
    _TAN = null
    _SKIN_PINK = null
    _RED = null
    _LIGHT_RED = null
    _DARK_GREEN = null
    _GREEN = null
    _LIGHT_GREEN = null
    _PURPLE = null
    _BLUE = null
    _LIGHT_BLUE = null
    _VERY_LIGHT_BLUE = null
    _PUCE = null
    _AQUA = null
    _YELLOW = null
    _PINK = null
    _BLACK = null
    _GREY = null
    _LIGHT_GREY = null
    _DARK_GREY = null
    _ORANGE = null
    _BROWN = null
    _WHITE = null
    _TRANSPARENT_COLOR = null
    _TRANSPARENT_GREY = null
    _TRANSPARENT_BLACK = null
    _TRANSPARENT_RED = null
    _CLEAR_COLOR = null
    _BORDER_COLOR = null
        _NULL_COLOR = this.createInstanceARGB(255, 255, 255, 255, "null color")
        _TAN = this.createInstance(0xE9D8B5)
        _SKIN_PINK = this.createInstance(0xFDCECE)
        _RED = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xFF0000, "red")
        _LIGHT_RED = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xFFA0A0, "light red")
        _DARK_GREEN = this.createInstance(0x00FF00)
        _GREEN = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x00DD00, "green")
        _LIGHT_GREEN = this.createInstance(0x007700)
        _PURPLE = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x400040, "purple")
        _BLUE = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x0000FF, "blue")
        _LIGHT_BLUE = this.createInstance(0x00aaff)
        _VERY_LIGHT_BLUE = this.createInstance(0x000033)
        _PUCE = this.createInstance(0xFF00AA)
        _AQUA = this.createInstance(0x00FFFF)
        _YELLOW = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xFFFF00, "yellow")
        _PINK = this.createInstance(0xFF00FF)
        _BLACK = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x000000, "black")
        _GREY = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xAAAAAA, "grey")
        _LIGHT_GREY = this.createInstance(0xC0C0C0)
        _DARK_GREY = this.createInstance(0x404040)
        _ORANGE = this.createInstance(0xe07718)
        _BROWN = this.createInstance(0x956B00)
        _WHITE = this.createInstance(0xFFFFFF)
        _TRANSPARENT_COLOR = this.createInstanceAN(0x00000000, 0x000000, StringUtil.getInstance().EMPTY_STRING)
        _TRANSPARENT_GREY = this.createInstanceAN(0x52000000, 0xECECEC, StringUtil.getInstance().EMPTY_STRING)
        _TRANSPARENT_BLACK = this.createInstanceAN(0x52000000, 0x000000, StringUtil.getInstance().EMPTY_STRING)
        _TRANSPARENT_RED = this.createInstanceAN(0x52000000, 0xFF0000, StringUtil.getInstance().EMPTY_STRING)
        _CLEAR_COLOR = _BLACK
        _BORDER_COLOR = _WHITE
  }

  construct new() {
    super()
    initFields_BasicColorFactory()
  }
    

    static getInstance() {
        return BasicColorFactory.instance
    }
    

    createInstance(value) {
        return BasicColor.new(BasicColorUtil.getInstance().ALPHA, value, StringUtil.getInstance().EMPTY_STRING)
    }
    

    createInstanceA(alphaValue, value) {
        return BasicColor.new(alphaValue, value, StringUtil.getInstance().EMPTY_STRING)
    }
    

    createInstanceAN(alphaValue, value, name) {
        return BasicColor.new(alphaValue, value, name)
    }
    

    createInstanceARGB(alphaValue, r, g, b, name) {
        var ALPHA_MASK = 0xFF000000
        return BasicColor.new(alphaValue, JR.i32(JR.i32(JR.i32((JR.and((JR.shl(alphaValue, 24)), ALPHA_MASK)) + (JR.and((JR.shl(r, 16)), 0x00FF0000))) + (JR.and((JR.shl(g, 8)), 0x0000FF00))) + (JR.and(b, 0x000000FF))), StringUtil.getInstance().EMPTY_STRING)
    }
}

import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./BasicColor" for BasicColor
import "./BasicColorUtil" for BasicColorUtil

