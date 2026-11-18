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
// package org.allbinary.midlet

import "../../../allbinary_java" for JObject, JException, JR

class MidletExitProcessorFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = MidletExitProcessorFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_MidletExitProcessorFactory() {
  }

  construct new() {
    super()
    initFields_MidletExitProcessorFactory()
  }
    

    static getInstance() {
        return MidletExitProcessorFactory.instance
    }
    

    getExitInstance(midlet) {
        if ((AppletUtil.isAppletLoader(midlet) || J2MEUtil.isJ2ME())) {
            return Processor.getInstance()
        } else {
            return MidletExitProcessor.new(midlet)
        }
    }
}

import "../../../javax/microedition/midlet/MIDlet" for MIDlet
import "../../../org/allbinary/AppletUtil" for AppletUtil
import "../../../org/allbinary/J2MEUtil" for J2MEUtil
import "../../../org/allbinary/canvas/Processor" for Processor
import "./MidletExitProcessor" for MidletExitProcessor

