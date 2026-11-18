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

class LoadGameForm is CommandForm {
  meUtil { _meUtil }
  meUtil=(value) { _meUtil = value }
  areChoices { _areChoices }
  areChoices=(value) { _areChoices = value }

  initFields_LoadGameForm() {
    _meUtil = null
    _areChoices = false
        _meUtil = MIDPUtil.getInstance()
        _areChoices = false
  }
    

    construct new(commandListener, title, backgrounBasicColor, foregroundBasicColor) {
        super(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        initFields_LoadGameForm()
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        this.update()
        this.initCommands(commandListener)
    }
    

    initCommands(cmdListener) {
        var gameCommandsFactory = GameCommandsFactory.getInstance()
        this.removeAllCommands()
        this.addCommand(gameCommandsFactory.LOAD_FILE)
        this.addCommand(gameCommandsFactory.DELETE_FILE)
        this.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
        this.setCommandListener(cmdListener)
    }
    

    update() {
        var list = GamePersistanceSingleton.getInstance().getIds()
        this.deleteAll()
        if ((list.size() > 0)) {
            this.add(list, "Select A Saved Game", Choice.EXCLUSIVE)
            _areChoices = true
        } else {
            _meUtil.appendItem(this, StringItem.new("No Saved Games", StringUtil.getInstance().EMPTY_STRING, Item.PLAIN))
            _areChoices = false
        }
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
        var METHOD_NAME = "getChoiceGroup"
        var ADDING_CHOICE = "Adding Choice: "
        var choiceGroup = ChoiceGroup.new(name, option, StringUtil.getInstance().getArrayInstance(), NullImage.NULL_IMAGE_ARRAY)
        var size = list.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            var anyType = list.objectArray[index]
            this.logUtil.putF(StringMaker.new().append(ADDING_CHOICE).append(anyType.toString()).toString(), this, METHOD_NAME)
            choiceGroup.append(anyType.toString(), NullImage.NULL_IMAGE)
            }
        }
        return choiceGroup
    }
    

    getSelectedId() {
        if (_areChoices) {
            var choiceGroup = this.get(0)
            return choiceGroup.getSelectedIndex()
        } else {
            return -1
        }
    }
    

    getSelectedText() {
        if (_areChoices) {
            var choiceGroup = this.get(0)
            var value = JR.str(choiceGroup.getString(choiceGroup.getSelectedIndex())).intValue()
            return value
        } else {
            return -1
        }
    }
}

import "../../../../javax/microedition/lcdui/Choice" for Choice
import "../../../../javax/microedition/lcdui/ChoiceGroup" for ChoiceGroup
import "../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../javax/microedition/lcdui/Item" for Item
import "../../../../javax/microedition/lcdui/NullImage" for NullImage
import "../../../../javax/microedition/lcdui/StringItem" for StringItem
import "../../../../org/allbinary/MIDPUtil" for MIDPUtil
import "../../../../org/allbinary/game/commands/GameCommandsFactory" for GameCommandsFactory
import "../../../../org/allbinary/game/configuration/persistance/GamePersistanceSingleton" for GamePersistanceSingleton
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../java/lang/Integer" for Integer

