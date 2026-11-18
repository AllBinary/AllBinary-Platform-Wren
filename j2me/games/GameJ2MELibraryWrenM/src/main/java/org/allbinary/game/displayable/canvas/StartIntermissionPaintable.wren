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
import "../../../../../org/allbinary/graphics/paint/InitUpdatePaintable" for InitUpdatePaintable

class StartIntermissionPaintable is InitUpdatePaintable {
  fontDebugFactory { _fontDebugFactory }
  fontDebugFactory=(value) { _fontDebugFactory = value }
  basicSetColorUtil { _basicSetColorUtil }
  basicSetColorUtil=(value) { _basicSetColorUtil = value }
  gameCanvas { _gameCanvas }
  gameCanvas=(value) { _gameCanvas = value }
  stringArray { _stringArray }
  stringArray=(value) { _stringArray = value }
  fontSize { _fontSize }
  fontSize=(value) { _fontSize = value }
  font { _font }
  font=(value) { _font = value }
  lastWidth { _lastWidth }
  lastWidth=(value) { _lastWidth = value }
  updateMyFontProcessor { _updateMyFontProcessor }
  updateMyFontProcessor=(value) { _updateMyFontProcessor = value }
  myFontProcessor { _myFontProcessor }
  myFontProcessor=(value) { _myFontProcessor = value }
  basicColor { _basicColor }
  basicColor=(value) { _basicColor = value }
  color { _color }
  color=(value) { _color = value }
  lineYOffsetArray { _lineYOffsetArray }
  lineYOffsetArray=(value) { _lineYOffsetArray = value }
  hasChanged { _hasChanged }
  hasChanged=(value) { _hasChanged = value }
  anchor { _anchor }
  anchor=(value) { _anchor = value }
  fontHeightP { _fontHeightP }
  fontHeightP=(value) { _fontHeightP = value }
  BEGIN_LEVEL { _BEGIN_LEVEL }
  BEGIN_LEVEL=(value) { _BEGIN_LEVEL = value }
  EMPTY_STRING { _EMPTY_STRING }
  EMPTY_STRING=(value) { _EMPTY_STRING = value }

  initFields_StartIntermissionPaintable() {
    _fontDebugFactory = null
    _basicSetColorUtil = null
    _gameCanvas = null
    _stringArray = null
    _fontSize = 0
    _font = null
    _lastWidth = null
    _updateMyFontProcessor = null
    _myFontProcessor = null
    _basicColor = null
    _color = 0
    _lineYOffsetArray = null
    _hasChanged = false
    _anchor = 0
    _fontHeightP = 0
    _BEGIN_LEVEL = null
    _EMPTY_STRING = null
        _fontDebugFactory = FontDebugFactory.getInstance()
        _basicSetColorUtil = BasicColorSetUtil.getInstance()
        
        
        
        
        
        _updateMyFontProcessor = UpdateMyFontProcessor.new(this)
        _myFontProcessor = _updateMyFontProcessor
        _basicColor = BasicColorFactory.getInstance().BLACK
        
        _lineYOffsetArray = NullUtil.getInstance().NULL_INT_ARRAY
        _hasChanged = true
        _anchor = Anchor.TOP_LEFT
        _fontHeightP = 0
        _BEGIN_LEVEL = "Begin Level "
        _EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
  }
    

    construct new(gameCanvas, stringArray, basicColor, font) {
    super()
    initFields_StartIntermissionPaintable()
        _gameCanvas = gameCanvas
        _stringArray = stringArray
        _lastWidth = List.filled(_stringArray.count, 0)
        this.setBasicColorP(basicColor)
        _color = basicColor.intValue()
        _fontSize = font.getSize()
        _font = font
    }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        _fontHeightP = font.getHeight()
        _myFontProcessor = MyFontProcessor.getInstance()
    }
    

    paint(graphics) {
        _myFontProcessor.process(graphics)
        var existingFont = graphics.getFont()
        _fontDebugFactory.setFont(_font, graphics)
        var displayInfo = DisplayInfoSingleton.getInstance()
        _basicSetColorUtil.setBasicColorP3(graphics, _basicColor, _color)
        var beginWidth = 0
        if (true) {
            var index = JR.i32(_lineYOffsetArray.count - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            if (_hasChanged) {
                _lastWidth[index] = (JR.shr(graphics.getFont().stringWidth(_stringArray[index]), 1))
            }
            beginWidth = _lastWidth[index]
            graphics.drawString(_stringArray[index], (displayInfo.getLastHalfWidth() - beginWidth), (displayInfo.getLastHalfHeight() - _lineYOffsetArray[index]), _anchor)
            }
        }
        _hasChanged = false
        _fontDebugFactory.setFont(existingFont, graphics)
    }
    

    update() {
        var level = _gameCanvas.getLayerManager().getGameInfo().getCurrentLevel()
        _stringArray[0] = StringMaker.new().append(_BEGIN_LEVEL).appendint(level).toString()
        if (true) {
            var index = JR.i32(_stringArray.count - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 1))) break
            _stringArray[index] = _EMPTY_STRING
            }
        }
    }
    

    setBasicColorP(basicColor) {
        _basicColor = basicColor
    }
    

    getBasicColorP() {
        return _basicColor
    }
}

import "../../../../../javax/microedition/lcdui/Font" for Font
import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/graphics/Anchor" for Anchor
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../org/allbinary/graphics/color/BasicColorSetUtil" for BasicColorSetUtil
import "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../../org/allbinary/graphics/font/FontDebugFactory" for FontDebugFactory
import "../../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor
import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./AllBinaryGameCanvas" for AllBinaryGameCanvas

