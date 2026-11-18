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
import "../../../org/allbinary/canvas/Processor" for Processor

class MidletExitProcessor is Processor {
  midlet { _midlet }
  midlet=(value) { _midlet = value }

  initFields_MidletExitProcessor() {
    _midlet = null
        
  }
    

    construct new(midlet) {
    super()
    initFields_MidletExitProcessor()
        _midlet = midlet
    }
    

    process() {
        JSystem.exit(0)
    }
}

import "../../../javax/microedition/midlet/MIDlet" for MIDlet
import "../../../java/lang/System" for JSystem

