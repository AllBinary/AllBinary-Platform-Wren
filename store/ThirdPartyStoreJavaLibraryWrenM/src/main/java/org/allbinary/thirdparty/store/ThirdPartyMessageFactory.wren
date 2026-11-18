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
// package org.allbinary.thirdparty.store

import "../../../../allbinary_java" for JObject, JException, JR

class ThirdPartyMessageFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ThirdPartyMessageFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  AUTHORIZED { _AUTHORIZED }
  AUTHORIZED=(value) { _AUTHORIZED = value }
  NOT_AUTHORIZED { _NOT_AUTHORIZED }
  NOT_AUTHORIZED=(value) { _NOT_AUTHORIZED = value }
  LINKAGE_ERROR { _LINKAGE_ERROR }
  LINKAGE_ERROR=(value) { _LINKAGE_ERROR = value }

  initFields_ThirdPartyMessageFactory() {
    _AUTHORIZED = null
    _NOT_AUTHORIZED = null
    _LINKAGE_ERROR = null
        _AUTHORIZED = "Authorized"
        _NOT_AUTHORIZED = "Not Authorized"
        _LINKAGE_ERROR = "Linkage Error"
  }

  construct new() {
    super()
    initFields_ThirdPartyMessageFactory()
  }
    

    static getInstance() {
        return ThirdPartyMessageFactory.instance
    }
}


