/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2022 AllBinary
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

class AboutCommandProcessor is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = AboutCommandProcessor.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_AboutCommandProcessor() {
  }

  construct new() {
    super()
    initFields_AboutCommandProcessor()
  }
    

    static getInstance() {
        return AboutCommandProcessor.instance
    }
    

    process(midletCommandListener, command, canvas) {
        midletCommandListener.commandAction(command, canvas)
    }
}

import "../../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../../javax/microedition/lcdui/Command" for Command
import "../../../../../javax/microedition/lcdui/CommandListener" for CommandListener

