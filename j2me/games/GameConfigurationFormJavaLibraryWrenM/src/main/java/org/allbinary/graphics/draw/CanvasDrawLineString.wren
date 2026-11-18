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
// package org.allbinary.graphics.draw

import "../../../../allbinary_java" for JObject, JException, JR

class CanvasDrawLineString is JObject {
    static NULL_CANVAS_DRAW_LINE_STRING {
    if (__NULL_CANVAS_DRAW_LINE_STRING_set == null) {
      __NULL_CANVAS_DRAW_LINE_STRING_set = true
      __NULL_CANVAS_DRAW_LINE_STRING = CanvasDrawLineString.new(0, 0)
    }
    return __NULL_CANVAS_DRAW_LINE_STRING
  }
  static NULL_CANVAS_DRAW_LINE_STRING=(value) {
    __NULL_CANVAS_DRAW_LINE_STRING_set = true
    __NULL_CANVAS_DRAW_LINE_STRING = value
  }
  drawStringUtil { _drawStringUtil }
  drawStringUtil=(value) { _drawStringUtil = value }
  myFontProcessor { _myFontProcessor }
  myFontProcessor=(value) { _myFontProcessor = value }
  x { _x }
  x=(value) { _x = value }
  y { _y }
  y=(value) { _y = value }
  fontHeight { _fontHeight }
  fontHeight=(value) { _fontHeight = value }

  initFields_CanvasDrawLineString() {
    _drawStringUtil = null
    _myFontProcessor = null
    _x = 0
    _y = 0
    _fontHeight = 0
        _drawStringUtil = DrawStringUtil.getInstance()
        _myFontProcessor = UpdateMyFontProcessor.new(this)
        
        
        _fontHeight = 0
  }
    

    construct new(x, y) {
    super()
    initFields_CanvasDrawLineString()
        _x = x
        _y = y
    }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        _fontHeight = font.getHeight()
        _myFontProcessor = MyFontProcessor.getInstance()
    }
    

    paint(graphics, string, line) {
        _myFontProcessor.process(graphics)
        _drawStringUtil.drawCenterString(graphics, string, 0, JR.length(string), _x, JR.i32(_y + (JR.i32(line * _fontHeight))))
    }
}

import "../../../../javax/microedition/lcdui/Font" for Font
import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor
import "./DrawStringUtil" for DrawStringUtil

