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
import "./DownKeyEventHandlerBase" for DownKeyEventHandlerBase

class DownKeyEventHandler is DownKeyEventHandlerBase {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = DownKeyEventHandler.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
    static instanceArray {
    if (__instanceArray_set == null) {
      __instanceArray_set = true
      __instanceArray = [DownKeyEventHandlerBase.new(), DownKeyEventHandlerBase.new(), DownKeyEventHandlerBase.new(), DownKeyEventHandlerBase.new(), DownKeyEventHandlerBase.new(), DownKeyEventHandlerBase.new()]
    }
    return __instanceArray
  }
  static instanceArray=(value) {
    __instanceArray_set = true
    __instanceArray = value
  }
  playerInputIdFactory { _playerInputIdFactory }
  playerInputIdFactory=(value) { _playerInputIdFactory = value }

  initFields_DownKeyEventHandler() {
    _playerInputIdFactory = null
        _playerInputIdFactory = LocalPlayerInputIdFactory.getInstance()
  }
    

    static getInstance() {
        return DownKeyEventHandler.instance
    }
    

    getInstanceForDevice(deviceId) {
        var playerInputId = _playerInputIdFactory.getPlayerForDevice(deviceId)
        return DownKeyEventHandler.instanceArray[playerInputId]
    }
    

    getInstanceForPlayer(playerInputId) {
        return DownKeyEventHandler.instanceArray[playerInputId]
    }
    

    construct new() {
    super()
    initFields_DownKeyEventHandler()
    }
    

    removeAllListeners() {
        super.removeAllListeners()
        if (true) {
            var index = JR.i32(DownKeyEventHandler.instanceArray.count - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            DownKeyEventHandler.instanceArray[index].removeAllListeners()
            }
        }
    }
    

    removeListenerSingleThreaded(eventListenerInterface) {
        super.removeListenerSingleThreaded(eventListenerInterface)
        if (true) {
            var index = JR.i32(DownKeyEventHandler.instanceArray.count - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            DownKeyEventHandler.instanceArray[index].removeListenerSingleThreaded(eventListenerInterface)
            }
        }
    }
    

    removeListener(eventListenerInterface) {
        super.removeListener(eventListenerInterface)
        if (true) {
            var index = JR.i32(DownKeyEventHandler.instanceArray.count - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            DownKeyEventHandler.instanceArray[index].removeListener(eventListenerInterface)
            }
        }
    }
}

import "../../../../../org/allbinary/game/input/LocalPlayerInputIdFactory" for LocalPlayerInputIdFactory
import "../../../../../org/allbinary/logic/util/event/EventListenerInterface" for EventListenerInterface

