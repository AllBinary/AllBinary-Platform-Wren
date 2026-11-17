/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
// package org.allbinary.logic

import "../../../allbinary_java" for JObject, JException, JR

class VectorUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = VectorUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_VectorUtil() {
  }

  construct new() {
    super()
    initFields_VectorUtil()
  }
    

    static getInstance() {
        return VectorUtil.instance
    }
    

    getSize(anyType) {
        var vector = anyType
        return vector.size()
    }
    

    elementAt(anyType, index) {
        var vector = anyType
        return vector.elementAt(index)
    }
}

import "../../../java/util/Vector" for Vector

