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
import "../../../../../org/allbinary/graphics/paint/ProcessPaintable" for ProcessPaintable

class GameCanvasPaintHelper is ProcessPaintable {
  gameCanvas { _gameCanvas }
  gameCanvas=(value) { _gameCanvas = value }

  initFields_GameCanvasPaintHelper() {
    _gameCanvas = null
        
  }
    

    construct new(gameCanvas) {
    super()
    initFields_GameCanvasPaintHelper()
        _gameCanvas = gameCanvas
    }
    

    process() {
    }
    

    paint(graphics) {
        _gameCanvas.draw(graphics)
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "./AllBinaryGameCanvas" for AllBinaryGameCanvas

