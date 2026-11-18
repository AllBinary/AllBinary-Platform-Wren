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

class HighScoreCommands is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = HighScoreCommands.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  DISPLAY { _DISPLAY }
  DISPLAY=(value) { _DISPLAY = value }
  PERSONAL { _PERSONAL }
  PERSONAL=(value) { _PERSONAL = value }
  WORLD { _WORLD }
  WORLD=(value) { _WORLD = value }

  initFields_HighScoreCommands() {
    _DISPLAY = null
    _PERSONAL = null
    _WORLD = null
        _DISPLAY = Command.new("Scores", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
        _PERSONAL = Command.new("Personal", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
        _WORLD = Command.new("World", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
  }

  construct new() {
    super()
    initFields_HighScoreCommands()
  }
    

    static getInstance() {
        return HighScoreCommands.instance
    }
}

import "../../../../javax/microedition/lcdui/Command" for Command
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil

