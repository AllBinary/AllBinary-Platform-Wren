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

class HighScoresCanvasChangeLevelInputProcessorFactory is JObject {

  initFields_HighScoresCanvasChangeLevelInputProcessorFactory() {
  }

  construct new() {
    super()
    initFields_HighScoresCanvasChangeLevelInputProcessorFactory()
  }
    

    getInstance(highScoresCanvas) {
        return HighScoresCanvasLevelChangeInputProcessor.new(highScoresCanvas)
    }
}

import "../../../../org/allbinary/game/score/displayable/HighScoresCanvas" for HighScoresCanvas
import "./HighScoresCanvasInputProcessorFactoryInterface" for HighScoresCanvasInputProcessorFactoryInterface
import "./HighScoresCanvasLevelChangeInputProcessor" for HighScoresCanvasLevelChangeInputProcessor
import "./HighScoresCanvasInputProcessor" for HighScoresCanvasInputProcessor

