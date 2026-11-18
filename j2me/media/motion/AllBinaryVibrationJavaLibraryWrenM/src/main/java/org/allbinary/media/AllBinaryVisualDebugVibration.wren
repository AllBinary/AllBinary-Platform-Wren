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
// package org.allbinary.media

import "../../../allbinary_java" for JObject, JException, JR
import "./AllBinaryVibrationME" for AllBinaryVibrationME

class AllBinaryVisualDebugVibration is AllBinaryVibrationME {
  displayInfoSingleton { _displayInfoSingleton }
  displayInfoSingleton=(value) { _displayInfoSingleton = value }
  timeDelayHelper { _timeDelayHelper }
  timeDelayHelper=(value) { _timeDelayHelper = value }
  VIBRATING { _VIBRATING }
  VIBRATING=(value) { _VIBRATING = value }
  myFontProcessor { _myFontProcessor }
  myFontProcessor=(value) { _myFontProcessor = value }
  anchor { _anchor }
  anchor=(value) { _anchor = value }
  width { _width }
  width=(value) { _width = value }

  initFields_AllBinaryVisualDebugVibration() {
    _displayInfoSingleton = null
    _timeDelayHelper = null
    _VIBRATING = null
    _myFontProcessor = null
    _anchor = 0
    _width = 0
        _displayInfoSingleton = DisplayInfoSingleton.getInstance()
        _timeDelayHelper = TimeDelayHelper.new(Integer.MAX_VALUE)
        _VIBRATING = "Vibrating"
        _myFontProcessor = UpdateMyFontProcessor.new(this)
        _anchor = Anchor.TOP_LEFT
        _width = 0
  }

  construct new() {
    super()
    initFields_AllBinaryVisualDebugVibration()
  }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        _width = font.stringWidth(_VIBRATING)
        _myFontProcessor = MyFontProcessor.getInstance()
    }
    

    vibrate(duration, type, volume) {
        _timeDelayHelper.delay = duration
    }
    

    paint(graphics) {
        if (_timeDelayHelper.isTimeTNT()) {
            _timeDelayHelper.delay = Integer.MAX_VALUE
            _myFontProcessor.process(graphics)
            graphics.drawString(_VIBRATING, (_displayInfoSingleton.getLastHalfWidth() - (JR.shr(_width, 1))), 0, _anchor)
        }
    }
}

import "../../../javax/microedition/lcdui/Font" for Font
import "../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../org/allbinary/graphics/Anchor" for Anchor
import "../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor
import "../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper
import "../../../java/lang/Integer" for Integer

