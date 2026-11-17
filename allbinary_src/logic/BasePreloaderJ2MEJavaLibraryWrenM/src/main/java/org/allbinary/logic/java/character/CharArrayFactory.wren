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
// package org.allbinary.logic.java.character

import "../../../../../allbinary_java" for JObject, JException, JR

class CharArrayFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = CharArrayFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  zeroCharArray { _zeroCharArray }
  zeroCharArray=(value) { _zeroCharArray = value }

  initFields_CharArrayFactory() {
    _zeroCharArray = null
        _zeroCharArray = List.filled(0, 0)
  }

  construct new() {
    super()
    initFields_CharArrayFactory()
  }
    

    static getInstance() {
        return CharArrayFactory.instance
    }
    

    getZeroCharArray() {
        return _zeroCharArray
    }
}


