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
import "../../../../../org/allbinary/canvas/Processor" for Processor

class EndLevelIntermissionProcessor is Processor {
  gameCanvas { _gameCanvas }
  gameCanvas=(value) { _gameCanvas = value }

  initFields_EndLevelIntermissionProcessor() {
    _gameCanvas = null
        
  }
    

    construct new(gameCanvas) {
    super()
    initFields_EndLevelIntermissionProcessor()
        _gameCanvas = gameCanvas
    }
    

    process() {
        _gameCanvas.processEndLevelIntermissionGameState()
    }
}

import "./AllBinaryGameCanvas" for AllBinaryGameCanvas

