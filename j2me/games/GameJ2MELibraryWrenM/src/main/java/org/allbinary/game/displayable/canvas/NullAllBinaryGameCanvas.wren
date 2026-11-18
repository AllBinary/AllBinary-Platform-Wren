/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.displayable.canvas

import "../../../../../allbinary_java" for JObject, JException, JR

class NullAllBinaryGameCanvas is JObject {
    static NULL_ALLBINARY_GAME_CANVAS {
    if (__NULL_ALLBINARY_GAME_CANVAS_set == null) {
      __NULL_ALLBINARY_GAME_CANVAS_set = true
      __NULL_ALLBINARY_GAME_CANVAS = NullAllBinaryGameCanvas.new()
    }
    return __NULL_ALLBINARY_GAME_CANVAS
  }
  static NULL_ALLBINARY_GAME_CANVAS=(value) {
    __NULL_ALLBINARY_GAME_CANVAS_set = true
    __NULL_ALLBINARY_GAME_CANVAS = value
  }

  initFields_NullAllBinaryGameCanvas() {
  }

  construct new() {
    super()
    initFields_NullAllBinaryGameCanvas()
  }
    

    getLayerManager() {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    addCommand(cmd) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    getHeight() {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    getWidth() {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    removeCommand(cmd) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    setCommandListener(l) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
}

import "../../../../../javax/microedition/lcdui/Command" for Command
import "../../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../../org/allbinary/game/layer/AllBinaryGameLayerManager" for AllBinaryGameLayerManager
import "./AllBinaryGameCanvasInterface" for AllBinaryGameCanvasInterface

