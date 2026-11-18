// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

import "../../../../../allbinary_java" for JObject, JException, JR
import "./ABCustomItem" for ABCustomItem

class CustomCustomItem is ABCustomItem {
  updateMyFontProcessor { _updateMyFontProcessor }
  updateMyFontProcessor=(value) { _updateMyFontProcessor = value }
  myFontProcessor { _myFontProcessor }
  myFontProcessor=(value) { _myFontProcessor = value }

  initFields_CustomCustomItem() {
    _updateMyFontProcessor = null
    _myFontProcessor = null
        _updateMyFontProcessor = UpdateMyFontProcessor.new(this)
        _myFontProcessor = _updateMyFontProcessor
  }
    

    construct new(label, backgroundBasicColor, foregroundBasicColor) {
        super(label, backgroundBasicColor, foregroundBasicColor)
        initFields_CustomCustomItem()
    }
    

    updateMeasurement(graphics) {
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor

