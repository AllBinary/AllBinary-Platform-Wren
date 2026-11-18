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
// package org.allbinary.graphics.displayable.command

import "../../../../../allbinary_java" for JObject, JException, JR

class MyCommandsFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = MyCommandsFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  NO_COMMAND { _NO_COMMAND }
  NO_COMMAND=(value) { _NO_COMMAND = value }
  GAUGE_CHANGE { _GAUGE_CHANGE }
  GAUGE_CHANGE=(value) { _GAUGE_CHANGE = value }
  SET_DISPLAYABLE { _SET_DISPLAYABLE }
  SET_DISPLAYABLE=(value) { _SET_DISPLAYABLE = value }
  PAUSE_COMMAND { _PAUSE_COMMAND }
  PAUSE_COMMAND=(value) { _PAUSE_COMMAND = value }
  RESUME_COMMAND { _RESUME_COMMAND }
  RESUME_COMMAND=(value) { _RESUME_COMMAND = value }

  initFields_MyCommandsFactory() {
    _NO_COMMAND = null
    _GAUGE_CHANGE = null
    _SET_DISPLAYABLE = null
    _PAUSE_COMMAND = null
    _RESUME_COMMAND = null
        _NO_COMMAND = Command.new(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING, -1, -1)
        _GAUGE_CHANGE = Command.new("GAUGE_CHANGE", StringUtil.getInstance().EMPTY_STRING, Command.ITEM, 1)
        _SET_DISPLAYABLE = Command.new("Display", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2)
        _PAUSE_COMMAND = Command.new("Pause", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 0)
        _RESUME_COMMAND = Command.new("Resume", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 0)
  }
    

    static getInstance() {
        return MyCommandsFactory.instance
    }
    

    construct new() {
    super()
    initFields_MyCommandsFactory()
    }
}

import "../../../../../javax/microedition/lcdui/Command" for Command
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil

