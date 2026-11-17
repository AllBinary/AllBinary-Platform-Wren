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
// package org.allbinary.logic.math

import "../../../../allbinary_java" for JObject, JException, JR

class ScaleFactorFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ScaleFactorFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  DEFAULT_SCALE_FACTOR { _DEFAULT_SCALE_FACTOR }
  DEFAULT_SCALE_FACTOR=(value) { _DEFAULT_SCALE_FACTOR = value }
  DEFAULT_SCALE_VALUE { _DEFAULT_SCALE_VALUE }
  DEFAULT_SCALE_VALUE=(value) { _DEFAULT_SCALE_VALUE = value }

  initFields_ScaleFactorFactory() {
    _DEFAULT_SCALE_FACTOR = 0
    _DEFAULT_SCALE_VALUE = 0
        _DEFAULT_SCALE_FACTOR = 10
        _DEFAULT_SCALE_VALUE = 1024
  }

  construct new() {
    super()
    initFields_ScaleFactorFactory()
  }
    

    static getInstance() {
        return ScaleFactorFactory.instance
    }
}


