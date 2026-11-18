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

class KeyValueDrawString is JObject {
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

  initFields_KeyValueDrawString() {
    _myFontProcessor = null
    _LABEL = null
    _labelX = 0
    _valueX = 0
    _value = null
        _myFontProcessor = UpdateMyFontProcessor.new(this)
        
        
        _valueX = 0
        _value = StringUtil.getInstance().EMPTY_STRING
  }
    

    construct new(label, x) {
    super()
    initFields_KeyValueDrawString()
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
        graphics.drawString(_value, _valueX, y, 0)
    }
    

    update(value) {
        _value = value
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil

