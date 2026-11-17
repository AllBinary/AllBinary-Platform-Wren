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

class ColorTemperatureUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ColorTemperatureUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  basicColorFactory { _basicColorFactory }
  basicColorFactory=(value) { _basicColorFactory = value }

  initFields_ColorTemperatureUtil() {
    _basicColorFactory = null
        _basicColorFactory = BasicColorFactory.getInstance()
  }

  construct new() {
    super()
    initFields_ColorTemperatureUtil()
  }
    

    static getInstance() {
        return ColorTemperatureUtil.instance
    }
    

    getBasicColor(thirdTemp) {
        var basicColor = _basicColorFactory.RED
        if ((thirdTemp > 3700)) {
            basicColor = _basicColorFactory.PURPLE
        } else if ((thirdTemp > 3200)) {
            basicColor = _basicColorFactory.BLUE
        } else if ((thirdTemp > 2700)) {
            basicColor = _basicColorFactory.PUCE
        } else if ((thirdTemp > 2200)) {
            basicColor = _basicColorFactory.WHITE
        } else if ((thirdTemp > 1700)) {
            basicColor = _basicColorFactory.GREEN
        } else if ((thirdTemp > 1200)) {
            basicColor = _basicColorFactory.YELLOW
        } else if ((thirdTemp > 700)) {
            basicColor = _basicColorFactory.ORANGE
        }
        return basicColor
    }
}

import "./BasicColorFactory" for BasicColorFactory
import "./BasicColor" for BasicColor

