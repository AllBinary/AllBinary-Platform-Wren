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
class OwnershipPaintable is Paintable {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  displayInfo { _displayInfo }
  displayInfo=(value) { _displayInfo = value }
  myFontProcessor { _myFontProcessor }
  myFontProcessor=(value) { _myFontProcessor = value }
  COPYRIGHT { _COPYRIGHT }
  COPYRIGHT=(value) { _COPYRIGHT = value }
  basicColor { _basicColor }
  basicColor=(value) { _basicColor = value }
  color { _color }
  color=(value) { _color = value }
  anchor { _anchor }
  anchor=(value) { _anchor = value }
  COPYRIGHT_Y { _COPYRIGHT_Y }
  COPYRIGHT_Y=(value) { _COPYRIGHT_Y = value }
  beginWidth { _beginWidth }
  beginWidth=(value) { _beginWidth = value }

  initFields_OwnershipPaintable() {
    _logUtil = null
    _displayInfo = null
    _myFontProcessor = null
    _COPYRIGHT = null
    _basicColor = null
    _color = 0
    _anchor = 0
    _COPYRIGHT_Y = 0
    _beginWidth = 0
        _logUtil = LogUtil.getInstance()
        _displayInfo = DisplayInfoSingleton.getInstance()
        _myFontProcessor = UpdateMyFontProcessor.new(this)
        _COPYRIGHT = "AllBinary Copyright (c) 2011"
        _basicColor = BasicColorFactory.getInstance().WHITE
        _color = _basicColor.intValue()
        _anchor = Anchor.TOP_LEFT
        _COPYRIGHT_Y = 0
        _beginWidth = 0
  }
    

    static getInstance() {
        return OwnershipPaintable.new()
    }
    

    construct new() {
    super()
    initFields_OwnershipPaintable()
    }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        _COPYRIGHT_Y = (2 * font.getHeight())
        _beginWidth = (JR.shr(font.stringWidth(_COPYRIGHT), 1))
        _myFontProcessor = MyFontProcessor.getInstance()
    }
    

    setBasicColorP(basicColor) {
        _basicColor = basicColor
        _color = basicColor.intValue()
    }
    

    getBasicColorP() {
        return _basicColor
    }
    

    paint(graphics) {
        _myFontProcessor.process(graphics)
        graphics.setColor(_color)
        var halfWidth = _displayInfo.getLastHalfWidth()
        var height = _displayInfo.getLastHeight()
        graphics.drawString(_COPYRIGHT, JR.i32(halfWidth - _beginWidth), JR.i32(height - _COPYRIGHT_Y), _anchor)
    }
}

import "../../../../javax/microedition/lcdui/Font" for Font
import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/graphics/Anchor" for Anchor
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil

