/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.logic.system.hardware.components.interfaces

import "../../../../../../../allbinary_java" for JObject, JException, JR

class NoHardwareComponent is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = NoHardwareComponent.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_NoHardwareComponent() {
  }

  construct new() {
    super()
    initFields_NoHardwareComponent()
  }
    

    static getInstance() {
        return NoHardwareComponent.instance
    }
    

    compareTo(componentInterface) {
        if ((this == componentInterface)) {
            return true
        }
        return false
    }
    

    toString() {
        return StringUtil.getInstance().NULL_STRING
    }
}

import "../../../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./HardwareComponentInterface" for HardwareComponentInterface

