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
// package org.allbinary.logic.io.path

import "../../../../../allbinary_java" for JObject, JException, JR

class AbPathData is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = AbPathData.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  EXTENSION_SEP { _EXTENSION_SEP }
  EXTENSION_SEP=(value) { _EXTENSION_SEP = value }
  SEPARATORCHAR { _SEPARATORCHAR }
  SEPARATORCHAR=(value) { _SEPARATORCHAR = value }
  SEPARATOR { _SEPARATOR }
  SEPARATOR=(value) { _SEPARATOR = value }

  initFields_AbPathData() {
    _EXTENSION_SEP = null
    _SEPARATORCHAR = 0
    _SEPARATOR = null
        _EXTENSION_SEP = CommonSeps.getInstance().PERIOD
        _SEPARATORCHAR = "/".bytes[0]
        _SEPARATOR = CommonSeps.getInstance().FORWARD_SLASH
  }
    

    static getInstance() {
        return AbPathData.instance
    }
    

    construct new() {
    super()
    initFields_AbPathData()
    }
}

import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps

