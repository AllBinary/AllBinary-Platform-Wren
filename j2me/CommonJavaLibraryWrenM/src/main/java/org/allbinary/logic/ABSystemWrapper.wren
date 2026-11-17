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

class ABSystemWrapper is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ABSystemWrapper.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_ABSystemWrapper() {
  }

  construct new() {
    super()
    initFields_ABSystemWrapper()
  }
    

    static getInstance() {
        return ABSystemWrapper.instance
    }
    

    arraycopy(src, srcPos, dest, destPos, length) {
        JR.arraycopy(src, srcPos, dest, destPos, length)
    }
    

    currentTimeMillis() {
        return JR.currentTimeMillis()
    }
}

import "../../../java/lang/System" for JSystem

