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
// package org.allbinary.game.ag.layer.hud.basic.time

import "../../../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../../../org/allbinary/game/graphics/hud/BasicHud" for BasicHud

class TimeHudWidget is BasicHud {
  TIME_STRING { _TIME_STRING }
  TIME_STRING=(value) { _TIME_STRING = value }
  TIME_CHAR_ARRAY { _TIME_CHAR_ARRAY }
  TIME_CHAR_ARRAY=(value) { _TIME_CHAR_ARRAY = value }
  offset { _offset }
  offset=(value) { _offset = value }
  string { _string }
  string=(value) { _string = value }
  totalDigits { _totalDigits }
  totalDigits=(value) { _totalDigits = value }
  timer { _timer }
  timer=(value) { _timer = value }

  initFields_TimeHudWidget() {
    _TIME_STRING = null
    _TIME_CHAR_ARRAY = null
    _offset = 0
    _string = null
    _totalDigits = 0
    _timer = null
        _TIME_STRING = "Time "
        _TIME_CHAR_ARRAY = ["T".bytes[0], "i".bytes[0], "m".bytes[0], "e".bytes[0], " ".bytes[0]]
        _offset = 0
        _string = PrimitiveLongSingleton.getInstance().ZERO
        _totalDigits = 1
        
  }
    

    static getInstance(location, direction, basicColor, timer) {
        return TimeHudWidget.new(location, direction, 2, basicColor, timer)
    }
    

    construct new(location, direction, bufferZone, basicColor, timer) {
        super(location, direction, bufferZone, basicColor)
        initFields_TimeHudWidget()
        _timer = timer
        this.set()
        this.updateMaxHeight = 14
    }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        this.updateMaxWidth = (font.getSize() * 5)
        _offset = (font.stringWidth(_TIME_STRING) + MyFontProcessor.defaultStringWidth(font, 3))
        super.updateMeasurement(graphics)
    }
    

    update() {
        _timer.update()
        this.set()
    }
    

    set() {
        _string = _timer.getTimeChars()
        _totalDigits = _timer.getCurrentTotalDigits()
    }
    

    getTimer() {
        return _timer
    }
    

    paint(graphics) {
        super.paintDX(graphics, _TIME_CHAR_ARRAY, 0, _TIME_CHAR_ARRAY.count, _string, 0, _totalDigits, _offset)
    }
}

import "../../../../../../../../javax/microedition/lcdui/Font" for Font
import "../../../../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../../../../../org/allbinary/logic/math/PrimitiveLongSingleton" for PrimitiveLongSingleton
import "./HudTimer" for HudTimer

