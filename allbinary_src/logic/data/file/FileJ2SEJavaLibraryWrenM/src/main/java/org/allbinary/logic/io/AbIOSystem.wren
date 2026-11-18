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
// package org.allbinary.logic.io

import "../../../../allbinary_java" for JObject, JException, JR

class AbIOSystem is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = AbIOSystem.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  type { _type }
  type=(value) { _type = value }

  initFields_AbIOSystem() {
    _type = null
        _type = "java.io"
  }

  construct new() {
    super()
    initFields_AbIOSystem()
  }
    

    static getInstance() {
        return AbIOSystem.instance
    }
    

    getType() {
        return _type
    }
    

    isType(type) {
        if ((JR.compareTo(_type, type) == 0)) {
            return true
        } else {
            return false
        }
    }
}


