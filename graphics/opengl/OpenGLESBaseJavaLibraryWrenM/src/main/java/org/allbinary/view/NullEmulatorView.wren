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
// package org.allbinary.view

import "../../../allbinary_java" for JObject, JException, JR

class NullEmulatorView is JObject {
    static NULL_EMULATOR_VIEW {
    if (__NULL_EMULATOR_VIEW_set == null) {
      __NULL_EMULATOR_VIEW_set = true
      __NULL_EMULATOR_VIEW = NullEmulatorView.new()
    }
    return __NULL_EMULATOR_VIEW
  }
  static NULL_EMULATOR_VIEW=(value) {
    __NULL_EMULATOR_VIEW_set = true
    __NULL_EMULATOR_VIEW = value
  }

  initFields_NullEmulatorView() {
  }

  construct new() {
    super()
    initFields_NullEmulatorView()
  }
    

    setMidlet(midlet) {
    }
    

    onEmulatorInitComplete(midletActivity) {
    }
    

    onSetDisplayable(displayable) {
    }
}

import "../../../javax/microedition/lcdui/Displayable" for Displayable
import "../../../javax/microedition/midlet/MIDlet" for MIDlet
import "./EmulatorViewInterface" for EmulatorViewInterface

