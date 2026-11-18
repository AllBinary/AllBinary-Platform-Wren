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
// package org.allbinary.game.score.displayable

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/graphics/form/item/CustomTextBox" for CustomTextBox

class HighScoreTextBox is CustomTextBox {
  virtualKeyboardEventHandler { _virtualKeyboardEventHandler }
  virtualKeyboardEventHandler=(value) { _virtualKeyboardEventHandler = value }
  highScoreUtil { _highScoreUtil }
  highScoreUtil=(value) { _highScoreUtil = value }
  pleaseWait { _pleaseWait }
  pleaseWait=(value) { _pleaseWait = value }
  paintable { _paintable }
  paintable=(value) { _paintable = value }
  submitted { _submitted }
  submitted=(value) { _submitted = value }

  initFields_HighScoreTextBox() {
    _virtualKeyboardEventHandler = null
    _highScoreUtil = null
    _pleaseWait = null
    _paintable = null
    _submitted = false
        _virtualKeyboardEventHandler = VirtualKeyboardEventHandler.getInstance()
        
        _pleaseWait = SimpleTextPaintable.new(this.commonStrings.PLEASE_WAIT, BasicColorFactory.getInstance().WHITE)
        _paintable = NullPaintable.getInstance()
        _submitted = false
  }
    

    construct new(highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore, backgrounBasicColor, foregroundBasicColor) {
        super(cmdListener, "New High Score Enter Name:", name, 12, TextField.ANY, Font.getDefaultFont(), backgrounBasicColor, foregroundBasicColor)
        initFields_HighScoreTextBox()
        _highScoreUtil = HighScoreUtil.new(highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore)
        var operatingSystemInterface = OperatingSystemFactory.getInstance().getOperatingSystemInstance()
        if (operatingSystemInterface.isOverScan()) {
            var username = InApplicationPurchaseFactory.getInstance().getUserName()
            this.getTextFieldItem().setString(username)
        }
    }
    

    initCommands(cmdListener) {
        this.removeAllCommands()
        PostGameCommandFactory.getInstance().addCommands(this)
        this.addCommand(HighScoreUtil.SUBMIT_TEXTBOX_COMMAND)
        this.setCommandListener(cmdListener)
    }
    

    open() {
        _virtualKeyboardEventHandler.open()
        _paintable = NullPaintable.getInstance()
        super.open()
    }
    

    close() {
        _virtualKeyboardEventHandler.close()
        _paintable = _pleaseWait
        this.repaintBehavior.onChangeRepaint(this)
        super.close()
        this.removeCommand(HighScoreUtil.SUBMIT_TEXTBOX_COMMAND)
        this.update()
        if (_submitted) {
            _highScoreUtil.saveHighScore()
        } else {
        }
        _paintable = NullPaintable.getInstance()
        this.repaintBehavior.onChangeRepaint(this)
    }
    

    update() {
        var name = this.getTextFieldItem().getString()
        _highScoreUtil.update(name)
        super.update()
    }
    

    paint(graphics) {
        super.paint(graphics)
        _paintable.paint(graphics)
    }
    

    saveHighScore() {
        _highScoreUtil.saveHighScore()
    }
    

    submit() {
        _highScoreUtil.submit(this)
    }
}

import "../../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../../javax/microedition/lcdui/Font" for Font
import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../javax/microedition/lcdui/TextField" for TextField
import "../../../../../org/allbinary/PostGameCommandFactory" for PostGameCommandFactory
import "../../../../../org/allbinary/game/GameInfo" for GameInfo
import "../../../../../org/allbinary/game/score/HighScore" for HighScore
import "../../../../../org/allbinary/game/score/HighScoresHelperBaseInterface" for HighScoresHelperBaseInterface
import "../../../../../org/allbinary/game/score/HighScoresFactoryInterface" for HighScoresFactoryInterface
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../org/allbinary/graphics/paint/NullPaintable" for NullPaintable
import "../../../../../org/allbinary/graphics/paint/Paintable" for Paintable
import "../../../../../org/allbinary/graphics/paint/SimpleTextPaintable" for SimpleTextPaintable
import "../../../../../org/allbinary/input/event/VirtualKeyboardEventHandler" for VirtualKeyboardEventHandler
import "../../../../../org/allbinary/logic/system/os/GenericOperatingSystem" for GenericOperatingSystem
import "../../../../../org/allbinary/logic/system/os/OperatingSystemFactory" for OperatingSystemFactory
import "../../../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface
import "../../../../../org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory" for InApplicationPurchaseFactory
import "./HighScoreUtil" for HighScoreUtil

