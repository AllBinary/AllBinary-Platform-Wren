// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

import "../../../../../allbinary_java" for JObject, JException, JR
import "./ABTextItem" for ABTextItem

class ABTextFieldItem is ABTextItem {
  font { _font }
  font=(value) { _font = value }

  initFields_ABTextFieldItem() {
    _font = null
        
  }
    

    construct new(canvas, visitor, label, value, maxSize, layout, altText, font, backgroundBasicColor, foregroundBasicColor) {
        super(label, layout, altText, backgroundBasicColor, foregroundBasicColor)
        initFields_ABTextFieldItem()
        _font = font
    }
    

    getLabel() {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    setLabel(label) {
    }
    

    getString() {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    setString(string) {
    }
    

    setFocus(state) {
    }
    

    getFontHeight() {
        return _font.getHeight()
    }
    

    setBackgroundBasicColorP(basicColor) {
    }
    

    setForegroundBasicColorP(basicColor) {
    }
}

import "../../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../../javax/microedition/lcdui/Font" for Font
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/logic/util/visitor/Visitor" for Visitor

