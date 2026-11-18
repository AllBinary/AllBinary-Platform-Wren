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
// package org.allbinary.graphics.displayable

import "../../../../allbinary_java" for JObject, JException, JR

class GameTickDisplayInfoSingleton is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GameTickDisplayInfoSingleton.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  displayInfoSingleton { _displayInfoSingleton }
  displayInfoSingleton=(value) { _displayInfoSingleton = value }
  lastWidth { _lastWidth }
  lastWidth=(value) { _lastWidth = value }
  lastHeight { _lastHeight }
  lastHeight=(value) { _lastHeight = value }
  lastHalfWidth { _lastHalfWidth }
  lastHalfWidth=(value) { _lastHalfWidth = value }
  lastHalfHeight { _lastHalfHeight }
  lastHalfHeight=(value) { _lastHalfHeight = value }

  initFields_GameTickDisplayInfoSingleton() {
    _displayInfoSingleton = null
    _lastWidth = 0
    _lastHeight = 0
    _lastHalfWidth = 0
    _lastHalfHeight = 0
        _displayInfoSingleton = DisplayInfoSingleton.getInstance()
        _lastWidth = _displayInfoSingleton.getLastWidth()
        _lastHeight = _displayInfoSingleton.getLastHeight()
        _lastHalfWidth = _displayInfoSingleton.getLastHalfWidth()
        _lastHalfHeight = _displayInfoSingleton.getLastHalfHeight()
  }

  construct new() {
    super()
    initFields_GameTickDisplayInfoSingleton()
  }
    

    static getInstance() {
        return GameTickDisplayInfoSingleton.instance
    }
    

    update() {
        _lastWidth = _displayInfoSingleton.getLastWidth()
        _lastHeight = _displayInfoSingleton.getLastHeight()
        _lastHalfWidth = _displayInfoSingleton.getLastHalfWidth()
        _lastHalfHeight = _displayInfoSingleton.getLastHalfHeight()
    }
    

    getLastWidth() {
        return _lastWidth
    }
    

    getLastHeight() {
        return _lastHeight
    }
    

    getLastHalfWidth() {
        return _lastHalfWidth
    }
    

    getLastHalfHeight() {
        return _lastHalfHeight
    }
}

import "./DisplayInfoSingleton" for DisplayInfoSingleton

