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
// package org.allbinary.graphics.form.item

import "../../../../../allbinary_java" for JObject, JException, JR
import "./ABTextItem" for ABTextItem

class CommandTextItem is ABTextItem {
  command { _command }
  command=(value) { _command = value }

  initFields_CommandTextItem() {
    _command = null
        
  }
    

    construct new(command, layout, altText, backgroundBasicColor, foregroundBasicColor) {
        super(command.getLabel(), layout, altText, backgroundBasicColor, foregroundBasicColor)
        initFields_CommandTextItem()
        _command = command
    }
    

    isFocusable() {
        return true
    }
    

    getCommand() {
        return _command
    }
}

import "../../../../../javax/microedition/lcdui/Command" for Command
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor

