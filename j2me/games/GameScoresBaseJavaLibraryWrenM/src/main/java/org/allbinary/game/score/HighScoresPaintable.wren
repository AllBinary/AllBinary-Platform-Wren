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
import "../../../../org/allbinary/graphics/paint/Paintable" for Paintable

class HighScoresPaintable is Paintable {
  displayInfoSingleton { _displayInfoSingleton }
  displayInfoSingleton=(value) { _displayInfoSingleton = value }
  myFontProcessor { _myFontProcessor }
  myFontProcessor=(value) { _myFontProcessor = value }
  basicColor { _basicColor }
  basicColor=(value) { _basicColor = value }
  highScores { _highScores }
  highScores=(value) { _highScores = value }
  anchor { _anchor }
  anchor=(value) { _anchor = value }
  charHeight { _charHeight }
  charHeight=(value) { _charHeight = value }

  initFields_HighScoresPaintable() {
    _displayInfoSingleton = null
    _myFontProcessor = null
    _basicColor = null
    _highScores = null
    _anchor = 0
    _charHeight = 0
        _displayInfoSingleton = DisplayInfoSingleton.getInstance()
        _myFontProcessor = UpdateMyFontProcessor.new(this)
        _basicColor = BasicColorFactory.getInstance().WHITE
        _highScores = NullHighScoresSingletonFactory.getInstance()
        _anchor = Anchor.TOP_LEFT
        _charHeight = 0
  }
    

    construct new() {
    super()
    initFields_HighScoresPaintable()
    }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        _charHeight = font.getHeight()
        _myFontProcessor = MyFontProcessor.getInstance()
    }
    

    onEvent(eventObject) {
        var colorChangeEvent = eventObject
        _basicColor = colorChangeEvent.getBasicColorP()
    }
    

    paint(graphics) {
        _myFontProcessor.process(graphics)
        var width = _displayInfoSingleton.getLastWidth()
        var height = _displayInfoSingleton.getLastHeight()
        graphics.setColor(this.getBasicColorP().intValue())
        var heading = _highScores.getHeading()
        var topScoresWidth = (JR.shr(graphics.getFont().stringWidth(heading), 1))
        var charHeight = _charHeight
        graphics.drawString(heading, JR.i32((JR.shr(width, 1)) - topScoresWidth), charHeight, _anchor)
        graphics.drawString(_highScores.getColumnOneHeading(), 10, JR.i32(charHeight * 3), _anchor)
        var columnTwoHeading = _highScores.getColumnTwoHeading()
        var columnTwoHeadingWidth = graphics.getFont().stringWidth(columnTwoHeading)
        graphics.drawString(columnTwoHeading, JR.i32(JR.i32(width - 10) - columnTwoHeadingWidth), JR.i32(charHeight * 3), _anchor)
        var index = 4
        var largestSecondColumnWidth = columnTwoHeadingWidth
        var list = _highScores.getList()
        var size = list.size()
        var vectorIndex = 0
        var highScore = null
        while (((vectorIndex < size) && (JR.i32(charHeight * index) < JR.i32(height - (JR.i32(charHeight * 2)))))) {
            highScore = list.objectArray[vectorIndex]
            var nextScoreWidth = graphics.getFont().stringWidth(highScore.getScoreString())
            if ((nextScoreWidth > largestSecondColumnWidth)) {
                largestSecondColumnWidth = nextScoreWidth
            }
            vectorIndex = JR.i32(vectorIndex + 1)
        }
        vectorIndex = 0
        while (((vectorIndex < size) && (JR.i32(charHeight * index) < JR.i32(height - (JR.i32(charHeight * 2)))))) {
            highScore = list.objectArray[vectorIndex]
            graphics.drawString(highScore.getName(), 10, JR.i32(charHeight * index), _anchor)
            graphics.drawString(highScore.getScoreString(), JR.i32(JR.i32(width - 10) - largestSecondColumnWidth), JR.i32(charHeight * index), _anchor)
            index = JR.i32(index + 1)
            vectorIndex = JR.i32(vectorIndex + 1)
        }
    }
    

    setBasicColorP(basicColor) {
        _basicColor = basicColor
    }
    

    getBasicColorP() {
        return _basicColor
    }
    

    setHighScores(highScores) {
        _highScores = highScores
    }
}

import "../../../../javax/microedition/lcdui/Font" for Font
import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/graphics/Anchor" for Anchor
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../org/allbinary/graphics/color/ColorChangeEvent" for ColorChangeEvent
import "../../../../org/allbinary/graphics/color/ColorChangeListener" for ColorChangeListener
import "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor
import "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "./NullHighScoresSingletonFactory" for NullHighScoresSingletonFactory
import "./HighScores" for HighScores
import "./HighScore" for HighScore

