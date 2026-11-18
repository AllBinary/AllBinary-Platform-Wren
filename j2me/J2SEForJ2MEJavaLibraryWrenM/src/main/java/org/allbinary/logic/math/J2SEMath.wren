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
// package org.allbinary.logic.math

import "../../../../allbinary_java" for JObject, JException, JR

class J2SEMath is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = J2SEMath.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_J2SEMath() {
  }

  construct new() {
    super()
    initFields_J2SEMath()
  }
    

    static getInstance() {
        return J2SEMath.instance
    }
    

    round(value) {
        return (value).round
    }
    

    abs(value) {
        return (((value < 0)) ? -value : value)
    }
    

    absdouble(value) {
        return (((value < 0)) ? -value : value)
    }
}


