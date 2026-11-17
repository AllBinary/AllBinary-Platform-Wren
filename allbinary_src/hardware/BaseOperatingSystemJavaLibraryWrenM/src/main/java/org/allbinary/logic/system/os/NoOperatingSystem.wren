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
// package org.allbinary.logic.system.os

import "../../../../../allbinary_java" for JObject, JException, JR
import "./GenericOperatingSystem" for GenericOperatingSystem

class NoOperatingSystem is GenericOperatingSystem {
    static NO_OPERATING_SYSTEM {
    if (__NO_OPERATING_SYSTEM_set == null) {
      __NO_OPERATING_SYSTEM_set = true
      __NO_OPERATING_SYSTEM = GenericOperatingSystem.new()
    }
    return __NO_OPERATING_SYSTEM
  }
  static NO_OPERATING_SYSTEM=(value) {
    __NO_OPERATING_SYSTEM_set = true
    __NO_OPERATING_SYSTEM = value
  }

  initFields_NoOperatingSystem() {
  }
    

    construct new() {
    super()
    initFields_NoOperatingSystem()
    }
}


