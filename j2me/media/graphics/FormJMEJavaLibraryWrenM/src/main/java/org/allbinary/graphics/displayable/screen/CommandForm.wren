/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2002 AllBinary 
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
import "../../../../../javax/microedition/lcdui/Form" for Form

class CommandForm is Form {
    static NULL_COMMAND_FORM {
    if (__NULL_COMMAND_FORM_set == null) {
      __NULL_COMMAND_FORM_set = true
      __NULL_COMMAND_FORM = NullUtil.getInstance().NULL_OBJECT
    }
    return __NULL_COMMAND_FORM
  }
  static NULL_COMMAND_FORM=(value) {
    __NULL_COMMAND_FORM_set = true
    __NULL_COMMAND_FORM = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  repaintProcessor { _repaintProcessor }
  repaintProcessor=(value) { _repaintProcessor = value }
  commandStack { _commandStack }
  commandStack=(value) { _commandStack = value }

  initFields_CommandForm() {
    _logUtil = null
    _commonStrings = null
    _repaintProcessor = null
    _commandStack = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _repaintProcessor = ScreenRepaintProcessorFactory.getInstance().create(this)
        
  }
    

    static getNullCommandForm() {
        if ((CommandForm.NULL_COMMAND_FORM == NullUtil.getInstance().NULL_OBJECT)) {
            CommandForm.NULL_COMMAND_FORM = CommandForm.new(NullCommandListener.NULL_COMMAND_LISTENER, StringUtil.getInstance().EMPTY_STRING, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
        }
        return CommandForm.NULL_COMMAND_FORM
    }
    

    construct new(commandListener, formTitle, backgrounBasicColor, foregroundBasicColor) {
        super(formTitle)
        initFields_CommandForm()
        _commandStack = StdUtil.getInstance().createStack()
        var jerror0 = Fiber.new {
            _repaintProcessor.process()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.CONSTRUCTOR, e)
        }
    }
    

    initCommands(cmdListener) {
    }
    

    open() {
        _logUtil.putF(_commonStrings.START, this, "open")
    }
    

    close() {
        _logUtil.putF(_commonStrings.START, this, _commonStrings.CLOSE)
    }
    

    update() {
        _repaintProcessor.process()
    }
    

    getSourceId() {
        return 0
    }
    

    addCommand(command) {
        _commandStack.push(command)
        super.addCommand(command)
    }
    

    removeAllCommands() {
        var size = _commandStack.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            super.removeCommand(_commandStack.pop())
            }
        }
    }
}

import "../../../../../javax/microedition/lcdui/Command" for Command
import "../../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../../javax/microedition/lcdui/NullCommandListener" for NullCommandListener
import "../../../../../org/allbinary/canvas/Processor" for Processor
import "../../../../../org/allbinary/game/displayable/canvas/MenuListener" for MenuListener
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../org/allbinary/graphics/displayable/command/MyCommandInterface" for MyCommandInterface
import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../../org/allbinary/util/ABStack" for ABStack
import "./ScreenRepaintProcessorFactory" for ScreenRepaintProcessorFactory

