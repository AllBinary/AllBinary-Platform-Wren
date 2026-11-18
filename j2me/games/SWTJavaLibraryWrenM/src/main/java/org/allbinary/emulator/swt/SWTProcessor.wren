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

class SWTProcessor is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = SWTProcessor.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  runnable { _runnable }
  runnable=(value) { _runnable = value }

  initFields_SWTProcessor() {
    _runnable = null
        _runnable = NullRunnable.getInstance()
  }
    

    static getInstance() {
        return SWTProcessor.instance
    }
    

    construct new() {
    super()
    initFields_SWTProcessor()
    }
    

    process(display) {
        display.sleep()
    }
}

import "../../../../org/allbinary/thread/NullRunnable" for NullRunnable
import "../../../../org/eclipse/swt/widgets/Display" for Display
import "../../../../java/lang/Runnable" for Runnable

