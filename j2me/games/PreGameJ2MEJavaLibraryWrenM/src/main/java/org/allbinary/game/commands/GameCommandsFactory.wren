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
// package org.allbinary.game.commands

import "../../../../allbinary_java" for JObject, JException, JR

class GameCommandsFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = NullUtil.getInstance().NULL_OBJECT
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  TOGGLE_FULLSCREEN { _TOGGLE_FULLSCREEN }
  TOGGLE_FULLSCREEN=(value) { _TOGGLE_FULLSCREEN = value }
  TOGGLE_KEYBOARD { _TOGGLE_KEYBOARD }
  TOGGLE_KEYBOARD=(value) { _TOGGLE_KEYBOARD = value }
  SET_MENU_DISPLAYABLE { _SET_MENU_DISPLAYABLE }
  SET_MENU_DISPLAYABLE=(value) { _SET_MENU_DISPLAYABLE = value }
  APPLICATION_UPDATE { _APPLICATION_UPDATE }
  APPLICATION_UPDATE=(value) { _APPLICATION_UPDATE = value }
  DISPLAY_ABOUT { _DISPLAY_ABOUT }
  DISPLAY_ABOUT=(value) { _DISPLAY_ABOUT = value }
  OPEN_WEB_URL { _OPEN_WEB_URL }
  OPEN_WEB_URL=(value) { _OPEN_WEB_URL = value }
  CLOSE_OPTIONS { _CLOSE_OPTIONS }
  CLOSE_OPTIONS=(value) { _CLOSE_OPTIONS = value }
  DISPLAY_OPTIONS { _DISPLAY_OPTIONS }
  DISPLAY_OPTIONS=(value) { _DISPLAY_OPTIONS = value }
  START_TRACE { _START_TRACE }
  START_TRACE=(value) { _START_TRACE = value }
  STOP_TRACE { _STOP_TRACE }
  STOP_TRACE=(value) { _STOP_TRACE = value }
  DEFAULT_OPTIONS { _DEFAULT_OPTIONS }
  DEFAULT_OPTIONS=(value) { _DEFAULT_OPTIONS = value }
  SHOW_GAME_CANVAS { _SHOW_GAME_CANVAS }
  SHOW_GAME_CANVAS=(value) { _SHOW_GAME_CANVAS = value }
  CLOSE_AND_SHOW_GAME_CANVAS { _CLOSE_AND_SHOW_GAME_CANVAS }
  CLOSE_AND_SHOW_GAME_CANVAS=(value) { _CLOSE_AND_SHOW_GAME_CANVAS = value }
  QUIT_COMMAND { _QUIT_COMMAND }
  QUIT_COMMAND=(value) { _QUIT_COMMAND = value }
  RESTART_COMMAND { _RESTART_COMMAND }
  RESTART_COMMAND=(value) { _RESTART_COMMAND = value }
  DISPLAY_SAVE_FORM { _DISPLAY_SAVE_FORM }
  DISPLAY_SAVE_FORM=(value) { _DISPLAY_SAVE_FORM = value }
  SAVE { _SAVE }
  SAVE=(value) { _SAVE = value }
  DISPLAY_LOAD_FORM { _DISPLAY_LOAD_FORM }
  DISPLAY_LOAD_FORM=(value) { _DISPLAY_LOAD_FORM = value }
  LOAD_FILE { _LOAD_FILE }
  LOAD_FILE=(value) { _LOAD_FILE = value }
  DELETE_FILE { _DELETE_FILE }
  DELETE_FILE=(value) { _DELETE_FILE = value }
  EXIT_COMMAND { _EXIT_COMMAND }
  EXIT_COMMAND=(value) { _EXIT_COMMAND = value }
  EXIT_WITHOUT_PROGRESS_COMMAND { _EXIT_WITHOUT_PROGRESS_COMMAND }
  EXIT_WITHOUT_PROGRESS_COMMAND=(value) { _EXIT_WITHOUT_PROGRESS_COMMAND = value }
  START_COMMAND { _START_COMMAND }
  START_COMMAND=(value) { _START_COMMAND = value }
  CONTINUE_COMMAND { _CONTINUE_COMMAND }
  CONTINUE_COMMAND=(value) { _CONTINUE_COMMAND = value }
  SELECT_COMMAND { _SELECT_COMMAND }
  SELECT_COMMAND=(value) { _SELECT_COMMAND = value }
  FEATURE_UPDATE { _FEATURE_UPDATE }
  FEATURE_UPDATE=(value) { _FEATURE_UPDATE = value }
  BUY_COMMAND { _BUY_COMMAND }
  BUY_COMMAND=(value) { _BUY_COMMAND = value }

  initFields_GameCommandsFactory() {
    _TOGGLE_FULLSCREEN = null
    _TOGGLE_KEYBOARD = null
    _SET_MENU_DISPLAYABLE = null
    _APPLICATION_UPDATE = null
    _DISPLAY_ABOUT = null
    _OPEN_WEB_URL = null
    _CLOSE_OPTIONS = null
    _DISPLAY_OPTIONS = null
    _START_TRACE = null
    _STOP_TRACE = null
    _DEFAULT_OPTIONS = null
    _SHOW_GAME_CANVAS = null
    _CLOSE_AND_SHOW_GAME_CANVAS = null
    _QUIT_COMMAND = null
    _RESTART_COMMAND = null
    _DISPLAY_SAVE_FORM = null
    _SAVE = null
    _DISPLAY_LOAD_FORM = null
    _LOAD_FILE = null
    _DELETE_FILE = null
    _EXIT_COMMAND = null
    _EXIT_WITHOUT_PROGRESS_COMMAND = null
    _START_COMMAND = null
    _CONTINUE_COMMAND = null
    _SELECT_COMMAND = null
    _FEATURE_UPDATE = null
    _BUY_COMMAND = null
        _TOGGLE_FULLSCREEN = Command.new("Toggle FullScreen", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
        _TOGGLE_KEYBOARD = Command.new("Keyboard", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
        _SET_MENU_DISPLAYABLE = Command.new("Set Menu Displayable", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
        _APPLICATION_UPDATE = Command.new(CommonStrings.getInstance().UPDATE, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
        _DISPLAY_ABOUT = Command.new(CanvasStrings.getInstance().ABOUT, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2)
        _OPEN_WEB_URL = Command.new("Open Web URL", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2)
        _CLOSE_OPTIONS = Command.new("Back", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
        _DISPLAY_OPTIONS = Command.new(CanvasStrings.getInstance().OPTIONS, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2)
        _START_TRACE = Command.new("Start Trace", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
        _STOP_TRACE = Command.new("Stop Trace", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
        _DEFAULT_OPTIONS = Command.new("Default", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
        _SHOW_GAME_CANVAS = Command.new("Back to Game", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
        _CLOSE_AND_SHOW_GAME_CANVAS = Command.new("Back", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
        _QUIT_COMMAND = Command.new("Quit", StringUtil.getInstance().EMPTY_STRING, Command.STOP, 1)
        _RESTART_COMMAND = Command.new("Restart", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 0)
        _DISPLAY_SAVE_FORM = Command.new("Save To", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3)
        _SAVE = Command.new("Save", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3)
        _DISPLAY_LOAD_FORM = Command.new("Load", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3)
        _LOAD_FILE = Command.new("Load File", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3)
        _DELETE_FILE = Command.new("Delete File", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
        _EXIT_COMMAND = Command.new("Exit", StringUtil.getInstance().EMPTY_STRING, Command.EXIT, 2)
        _EXIT_WITHOUT_PROGRESS_COMMAND = Command.new("Exit Without Progress", StringUtil.getInstance().EMPTY_STRING, Command.EXIT, 2)
        _START_COMMAND = Command.new(CommonStrings.getInstance().START, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
        _CONTINUE_COMMAND = Command.new("Continue", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
        _SELECT_COMMAND = Command.new("Select", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
        _FEATURE_UPDATE = Command.new("Feature Update", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
        _BUY_COMMAND = Command.new("BUY", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
  }
    

    static getInstance() {
        if ((GameCommandsFactory.instance == NullUtil.getInstance().NULL_OBJECT)) {
            GameCommandsFactory.instance = GameCommandsFactory.new()
        }
        return GameCommandsFactory.instance
    }
    

    construct new() {
    super()
    initFields_GameCommandsFactory()
    }
}

import "../../../../javax/microedition/lcdui/Command" for Command
import "../../../../org/allbinary/graphics/displayable/CanvasStrings" for CanvasStrings
import "../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings

