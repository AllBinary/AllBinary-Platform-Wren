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
import "../../../../../org/allbinary/canvas/Processor" for Processor

class ScreenRepaintProcessor is Processor {
  displayable { _displayable }
  displayable=(value) { _displayable = value }

  initFields_ScreenRepaintProcessor() {
    _displayable = null
        
  }
    

    construct new(displayable) {
    super()
    initFields_ScreenRepaintProcessor()
        _displayable = displayable
    }
    

    process() {
        ScreenRepaintUtil.repaint(_displayable)
    }
}

import "../../../../../javax/microedition/lcdui/Displayable" for Displayable
import "./ScreenRepaintUtil" for ScreenRepaintUtil

