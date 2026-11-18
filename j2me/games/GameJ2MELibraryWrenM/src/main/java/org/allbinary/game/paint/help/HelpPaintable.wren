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
// package org.allbinary.game.paint.help

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/graphics/paint/Paintable" for Paintable

class HelpPaintable is Paintable {
  displayInfo { _displayInfo }
  displayInfo=(value) { _displayInfo = value }
  updateMyFontProcessor { _updateMyFontProcessor }
  updateMyFontProcessor=(value) { _updateMyFontProcessor = value }
  myFontProcessor { _myFontProcessor }
  myFontProcessor=(value) { _myFontProcessor = value }
  anchor { _anchor }
  anchor=(value) { _anchor = value }
  title { _title }
  title=(value) { _title = value }
  inputInfo { _inputInfo }
  inputInfo=(value) { _inputInfo = value }
  basicColor { _basicColor }
  basicColor=(value) { _basicColor = value }
  titleBeginWidth { _titleBeginWidth }
  titleBeginWidth=(value) { _titleBeginWidth = value }
  beginWidthArray { _beginWidthArray }
  beginWidthArray=(value) { _beginWidthArray = value }
  charHeight { _charHeight }
  charHeight=(value) { _charHeight = value }

  initFields_HelpPaintable() {
    _displayInfo = null
    _updateMyFontProcessor = null
    _myFontProcessor = null
    _anchor = 0
    _title = null
    _inputInfo = null
    _basicColor = null
    _titleBeginWidth = 0
    _beginWidthArray = null
    _charHeight = 0
        _displayInfo = DisplayInfoSingleton.getInstance()
        _updateMyFontProcessor = UpdateMyFontProcessor.new(this)
        _myFontProcessor = _updateMyFontProcessor
        _anchor = Anchor.TOP_LEFT
        
        _inputInfo = StringUtil.getInstance().getArrayInstance()
        
        _titleBeginWidth = 0
        _beginWidthArray = NullUtil.getInstance().NULL_INT_ARRAY
        _charHeight = 0
  }
    

    construct new(title, backgroundBasicColor, basicColor) {
    super()
    initFields_HelpPaintable()
        _title = title
        _basicColor = basicColor
    }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        _titleBeginWidth = (JR.shr(font.stringWidth(_title), 1))
        _charHeight = font.getHeight()
        var size = _inputInfo.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            _beginWidthArray[index] = (JR.shr(font.stringWidth(_inputInfo[index]), 1))
            }
        }
        _myFontProcessor = MyFontProcessor.getInstance()
    }
    

    setInputInfoP(inputInfo) {
        _inputInfo = inputInfo
        _beginWidthArray = List.filled(_inputInfo.count, 0)
        _myFontProcessor = _updateMyFontProcessor
    }
    

    paint(graphics) {
        _myFontProcessor.process(graphics)
        var halfWidth = _displayInfo.getLastHalfWidth()
        graphics.setColor(_basicColor.intValue())
        graphics.drawString(_title, JR.i32(halfWidth - _titleBeginWidth), _charHeight, _anchor)
        var size = _inputInfo.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            graphics.drawString(_inputInfo[index], JR.i32(halfWidth - _beginWidthArray[index]), JR.i32((JR.i32(index + 3)) * _charHeight), _anchor)
            }
        }
    }
}

import "../../../../../javax/microedition/lcdui/Font" for Font
import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/graphics/Anchor" for Anchor
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor
import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil

