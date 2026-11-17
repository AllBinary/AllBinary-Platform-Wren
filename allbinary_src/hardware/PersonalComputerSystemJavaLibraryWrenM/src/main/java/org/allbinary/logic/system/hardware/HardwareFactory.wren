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

  initFields_HardwareFactory() {
  }
    

    static getInstance() {
        return HardwareFactory.instance
    }
    

    construct new() {
    super()
    initFields_HardwareFactory()
    }
    

    static getInstance(os) {
        var jerror0 = Fiber.new {
            var operatingSystems = OperatingSystems.getInstance()
            if ((os.getName().compareTo(operatingSystems.LINUX) == 0)) {
                return LinuxHardware.new()
            } else if ((os.getName().indexOf(operatingSystems.WINDOWS) >= 0)) {
                return WindowsHardware.new()
            }
            Fiber.abort(JR.exception("Exception", "No Hardware Imp for: " + os.getName()))
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            Fiber.abort(e)
        }
    }
}

import "../../../../../org/allbinary/logic/system/os/GenericOperatingSystem" for GenericOperatingSystem
import "../../../../../org/allbinary/logic/system/os/OperatingSystems" for OperatingSystems
import "../../../../../org/allbinary/logic/system/hardware/linux/LinuxHardware" for LinuxHardware
import "../../../../../org/allbinary/logic/system/hardware/windows/WindowsHardware" for WindowsHardware
import "./HardwareInterface" for HardwareInterface

