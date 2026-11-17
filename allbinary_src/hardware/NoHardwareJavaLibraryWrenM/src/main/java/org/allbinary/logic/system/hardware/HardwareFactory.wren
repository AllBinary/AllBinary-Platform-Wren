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
// package org.allbinary.logic.system.hardware

import "../../../../../allbinary_java" for JObject, JException, JR

class HardwareFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = HardwareFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  SINGLETON { _SINGLETON }
  SINGLETON=(value) { _SINGLETON = value }

  initFields_HardwareFactory() {
    _SINGLETON = null
        _SINGLETON = NoHardware.getInstance()
  }
    

    static getInstance() {
        return HardwareFactory.instance
    }
    

    construct new() {
    super()
    initFields_HardwareFactory()
    }
    

    getInstance(os) {
        var jerror0 = Fiber.new {
            return _SINGLETON
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            Fiber.abort(e)
        }
    }
}

import "../../../../../org/allbinary/logic/system/os/OperatingSystemInterface" for OperatingSystemInterface
import "./NoHardware" for NoHardware
import "./HardwareInterface" for HardwareInterface

