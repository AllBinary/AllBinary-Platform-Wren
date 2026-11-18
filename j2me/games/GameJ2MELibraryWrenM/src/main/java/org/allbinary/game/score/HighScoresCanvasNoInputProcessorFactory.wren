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
// package org.allbinary.game.score

import "../../../../allbinary_java" for JObject, JException, JR

class HighScoresCanvasNoInputProcessorFactory is JObject {

  initFields_HighScoresCanvasNoInputProcessorFactory() {
  }

  construct new() {
    super()
    initFields_HighScoresCanvasNoInputProcessorFactory()
  }
    

    getInstance(highScoresCanvas) {
        return HighScoresCanvasInputProcessor.new(highScoresCanvas)
    }
}

import "../../../../org/allbinary/game/score/displayable/HighScoresCanvas" for HighScoresCanvas
import "./HighScoresCanvasInputProcessorFactoryInterface" for HighScoresCanvasInputProcessorFactoryInterface
import "./HighScoresCanvasInputProcessor" for HighScoresCanvasInputProcessor

