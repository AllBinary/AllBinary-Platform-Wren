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
// package org.allbinary.game.paint

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/graphics/paint/Paintable" for Paintable

//J2SEForJ2ME
class AboutPaintable is Paintable {
  displayInfoSingleton { _displayInfoSingleton }
  displayInfoSingleton=(value) { _displayInfoSingleton = value }
  ABOUT { _ABOUT }
  ABOUT=(value) { _ABOUT = value }
  info { _info }
  info=(value) { _info = value }
  developers { _developers }
  developers=(value) { _developers = value }
  paintableArray { _paintableArray }
  paintableArray=(value) { _paintableArray = value }
  myFontProcessor { _myFontProcessor }
  myFontProcessor=(value) { _myFontProcessor = value }
  charHeight { _charHeight }
  charHeight=(value) { _charHeight = value }
  aboutBeginWidth { _aboutBeginWidth }
  aboutBeginWidth=(value) { _aboutBeginWidth = value }
  infoBeginWidth { _infoBeginWidth }
  infoBeginWidth=(value) { _infoBeginWidth = value }
  developersBeginWidth { _developersBeginWidth }
  developersBeginWidth=(value) { _developersBeginWidth = value }
  anchor { _anchor }
  anchor=(value) { _anchor = value }

  initFields_AboutPaintable() {
    _displayInfoSingleton = null
    _ABOUT = null
    _info = null
    _developers = null
    _paintableArray = null
    _myFontProcessor = null
    _charHeight = 0
    _aboutBeginWidth = 0
    _infoBeginWidth = null
    _developersBeginWidth = null
    _anchor = 0
        _displayInfoSingleton = DisplayInfoSingleton.getInstance()
        _ABOUT = CanvasStrings.getInstance().ABOUT
        
        
        _paintableArray = [this]
        _myFontProcessor = UpdateMyFontProcessor.new(this)
        _charHeight = 0
        _aboutBeginWidth = 0
        
        
        _anchor = Anchor.TOP_LEFT
  }
    

    static getInstance(info, developers) {
        return AboutPaintable.new(info, developers)
    }
    

    construct new(info, developers) {
    super()
    initFields_AboutPaintable()
        _info = info
        _infoBeginWidth = List.filled(_info.count, 0)
        _developers = developers
        _developersBeginWidth = List.filled(_developers.count, 0)
    }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        _charHeight = font.getHeight()
        _aboutBeginWidth = (JR.shr(font.stringWidth(_ABOUT), 1))
        var infoSize = _info.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < infoSize))) break
            _infoBeginWidth[index] = (JR.shr(font.stringWidth(_info[index]), 1))
            }
        }
        var size = _developers.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            _developersBeginWidth[index] = (JR.shr(font.stringWidth(_developers[index]), 1))
            }
        }
        _myFontProcessor = MyFontProcessor.getInstance()
    }
    

    getPaintableArrayInstance() {
        return _paintableArray
    }
    

    paint(graphics) {
        _myFontProcessor.process(graphics)
        var halfWidth = _displayInfoSingleton.getLastHalfWidth()
        graphics.drawString(_ABOUT, JR.i32(halfWidth - _aboutBeginWidth), JR.i32(2 * _charHeight), _anchor)
        var infoSize = _info.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < infoSize))) break
            graphics.drawString(_info[index], JR.i32(halfWidth - _infoBeginWidth[index]), JR.i32((JR.i32(4 + index)) * _charHeight), _anchor)
            }
        }
        var size = _developers.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            graphics.drawString(_developers[index], JR.i32(halfWidth - _developersBeginWidth[index]), JR.i32((JR.i32(JR.i32(5 + infoSize) + index)) * _charHeight), _anchor)
            }
        }
    }
}

import "../../../../javax/microedition/lcdui/Font" for Font
import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/graphics/Anchor" for Anchor
import "../../../../org/allbinary/graphics/displayable/CanvasStrings" for CanvasStrings
import "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor

