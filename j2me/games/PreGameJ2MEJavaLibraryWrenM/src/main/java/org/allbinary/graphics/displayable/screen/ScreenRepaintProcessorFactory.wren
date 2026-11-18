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
// package org.allbinary.graphics.displayable.screen

import "../../../../../allbinary_java" for JObject, JException, JR

class ScreenRepaintProcessorFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ScreenRepaintProcessorFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_ScreenRepaintProcessorFactory() {
  }
    

    static getInstance() {
        return ScreenRepaintProcessorFactory.instance
    }
    

    construct new() {
    super()
    initFields_ScreenRepaintProcessorFactory()
    }
    

    create(displayable) {
        if (!J2MEUtil.isJ2ME()) {
            return ScreenRepaintProcessor.new(displayable)
        } else {
            return Processor.getInstance()
        }
    }
}

import "../../../../../javax/microedition/lcdui/Displayable" for Displayable
import "../../../../../org/allbinary/J2MEUtil" for J2MEUtil
import "../../../../../org/allbinary/canvas/Processor" for Processor
import "./ScreenRepaintProcessor" for ScreenRepaintProcessor

