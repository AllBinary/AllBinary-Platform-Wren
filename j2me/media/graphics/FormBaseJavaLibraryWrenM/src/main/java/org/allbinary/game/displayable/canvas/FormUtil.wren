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
// package org.allbinary.game.displayable.canvas

import "../../../../../allbinary_java" for JObject, JException, JR

class FormUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = FormUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_FormUtil() {
  }

  construct new() {
    super()
    initFields_FormUtil()
  }
    

    static getInstance() {
        return FormUtil.instance
    }
    

    createFormRectangle() {
        var displayInfo = DisplayInfoSingleton.getInstance()
        var pointFactory = PointFactory.getInstance()
        var rectangle = Rectangle.new(pointFactory.createXY(30, 10), (displayInfo.getLastWidth() - 30), (displayInfo.getLastHeight() - 35))
        return rectangle
    }
}

import "../../../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton

