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

class RectangleFactory is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = Rectangle.new(PointFactory.getInstance().ZERO_ZERO, 0, 0)
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
    static ARRAY_OF_ARRAYS {
    if (__ARRAY_OF_ARRAYS_set == null) {
      __ARRAY_OF_ARRAYS_set = true
      __ARRAY_OF_ARRAYS = JR.listOf(0, Fn.new { List.filled(0, null) })
    }
    return __ARRAY_OF_ARRAYS
  }
  static ARRAY_OF_ARRAYS=(value) {
    __ARRAY_OF_ARRAYS_set = true
    __ARRAY_OF_ARRAYS = value
  }

  initFields_RectangleFactory() {
  }

  construct new() {
    super()
    initFields_RectangleFactory()
  }
}

import "./Rectangle" for Rectangle
import "./PointFactory" for PointFactory

