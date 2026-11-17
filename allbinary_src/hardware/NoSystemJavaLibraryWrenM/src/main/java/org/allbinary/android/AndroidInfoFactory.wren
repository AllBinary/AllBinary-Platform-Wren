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
// package org.allbinary.android

import "../../../allbinary_java" for JObject, JException, JR

class AndroidInfoFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = AndroidInfoFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  version { _version }
  version=(value) { _version = value }

  initFields_AndroidInfoFactory() {
    _version = 0
        _version = 8
  }

  construct new() {
    super()
    initFields_AndroidInfoFactory()
  }
    

    static getInstance() {
        return AndroidInfoFactory.instance
    }
    

    getVersion() {
        return _version
    }
}


