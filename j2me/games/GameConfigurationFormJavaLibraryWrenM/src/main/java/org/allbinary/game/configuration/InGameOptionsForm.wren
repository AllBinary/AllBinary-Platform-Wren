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
// package org.allbinary.game.configuration

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/graphics/displayable/screen/CommandForm" for CommandForm

class InGameOptionsForm is CommandForm {
    static DISPLAY {
    if (__DISPLAY_set == null) {
      __DISPLAY_set = true
      __DISPLAY = Command.new("Options In Game", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    }
    return __DISPLAY
  }
  static DISPLAY=(value) {
    __DISPLAY_set = true
    __DISPLAY = value
  }
    static SAVE {
    if (__SAVE_set == null) {
      __SAVE_set = true
      __SAVE = Command.new("Save", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    }
    return __SAVE
  }
  static SAVE=(value) {
    __SAVE_set = true
    __SAVE = value
  }
    static DEFAULT {
    if (__DEFAULT_set == null) {
      __DEFAULT_set = true
      __DEFAULT = Command.new("Default", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    }
    return __DEFAULT
  }
  static DEFAULT=(value) {
    __DEFAULT_set = true
    __DEFAULT = value
  }

  initFields_InGameOptionsForm() {
  }
    

    construct new(commandListener, title, backgrounBasicColor, foregroundBasicColor) {
        super(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        var gameFeatureFormUtil = GameFeatureFormUtil.getInstance()
        gameFeatureFormUtil.addChoiceGroup(this, InGameFeatureChoiceGroups.getExclusiveInstance().get(), Choice.EXCLUSIVE)
        gameFeatureFormUtil.addChoiceGroup(this, InGameFeatureChoiceGroups.getMultipleInstance().get(), Choice.MULTIPLE)
        this.initCommands(commandListener)
    }
    

    initCommands(cmdListener) {
        this.removeAllCommands()
        this.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS)
        this.addCommand(InGameOptionsForm.DEFAULT)
        this.setCommandListener(cmdListener)
    }
}

import "../../../../javax/microedition/lcdui/Choice" for Choice
import "../../../../javax/microedition/lcdui/Command" for Command
import "../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../org/allbinary/game/commands/GameCommandsFactory" for GameCommandsFactory
import "../../../../org/allbinary/game/configuration/feature/GameFeatureFormUtil" for GameFeatureFormUtil
import "../../../../org/allbinary/game/configuration/feature/InGameFeatureChoiceGroups" for InGameFeatureChoiceGroups
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil

