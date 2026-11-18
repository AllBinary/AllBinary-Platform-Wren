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

class GameDifficultyOptions is CommandForm {
  meUtil { _meUtil }
  meUtil=(value) { _meUtil = value }
  list { _list }
  list=(value) { _list = value }

  initFields_GameDifficultyOptions() {
    _meUtil = null
    _list = null
        _meUtil = MIDPUtil.getInstance()
        
  }
    

    construct new(commandListener, title, list, backgrounBasicColor, foregroundBasicColor) {
        super(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        initFields_GameDifficultyOptions()
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        _list = list
        this.update()
        this.initCommands(commandListener)
        var gameDifficultyFactory = GameDifficultyFactory.getInstance()
        this.setSelectedId(gameDifficultyFactory.getLevel())
    }
    

    open() {
        super.open()
    }
    

    close() {
        super.close()
        this.save()
    }
    

    save() {
        var gameDifficultyFactory = GameDifficultyFactory.getInstance()
        gameDifficultyFactory.setLevel(this.getSelectedId())
    }
    

    initCommands(cmdListener) {
        var gameCommandsFactory = GameCommandsFactory.getInstance()
        this.removeAllCommands()
        this.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
        this.setCommandListener(cmdListener)
    }
    

    update() {
        this.deleteAll()
        this.add(_list, "Difficulty", Choice.EXCLUSIVE)
        super.update()
    }
    

    add(list, name, option) {
        var choiceGroup = this.getChoiceGroup(list, name, option)
        if ((list.size() > 0)) {
            choiceGroup.setSelectedIndex(0, true)
        }
        _meUtil.appendItem(this, choiceGroup)
    }
    

    getChoiceGroup(list, name, option) {
        var METHOD_NAME = "addChoiceGroup"
        var NAME = "Adding Choice: "
        var choiceGroup = ChoiceGroup.new(name, option, StringUtil.getInstance().getArrayInstance(), NullImage.NULL_IMAGE_ARRAY)
        var size = list.size()
        var anyType = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            anyType = list.objectArray[index]
            this.logUtil.putF(StringMaker.new().append(NAME).append(anyType.toString()).toString(), this, METHOD_NAME)
            choiceGroup.append(anyType.toString(), NullImage.NULL_IMAGE)
            }
        }
        return choiceGroup
    }
    

    setSelectedId(id) {
        var choiceGroup = this.get(0)
        choiceGroup.setSelectedIndex(id, true)
    }
    

    getSelectedId() {
        var choiceGroup = this.get(0)
        return choiceGroup.getSelectedIndex()
    }
    

    getSelectedText() {
        var choiceGroup = this.get(0)
        var value = JR.str(choiceGroup.getString(choiceGroup.getSelectedIndex())).intValue()
        return value
    }
}

import "../../../../javax/microedition/lcdui/Choice" for Choice
import "../../../../javax/microedition/lcdui/ChoiceGroup" for ChoiceGroup
import "../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../javax/microedition/lcdui/NullImage" for NullImage
import "../../../../org/allbinary/MIDPUtil" for MIDPUtil
import "../../../../org/allbinary/game/commands/GameCommandsFactory" for GameCommandsFactory
import "../../../../org/allbinary/game/configuration/persistance/GameDifficultyFactory" for GameDifficultyFactory
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../java/lang/Integer" for Integer

