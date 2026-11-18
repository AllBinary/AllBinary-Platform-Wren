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
// package org.allbinary.media

import "../../../allbinary_java" for JObject, JException, JR

class ScaleProperties is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ScaleProperties.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  scaleX { _scaleX }
  scaleX=(value) { _scaleX = value }
  scaleY { _scaleY }
  scaleY=(value) { _scaleY = value }
  scaleWidth { _scaleWidth }
  scaleWidth=(value) { _scaleWidth = value }
  scaleHeight { _scaleHeight }
  scaleHeight=(value) { _scaleHeight = value }
  shouldScale { _shouldScale }
  shouldScale=(value) { _shouldScale = value }

  initFields_ScaleProperties() {
    _scaleX = 0.0
    _scaleY = 0.0
    _scaleWidth = 0
    _scaleHeight = 0
    _shouldScale = false
        _scaleX = 1.0
        _scaleY = 1.0
        _scaleWidth = 0
        _scaleHeight = 0
        _shouldScale = false
  }

  construct new() {
    super()
    initFields_ScaleProperties()
  }
    

    toString() {
        return StringMaker.new().append(CommonLabels.getInstance().COLON_SEP).appendboolean(_shouldScale).append("scaleX: ").appendfloat(_scaleX).append("scaleY: ").appendfloat(_scaleY).append("scaleWidth: ").appendint(_scaleWidth).append("scaleHeight: ").appendint(_scaleHeight).toString()
    }
}

import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/string/CommonLabels" for CommonLabels

