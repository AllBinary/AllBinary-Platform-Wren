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
// package org.allbinary.input.motion.button

import "../../../../../allbinary_java" for JObject, JException, JR

class CommonButtons is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = CommonButtons.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  STANDARD_BUTTON_SIZE { _STANDARD_BUTTON_SIZE }
  STANDARD_BUTTON_SIZE=(value) { _STANDARD_BUTTON_SIZE = value }
  NORMAL_BUTTON { _NORMAL_BUTTON }
  NORMAL_BUTTON=(value) { _NORMAL_BUTTON = value }
  LARGE_BUTTON { _LARGE_BUTTON }
  LARGE_BUTTON=(value) { _LARGE_BUTTON = value }

  initFields_CommonButtons() {
    _STANDARD_BUTTON_SIZE = 0
    _NORMAL_BUTTON = null
    _LARGE_BUTTON = null
        
        
        
  }
    

    static getInstance() {
        return CommonButtons.instance
    }
    

    construct new() {
    super()
    initFields_CommonButtons()
        var displayInfo = DisplayInfoSingleton.getInstance()
        var commonButtonSize = 128
        while ((commonButtonSize > 64)) {
            var totalColumns = (displayInfo.getLastWidth() / commonButtonSize)
            var totalRows = (displayInfo.getLastHeight() / commonButtonSize)
            var max = totalColumns
            if ((totalRows > max)) {
                max = totalRows
            }
            if ((max > 9)) {
                break
            }
            commonButtonSize = JR.shr(commonButtonSize, 1)
        }
        _STANDARD_BUTTON_SIZE = commonButtonSize
        _NORMAL_BUTTON = Rectangle.new(PointFactory.getInstance().ZERO_ZERO, _STANDARD_BUTTON_SIZE, _STANDARD_BUTTON_SIZE)
        _LARGE_BUTTON = Rectangle.new(PointFactory.getInstance().ZERO_ZERO, JR.shl(_STANDARD_BUTTON_SIZE, 1), JR.shl(_STANDARD_BUTTON_SIZE, 1))
    }
}

import "../../../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton

