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
import "../../../../../org/allbinary/logic/util/visitor/Visitor" for Visitor

class LimitCommandsVisitor is Visitor {
  isNotSmallDisplay { _isNotSmallDisplay }
  isNotSmallDisplay=(value) { _isNotSmallDisplay = value }

  initFields_LimitCommandsVisitor() {
    _isNotSmallDisplay = false
        
  }
    

    construct new() {
    super()
    initFields_LimitCommandsVisitor()
        var displayInfo = DisplayInfoSingleton.getInstance()
        _isNotSmallDisplay = (((displayInfo.isPortrait() && (displayInfo.getLastHeight() > ScreenInfo.getInstance().SMALL_WIDTH))) || ((!displayInfo.isPortrait() && (displayInfo.getLastHeight() > ScreenInfo.getInstance().SMALL_HEIGHT))))
    }
    

    visit(anyType) {
        var command = anyType
        var booleanFactory = BooleanFactory.getInstance()
        if ((((_isNotSmallDisplay || (command.getPriority() == 1)) || (command == GameCommandsFactory.getInstance().EXIT_COMMAND)) || (command == GameCommandsFactory.getInstance().EXIT_WITHOUT_PROGRESS_COMMAND))) {
            return booleanFactory.TRUE
        } else {
            return booleanFactory.FALSE
        }
    }
}

import "../../../../../javax/microedition/lcdui/Command" for Command
import "../../../../../org/allbinary/game/commands/GameCommandsFactory" for GameCommandsFactory
import "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../../org/allbinary/graphics/form/ScreenInfo" for ScreenInfo
import "../../../../../org/allbinary/logic/java/bool/BooleanFactory" for BooleanFactory

