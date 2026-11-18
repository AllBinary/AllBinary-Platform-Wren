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
// package org.allbinary.layer

import "../../../allbinary_java" for JObject, JException, JR
import "./LayerManagerLoggingBase" for LayerManagerLoggingBase

class LayerManagerNoDebug is LayerManagerLoggingBase {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = LayerManagerNoDebug.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_LayerManagerNoDebug() {
  }

  construct new() {
    super()
    initFields_LayerManagerNoDebug()
  }
    

    static getInstance() {
        return LayerManagerNoDebug.instance
    }
}


