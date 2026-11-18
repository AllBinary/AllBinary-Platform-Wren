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
// package org.allbinary.logic.system.security.licensing

import "../../../../../../allbinary_java" for JObject, JException, JR

class LockableFeatureFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = LockableFeatureFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  list { _list }
  list=(value) { _list = value }

  initFields_LockableFeatureFactory() {
    _list = null
        _list = BasicArrayListD.new()
  }

  construct new() {
    super()
    initFields_LockableFeatureFactory()
  }
    

    static getInstance() {
        return LockableFeatureFactory.instance
    }
    

    getList() {
        return _list
    }
}

import "../../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD

