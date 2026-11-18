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
// package org.allbinary.game.paint

import "../../../../allbinary_java" for JObject, JException, JR

class ColorFillPaintableFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ColorFillPaintableFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_ColorFillPaintableFactory() {
  }

  construct new() {
    super()
    initFields_ColorFillPaintableFactory()
  }
    

    static getInstance() {
        return ColorFillPaintableFactory.instance
    }
    

    getInstance(basicColor, forThreedCanvas) {
        var operatingSystem = OperatingSystemFactory.getInstance().getOperatingSystemInstance()
        if (operatingSystem.isOverScan()) {
            return OverScanColorFillPaintable.new(basicColor)
        } else {
            return ColorFillPaintable.new(basicColor)
        }
    }
}

import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/logic/system/os/GenericOperatingSystem" for GenericOperatingSystem
import "../../../../org/allbinary/logic/system/os/OperatingSystemFactory" for OperatingSystemFactory
import "./ColorFillPaintable" for ColorFillPaintable
import "./OverScanColorFillPaintable" for OverScanColorFillPaintable
import "./ColorFillBasePaintable" for ColorFillBasePaintable

