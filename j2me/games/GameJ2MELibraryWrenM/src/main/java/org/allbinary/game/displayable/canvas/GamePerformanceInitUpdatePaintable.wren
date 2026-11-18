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

class GamePerformanceInitUpdatePaintable is InitUpdatePaintable {
  halfHeight { _halfHeight }
  halfHeight=(value) { _halfHeight = value }
  yArray { _yArray }
  yArray=(value) { _yArray = value }
  myFontProcessor { _myFontProcessor }
  myFontProcessor=(value) { _myFontProcessor = value }
  baseRefreshHelperCharArray { _baseRefreshHelperCharArray }
  baseRefreshHelperCharArray=(value) { _baseRefreshHelperCharArray = value }
  defaultStringWidth { _defaultStringWidth }
  defaultStringWidth=(value) { _defaultStringWidth = value }
  RED { _RED }
  RED=(value) { _RED = value }

  initFields_GamePerformanceInitUpdatePaintable() {
    _halfHeight = 0
    _yArray = null
    _myFontProcessor = null
    _baseRefreshHelperCharArray = null
    _defaultStringWidth = 0
    _RED = 0
        _halfHeight = DisplayInfoSingleton.getInstance().getLastHalfHeight()
        _yArray = [JR.i32(_halfHeight + 30), JR.i32(_halfHeight + 30), JR.i32(JR.i32(_halfHeight + 30) + 15), JR.i32(JR.i32(_halfHeight + 30) + 15), JR.i32(JR.i32(_halfHeight + 30) + 30), JR.i32(JR.i32(_halfHeight + 30) + 30), JR.i32(JR.i32(_halfHeight + 30) + 45), JR.i32(JR.i32(_halfHeight + 30) + 45)]
        _myFontProcessor = UpdateMyFontProcessor.new(this)
        _baseRefreshHelperCharArray = JR.listOf(0, Fn.new { List.filled(0, 0) })
        _defaultStringWidth = 0
        _RED = BasicColorFactory.getInstance().RED.intValue()
  }

  construct new() {
    super()
    initFields_GamePerformanceInitUpdatePaintable()
  }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        _defaultStringWidth = MyFontProcessor.defaultStringWidth(font, 2)
        _myFontProcessor = MyFontProcessor.getInstance()
    }
    

    init() {
    }
    

    update() {
        _baseRefreshHelperCharArray = GameStatisticsFactory.getInstance().to2DCharArray()
    }
    

    paint(graphics) {
        _myFontProcessor.process(graphics)
        graphics.setColor(_RED)
        var charArray = null
        var charArray2 = null
        var size2 = 0
        var size3 = 0
        var size = JR.i32(_baseRefreshHelperCharArray.count - 2)
        if (true) {
            var index = size
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 2)
                }
                jfirst = false
                if (!((index >= 0))) break
            charArray = _baseRefreshHelperCharArray[index]
            charArray2 = _baseRefreshHelperCharArray[JR.i32(index + 1)]
            size2 = charArray.count
            size3 = charArray2.count
            graphics.drawChars(charArray, 0, size2, 0, _yArray[index], 0)
            graphics.drawChars(charArray2, 0, size3, JR.i32(size2 * _defaultStringWidth), _yArray[JR.i32(index + 1)], 0)
            }
        }
    }
}

import "../../../../../javax/microedition/lcdui/Font" for Font
import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/canvas/GameStatisticsFactory" for GameStatisticsFactory
import "../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor

