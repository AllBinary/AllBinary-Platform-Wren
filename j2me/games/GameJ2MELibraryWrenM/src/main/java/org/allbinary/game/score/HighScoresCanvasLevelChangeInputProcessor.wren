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
import "./HighScoresCanvasInputProcessor" for HighScoresCanvasInputProcessor

class HighScoresCanvasLevelChangeInputProcessor is HighScoresCanvasInputProcessor {
  displayInfoSingleton { _displayInfoSingleton }
  displayInfoSingleton=(value) { _displayInfoSingleton = value }
  INSTRUCTIONS { _INSTRUCTIONS }
  INSTRUCTIONS=(value) { _INSTRUCTIONS = value }
  myFontProcessor { _myFontProcessor }
  myFontProcessor=(value) { _myFontProcessor = value }
  anchor { _anchor }
  anchor=(value) { _anchor = value }
  fontHeight { _fontHeight }
  fontHeight=(value) { _fontHeight = value }

  initFields_HighScoresCanvasLevelChangeInputProcessor() {
    _displayInfoSingleton = null
    _INSTRUCTIONS = null
    _myFontProcessor = null
    _anchor = 0
    _fontHeight = 0
        _displayInfoSingleton = DisplayInfoSingleton.getInstance()
        _INSTRUCTIONS = "(Right = Next Track, Left = Previous Track)"
        _myFontProcessor = UpdateMyFontProcessor.new(this)
        _anchor = Anchor.TOP_LEFT
        _fontHeight = 0
  }
    

    construct new(highScoresCanvas) {
        super(highScoresCanvas)
        initFields_HighScoresCanvasLevelChangeInputProcessor()
    }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        _fontHeight = font.getHeight()
        _myFontProcessor = MyFontProcessor.getInstance()
    }
    

    open() {
        GameKeyEventHandler.getInstance().addListener(this)
    }
    

    close() {
        GameKeyEventHandler.getInstance().removeListener(this)
    }
    

    update() {
        var list = this.getGameKeyEventList()
        var size = list.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            var anyType = list.objectArray[index]
            var key = GameKeyEventUtil.getKey(anyType)
            if ((key == Canvas.RIGHT)) {
                this.getHighScoresCanvas().getGameInfo().nextGameLevel()
            } else if ((key == Canvas.LEFT)) {
                this.getHighScoresCanvas().getGameInfo().previousGameLevel()
            }
            this.getHighScoresCanvas().executeUpdate()
            }
        }
        list.clear()
    }
    

    paint(graphics) {
        _myFontProcessor.process(graphics)
        var width = _displayInfoSingleton.getLastWidth()
        var topScoresWidth = (JR.shr(graphics.getFont().stringWidth(_INSTRUCTIONS), 1))
        graphics.drawString(_INSTRUCTIONS, JR.i32((JR.shr(width, 1)) - topScoresWidth), JR.i32(_fontHeight * 2), _anchor)
    }
}

import "../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../javax/microedition/lcdui/Font" for Font
import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/game/input/event/GameKeyEventHandler" for GameKeyEventHandler
import "../../../../org/allbinary/game/input/event/GameKeyEventUtil" for GameKeyEventUtil
import "../../../../org/allbinary/game/score/displayable/HighScoresCanvas" for HighScoresCanvas
import "../../../../org/allbinary/graphics/Anchor" for Anchor
import "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList

