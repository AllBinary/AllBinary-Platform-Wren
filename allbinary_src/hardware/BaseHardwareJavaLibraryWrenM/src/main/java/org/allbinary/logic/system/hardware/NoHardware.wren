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

class NoHardware is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = NoHardware.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_NoHardware() {
  }

  construct new() {
    super()
    initFields_NoHardware()
  }
    

    static getInstance() {
        return NoHardware.instance
    }
    

    getComponent(index) {
        return NoHardwareComponent.getInstance()
    }
    

    toString() {
        return "No Hardware"
    }
    

    compareTo(hardwareInterface) {
        return true
    }
    

    difference(hardwareInterface) {
        return StdUtil.getInstance().NULL_TABLE
    }
}

import "../../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../../org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface" for HardwareComponentInterface
import "../../../../../org/allbinary/logic/system/hardware/components/interfaces/NoHardwareComponent" for NoHardwareComponent
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "./HardwareInterface" for HardwareInterface

