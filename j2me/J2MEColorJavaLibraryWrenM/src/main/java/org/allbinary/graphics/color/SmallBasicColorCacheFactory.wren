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

class SmallBasicColorCacheFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = SmallBasicColorCacheFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  SIZE { _SIZE }
  SIZE=(value) { _SIZE = value }
  INDEX_TO_COLOR { _INDEX_TO_COLOR }
  INDEX_TO_COLOR=(value) { _INDEX_TO_COLOR = value }
  BASIC_COLOR_ARRAY { _BASIC_COLOR_ARRAY }
  BASIC_COLOR_ARRAY=(value) { _BASIC_COLOR_ARRAY = value }
  colorIndex { _colorIndex }
  colorIndex=(value) { _colorIndex = value }

  initFields_SmallBasicColorCacheFactory() {
    _SIZE = 0
    _INDEX_TO_COLOR = null
    _BASIC_COLOR_ARRAY = null
    _colorIndex = 0
        _SIZE = 255
        _INDEX_TO_COLOR = List.filled(_SIZE, 0)
        _BASIC_COLOR_ARRAY = List.filled(_SIZE, null)
        _colorIndex = 0
  }
    

    static getInstance() {
        return SmallBasicColorCacheFactory.instance
    }
    

    construct new() {
    super()
    initFields_SmallBasicColorCacheFactory()
    }
    

    add(basicDefaultColor) {
        _BASIC_COLOR_ARRAY[_colorIndex] = basicDefaultColor
        _INDEX_TO_COLOR[_colorIndex] = basicDefaultColor.intValue()
        _colorIndex = JR.i32(_colorIndex + 1)
    }
    

    getAndOrCreate(colorAsInt) {
        var basicColor = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < _SIZE))) break
            if ((_INDEX_TO_COLOR[index] == colorAsInt)) {
                return _BASIC_COLOR_ARRAY[index]
            }
            }
        }
        var ALPHA_MASK = 0xFF000000
        basicColor = BasicColorFactory.getInstance().createInstanceAN(JR.and(colorAsInt, ALPHA_MASK), JR.and(colorAsInt, 0x00FFFFFF), StringUtil.getInstance().EMPTY_STRING)
        this.add(basicColor)
        return basicColor
    }
}

import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./BasicColor" for BasicColor
import "./BasicColorFactory" for BasicColorFactory

