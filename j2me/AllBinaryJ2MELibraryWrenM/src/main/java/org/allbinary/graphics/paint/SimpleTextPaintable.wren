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
// package org.allbinary.graphics.paint

import "../../../../allbinary_java" for JObject, JException, JR
import "./Paintable" for Paintable

class SimpleTextPaintable is Paintable {
  displayInfoSingleton { _displayInfoSingleton }
  displayInfoSingleton=(value) { _displayInfoSingleton = value }
  updateMyFontProcessor { _updateMyFontProcessor }
  updateMyFontProcessor=(value) { _updateMyFontProcessor = value }
  myFontProcessor { _myFontProcessor }
  myFontProcessor=(value) { _myFontProcessor = value }
  text { _text }
  text=(value) { _text = value }
  basicColor { _basicColor }
  basicColor=(value) { _basicColor = value }
  topScoresWidth { _topScoresWidth }
  topScoresWidth=(value) { _topScoresWidth = value }
  fontHeight { _fontHeight }
  fontHeight=(value) { _fontHeight = value }
  anchor { _anchor }
  anchor=(value) { _anchor = value }

  initFields_SimpleTextPaintable() {
    _displayInfoSingleton = null
    _updateMyFontProcessor = null
    _myFontProcessor = null
    _text = null
    _basicColor = null
    _topScoresWidth = 0
    _fontHeight = 0
    _anchor = 0
        _displayInfoSingleton = DisplayInfoSingleton.getInstance()
        _updateMyFontProcessor = UpdateMyFontProcessor.new(this)
        _myFontProcessor = _updateMyFontProcessor
        
        
        _topScoresWidth = 0
        _fontHeight = 0
        _anchor = Anchor.TOP_LEFT
  }
    

    construct new(text, basicColor) {
    super()
    initFields_SimpleTextPaintable()
        _text = text
        _basicColor = basicColor
    }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        _topScoresWidth = (JR.shr(font.stringWidth(_text), 1))
        _fontHeight = font.getHeight()
        _myFontProcessor = MyFontProcessor.getInstance()
    }
    

    paint(graphics) {
        _myFontProcessor.process(graphics)
        var width = _displayInfoSingleton.getLast()[_displayInfoSingleton.WIDTH]
        graphics.setColor(this.getBasicColorP().intValue())
        graphics.drawString(_text, JR.i32((JR.shr(width, 1)) - _topScoresWidth), _fontHeight, _anchor)
    }
    

    setBasicColorP(basicColor) {
        _basicColor = basicColor
    }
    

    getBasicColorP() {
        return _basicColor
    }
    

    setText(text) {
        _text = text
        _myFontProcessor = _updateMyFontProcessor
    }
    

    getText() {
        return _text
    }
}

import "../../../../javax/microedition/lcdui/Font" for Font
import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/graphics/Anchor" for Anchor
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor

