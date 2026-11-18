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
// package org.allbinary.game.displayable.canvas

import "../../../../../allbinary_java" for JObject, JException, JR

class CommandRunnable is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  commandFormInputProcessor { _commandFormInputProcessor }
  commandFormInputProcessor=(value) { _commandFormInputProcessor = value }
  command { _command }
  command=(value) { _command = value }

  initFields_CommandRunnable() {
    _logUtil = null
    _commonStrings = null
    _commandFormInputProcessor = null
    _command = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        
        
  }
    

    construct new(commandFormInputProcessor, command) {
    super()
    initFields_CommandRunnable()
        _commandFormInputProcessor = commandFormInputProcessor
        _command = command
    }
    

    run() {
        var jerror0 = Fiber.new {
            _logUtil.putF(_commonStrings.START_RUNNABLE, this, _commonStrings.RUN)
            var canvas = _commandFormInputProcessor.getCanvas()
            var commandListener = canvas.getCustomCommandListener()
            commandListener.commandAction(_command, canvas)
            _logUtil.putF(_commonStrings.END_RUNNABLE, this, _commonStrings.RUN)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.RUN, e)
        }
    }
}

import "../../../../../javax/microedition/lcdui/Command" for Command
import "../../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../../org/allbinary/graphics/displayable/MyCanvas" for MyCanvas
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../java/lang/Runnable" for Runnable
import "./CommandFormInputProcessor" for CommandFormInputProcessor

