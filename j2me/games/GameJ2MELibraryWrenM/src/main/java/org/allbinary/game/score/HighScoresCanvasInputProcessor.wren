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
import "../../../../org/allbinary/game/input/PlayerGameInput" for PlayerGameInput

class HighScoresCanvasInputProcessor is PlayerGameInput {
  highScoresCanvas { _highScoresCanvas }
  highScoresCanvas=(value) { _highScoresCanvas = value }

  initFields_HighScoresCanvasInputProcessor() {
    _highScoresCanvas = null
        
  }
    

    construct new(highScoresCanvas) {
        super(BasicArrayListD.new(), BasicArrayListD.new(), -1)
        initFields_HighScoresCanvasInputProcessor()
        _highScoresCanvas = highScoresCanvas
    }
    

    open() {
    }
    

    close() {
    }
    

    onPressGameKeyEvent(gameKeyEvent) {
        super.onPressGameKeyEvent(gameKeyEvent)
        this.update()
    }
    

    onDownGameKeyEvent(gameKeyEvent) {
        super.onDownGameKeyEvent(gameKeyEvent)
        this.update()
    }
    

    onUpGameKeyEvent(gameKeyEvent) {
        super.onUpGameKeyEvent(gameKeyEvent)
        this.update()
    }
    

    paint(graphics) {
    }
    

    getHighScoresCanvas() {
        return _highScoresCanvas
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../org/allbinary/game/score/displayable/HighScoresCanvas" for HighScoresCanvas
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD

