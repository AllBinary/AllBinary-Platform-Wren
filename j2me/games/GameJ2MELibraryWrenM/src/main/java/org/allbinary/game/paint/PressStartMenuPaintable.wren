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

class PressStartMenuPaintable is Paintable {
  displayInfo { _displayInfo }
  displayInfo=(value) { _displayInfo = value }
  PRESS_START { _PRESS_START }
  PRESS_START=(value) { _PRESS_START = value }
  KEY_START { _KEY_START }
  KEY_START=(value) { _KEY_START = value }
  MENU_START { _MENU_START }
  MENU_START=(value) { _MENU_START = value }
  myFontProcessor { _myFontProcessor }
  myFontProcessor=(value) { _myFontProcessor = value }
  startString { _startString }
  startString=(value) { _startString = value }
  timeDelayHelper { _timeDelayHelper }
  timeDelayHelper=(value) { _timeDelayHelper = value }
  flash { _flash }
  flash=(value) { _flash = value }
  anchor { _anchor }
  anchor=(value) { _anchor = value }
  beginWidth { _beginWidth }
  beginWidth=(value) { _beginWidth = value }
  line { _line }
  line=(value) { _line = value }

  initFields_PressStartMenuPaintable() {
    _displayInfo = null
    _PRESS_START = null
    _KEY_START = null
    _MENU_START = null
    _myFontProcessor = null
    _startString = null
    _timeDelayHelper = null
    _flash = false
    _anchor = 0
    _beginWidth = 0
    _line = 0
        _displayInfo = DisplayInfoSingleton.getInstance()
        _PRESS_START = "Press Screen To Start"
        _KEY_START = "Press or Click F2 To Begin"
        _MENU_START = "Press Start From The Menu To Begin"
        _myFontProcessor = UpdateMyFontProcessor.new(this)
        _startString = StringUtil.getInstance().EMPTY_STRING
        _timeDelayHelper = TimeDelayHelper.new(1100)
        _flash = false
        _anchor = Anchor.TOP_LEFT
        _beginWidth = 0
        _line = 0
  }
    

    construct new() {
    super()
    initFields_PressStartMenuPaintable()
        if (TouchScreenFactory.getInstance().isTouch()) {
            _startString = _PRESS_START
        } else if (AppletUtil.isAppletLoader(this)) {
            _startString = _KEY_START
        } else {
            _startString = _MENU_START
        }
    }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        _beginWidth = (JR.shr(graphics.getFont().stringWidth(_startString), 1))
        _line = (((4 * MyFontProcessor.defaultCharWidth(font))) + (JR.shr(font.getHeight(), 1)))
        _myFontProcessor = MyFontProcessor.getInstance()
    }
    

    paint(graphics) {
        if (_timeDelayHelper.isTimeTNT()) {
            if (this.isFlash()) {
                this.setFlash(false)
            } else {
                this.setFlash(true)
            }
        }
        if (this.isFlash()) {
            _myFontProcessor.process(graphics)
            graphics.drawString(_startString, (_displayInfo.getLastHalfWidth() - _beginWidth), (_displayInfo.getLastHeight() - _line), _anchor)
        }
    }
    

    setFlash(flash) {
        _flash = flash
    }
    

    isFlash() {
        return _flash
    }
}

import "../../../../javax/microedition/lcdui/Font" for Font
import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/AppletUtil" for AppletUtil
import "../../../../org/allbinary/graphics/Anchor" for Anchor
import "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor
import "../../../../org/allbinary/input/motion/button/TouchScreenFactory" for TouchScreenFactory
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper

