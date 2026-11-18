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

class KeyValueDrawCharArray is JObject {
  myFontProcessor { _myFontProcessor }
  myFontProcessor=(value) { _myFontProcessor = value }
  LABEL { _LABEL }
  LABEL=(value) { _LABEL = value }
  labelX { _labelX }
  labelX=(value) { _labelX = value }
  valueX { _valueX }
  valueX=(value) { _valueX = value }
  value { _value }
  value=(value) { _value = value }
  len { _len }
  len=(value) { _len = value }

  initFields_KeyValueDrawCharArray() {
    _myFontProcessor = null
    _LABEL = null
    _labelX = 0
    _valueX = 0
    _value = null
    _len = 0
        _myFontProcessor = UpdateMyFontProcessor.new(this)
        
        
        _valueX = 0
        _value = CharArrayFactory.getInstance().getZeroCharArray()
        _len = 0
  }
    

    construct new(label, x) {
    super()
    initFields_KeyValueDrawCharArray()
        _LABEL = label
        _labelX = x
    }
    

    updateMeasurement(graphics) {
        var labelWidth = (graphics.getFont().stringWidth(_LABEL) - JR.length(_LABEL))
        _valueX = JR.i32(labelWidth + _labelX)
        _myFontProcessor = MyFontProcessor.getInstance()
    }
    

    paint(graphics, y) {
        _myFontProcessor.process(graphics)
        graphics.drawString(_LABEL, _labelX, y, 0)
        graphics.drawChars(_value, 0, _len, _valueX, y, 0)
    }
    

    update(value, len) {
        _value = value
        _len = len
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/logic/java/character/CharArrayFactory" for CharArrayFactory
import "../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor

