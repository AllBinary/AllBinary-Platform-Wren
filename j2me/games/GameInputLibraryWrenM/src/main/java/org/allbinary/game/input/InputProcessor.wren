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
// package org.allbinary.game.input

import "../../../../allbinary_java" for JObject, JException, JR

class InputProcessor is JObject {
  gameInputStrings { _gameInputStrings }
  gameInputStrings=(value) { _gameInputStrings = value }

  initFields_InputProcessor() {
    _gameInputStrings = null
        _gameInputStrings = GameInputStrings.getInstance()
  }

  construct new() {
    super()
    initFields_InputProcessor()
  }
    

    keyPressedByDevice(keyCode, deviceId) {
    }
    

    keyReleasedByDevice(canvas, keyCode, deviceId) {
    }
}

import "../../../../javax/microedition/lcdui/Canvas" for Canvas
import "./GameInputStrings" for GameInputStrings

