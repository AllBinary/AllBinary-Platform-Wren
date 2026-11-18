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

class SaveGameForm is CommandForm {
    static FORM {
    if (__FORM_set == null) {
      __FORM_set = true
      __FORM = CommandForm.getNullCommandForm()
    }
    return __FORM
  }
  static FORM=(value) {
    __FORM_set = true
    __FORM = value
  }
  meUtil { _meUtil }
  meUtil=(value) { _meUtil = value }

  initFields_SaveGameForm() {
    _meUtil = null
        _meUtil = MIDPUtil.getInstance()
  }
    

    static createForm(commandListener, title, backgrounBasicColor, foregroundBasicColor) {
        SaveGameForm.FORM = SaveGameForm.new(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        return SaveGameForm.FORM
    }
    

    static getInstance() {
        return SaveGameForm.FORM
    }
    

    construct new(commandListener, title, backgrounBasicColor, foregroundBasicColor) {
        super(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        initFields_SaveGameForm()
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        var timeString = JR.str(ABSystemWrapper.getInstance().currentTimeMillis())
        _meUtil.appendItem(this, TextField.new("Name: ", timeString, 30, TextField.ANY))
        this.initCommands(commandListener)
    }
    

    initCommands(cmdListener) {
        var gameCommandsFactory = GameCommandsFactory.getInstance()
        this.removeAllCommands()
        this.addCommand(gameCommandsFactory.SAVE)
        this.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
        this.setCommandListener(cmdListener)
    }
}

import "../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../javax/microedition/lcdui/TextField" for TextField
import "../../../../org/allbinary/MIDPUtil" for MIDPUtil
import "../../../../org/allbinary/game/commands/GameCommandsFactory" for GameCommandsFactory
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/logic/ABSystemWrapper" for ABSystemWrapper
import "../../../../java/lang/Long" for Long

