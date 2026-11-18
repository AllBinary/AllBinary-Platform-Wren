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
// package org.allbinary.game.score

import "../../../../allbinary_java" for JObject, JException, JR

class HighScoreCommandsBaseFactory is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  HIGH_SCORE_COMMANDS { _HIGH_SCORE_COMMANDS }
  HIGH_SCORE_COMMANDS=(value) { _HIGH_SCORE_COMMANDS = value }

  initFields_HighScoreCommandsBaseFactory() {
    _logUtil = null
    _HIGH_SCORE_COMMANDS = null
        _logUtil = LogUtil.getInstance()
        
  }
    

    construct new(HIGH_SCORE_COMMANDS) {
    super()
    initFields_HighScoreCommandsBaseFactory()
        _HIGH_SCORE_COMMANDS = HIGH_SCORE_COMMANDS
    }
    

    isHighScoreCommand(command) {
        if (true) {
            var index = JR.i32(_HIGH_SCORE_COMMANDS.count - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            if ((command == _HIGH_SCORE_COMMANDS[index])) {
                return true
            }
            }
        }
        return false
    }
    

    getIndex(command) {
        if (true) {
            var index = JR.i32(_HIGH_SCORE_COMMANDS.count - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            if ((command == _HIGH_SCORE_COMMANDS[index])) {
                return index
            }
            }
        }
        Fiber.abort(JR.exception("Exception", "No Such Command"))
    }
}

import "../../../../javax/microedition/lcdui/Command" for Command
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil

