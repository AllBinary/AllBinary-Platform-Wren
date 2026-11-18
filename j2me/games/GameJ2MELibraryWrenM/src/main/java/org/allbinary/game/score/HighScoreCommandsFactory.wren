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
import "./HighScoreCommandsBaseFactory" for HighScoreCommandsBaseFactory

class HighScoreCommandsFactory is HighScoreCommandsBaseFactory {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = HighScoreCommandsFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_HighScoreCommandsFactory() {
  }
    

    static getInstance() {
        return HighScoreCommandsFactory.instance
    }
    

    construct new() {
        super([HighScoreCommands.getInstance().PERSONAL, HighScoreCommands.getInstance().WORLD])
    }
}

import "../../../../javax/microedition/lcdui/Command" for Command
import "./HighScoreCommands" for HighScoreCommands

