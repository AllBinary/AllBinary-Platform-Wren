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
import "./SWTProcessor" for SWTProcessor

class SWTRunnableProcessor is SWTProcessor {
    static instanceR {
    if (__instanceR_set == null) {
      __instanceR_set = true
      __instanceR = SWTRunnableProcessor.new()
    }
    return __instanceR
  }
  static instanceR=(value) {
    __instanceR_set = true
    __instanceR = value
  }

  initFields_SWTRunnableProcessor() {
  }
    

    static getInstance() {
        return SWTRunnableProcessor.instanceR
    }
    

    construct new() {
    super()
    initFields_SWTRunnableProcessor()
    }
    

    process(display) {
        this.runnable.run()
    }
}

import "../../../../org/eclipse/swt/widgets/Display" for Display

