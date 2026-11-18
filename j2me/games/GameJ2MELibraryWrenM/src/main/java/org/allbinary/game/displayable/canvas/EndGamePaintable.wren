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
// package org.allbinary.game.displayable.canvas

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/graphics/paint/Paintable" for Paintable

class EndGamePaintable is Paintable {
  gameCanvas { _gameCanvas }
  gameCanvas=(value) { _gameCanvas = value }

  initFields_EndGamePaintable() {
    _gameCanvas = null
        
  }
    

    construct new(gameCanvas) {
    super()
    initFields_EndGamePaintable()
        _gameCanvas = gameCanvas
    }
    

    paint(graphics) {
        _gameCanvas.paintGameOver(graphics)
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "./AllBinaryGameCanvas" for AllBinaryGameCanvas

