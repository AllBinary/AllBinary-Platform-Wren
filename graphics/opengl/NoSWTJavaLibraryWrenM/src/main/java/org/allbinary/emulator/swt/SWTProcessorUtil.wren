/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.emulator.swt

import "../../../../allbinary_java" for JObject, JException, JR

class SWTProcessorUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = SWTProcessorUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  swtProcessor { _swtProcessor }
  swtProcessor=(value) { _swtProcessor = value }

  initFields_SWTProcessorUtil() {
    _swtProcessor = null
        _swtProcessor = SWTProcessor.getInstance()
  }

  construct new() {
    super()
    initFields_SWTProcessorUtil()
  }
    

    static getInstance() {
        return SWTProcessorUtil.instance
    }
}

import "./SWTProcessor" for SWTProcessor

