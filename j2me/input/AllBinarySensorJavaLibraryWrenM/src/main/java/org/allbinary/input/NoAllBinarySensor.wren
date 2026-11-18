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
// package org.allbinary.input

import "../../../allbinary_java" for JObject, JException, JR
import "./AllBinarySensor" for AllBinarySensor

class NoAllBinarySensor is AllBinarySensor {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = NoAllBinarySensor.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_NoAllBinarySensor() {
  }
    

    static getInstance() {
        return NoAllBinarySensor.instance
    }
    

    construct new() {
    super()
    initFields_NoAllBinarySensor()
    }
}


