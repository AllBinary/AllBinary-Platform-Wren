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
// package org.allbinary.game.input.event

import "../../../../../allbinary_java" for JObject, JException, JR

class GameKeyEventHandler is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GameKeyEventHandler.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  pressGameKeyEventHandler { _pressGameKeyEventHandler }
  pressGameKeyEventHandler=(value) { _pressGameKeyEventHandler = value }
  upGameKeyEventHandler { _upGameKeyEventHandler }
  upGameKeyEventHandler=(value) { _upGameKeyEventHandler = value }
  downGameKeyEventHandler { _downGameKeyEventHandler }
  downGameKeyEventHandler=(value) { _downGameKeyEventHandler = value }

  initFields_GameKeyEventHandler() {
    _logUtil = null
    _commonStrings = null
    _pressGameKeyEventHandler = null
    _upGameKeyEventHandler = null
    _downGameKeyEventHandler = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _pressGameKeyEventHandler = PressGameKeyEventHandler.getInstance()
        _upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
        _downGameKeyEventHandler = DownGameKeyEventHandler.getInstance()
  }

  construct new() {
    super()
    initFields_GameKeyEventHandler()
  }
    

    static getInstance() {
        return GameKeyEventHandler.instance
    }
    

    removeAllListeners() {
        _pressGameKeyEventHandler.removeAllListeners()
        _upGameKeyEventHandler.removeAllListeners()
        _downGameKeyEventHandler.removeAllListeners()
    }
    

    addListenerForPlayer(eventListenerInterface, playerInputId) {
        _logUtil.putF(eventListenerInterface.toString(), this, _commonStrings.ADD_LISTENER)
        _pressGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface)
        _upGameKeyEventHandler.getInstanceForPlayer(playerInputId).addListenerSingleThreaded(eventListenerInterface)
        _downGameKeyEventHandler.getInstanceForPlayer(playerInputId).addListenerSingleThreaded(eventListenerInterface)
    }
    

    addListener(eventListenerInterface) {
        _logUtil.putF(eventListenerInterface.toString(), this, _commonStrings.ADD_LISTENER)
        _pressGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface)
        _upGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface)
        _downGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface)
    }
    

    removeListener(eventListenerInterface) {
        _logUtil.putF(eventListenerInterface.toString(), this, _commonStrings.REMOVE_LISTENER)
        _pressGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface)
        _upGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface)
        _downGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface)
    }
}

import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/util/event/EventListenerInterface" for EventListenerInterface
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./PressGameKeyEventHandler" for PressGameKeyEventHandler
import "./UpGameKeyEventHandler" for UpGameKeyEventHandler
import "./DownGameKeyEventHandler" for DownGameKeyEventHandler

