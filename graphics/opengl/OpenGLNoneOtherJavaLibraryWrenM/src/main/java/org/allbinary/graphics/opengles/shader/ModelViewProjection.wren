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
// package org.allbinary.graphics.opengles.shader

import "../../../../../allbinary_java" for JObject, JException, JR

class ModelViewProjection is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ModelViewProjection.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_ModelViewProjection() {
  }

  construct new() {
    super()
    initFields_ModelViewProjection()
  }
    

    static getInstance() {
        return ModelViewProjection.instance
    }
    

    get() {
        return NullUtil.getInstance().NULL_FLOAT_ARRAY
    }
}

import "../../../../../org/allbinary/logic/NullUtil" for NullUtil

