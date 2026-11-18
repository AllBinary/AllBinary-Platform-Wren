/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.graphics.displayable.screen

import "../../../../../allbinary_java" for JObject, JException, JR

class DisplayPointScalar is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = DisplayPointScalar.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_DisplayPointScalar() {
  }
    

    static getInstance() {
        return DisplayPointScalar.instance
    }
    

    construct new() {
    super()
    initFields_DisplayPointScalar()
    }
    

    processX(value) {
        return value
    }
    

    processY(value) {
        return value
    }
    

    process(point) {
        return point
    }
}

import "../../../../../org/allbinary/graphics/GPoint" for GPoint

