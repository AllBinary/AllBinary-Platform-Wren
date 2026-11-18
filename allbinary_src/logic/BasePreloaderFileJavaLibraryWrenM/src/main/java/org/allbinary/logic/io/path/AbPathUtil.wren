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
// package org.allbinary.logic.io.path

import "../../../../../allbinary_java" for JObject, JException, JR

class AbPathUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = AbPathUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  NO_ABPATH { _NO_ABPATH }
  NO_ABPATH=(value) { _NO_ABPATH = value }

  initFields_AbPathUtil() {
    _NO_ABPATH = null
        _NO_ABPATH = AbPath.createAbPath()
  }

  construct new() {
    super()
    initFields_AbPathUtil()
  }
    

    static getInstance() {
        return AbPathUtil.instance
    }
}

import "./AbPath" for AbPath

