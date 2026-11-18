// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

import "../../../../../allbinary_java" for JObject, JException, JR

class ABCustomItem is JObject {
    static NULL_CUSTOM_ITEM {
    if (__NULL_CUSTOM_ITEM_set == null) {
      __NULL_CUSTOM_ITEM_set = true
      __NULL_CUSTOM_ITEM = NullUtil.getInstance().NULL_OBJECT
    }
    return __NULL_CUSTOM_ITEM
  }
  static NULL_CUSTOM_ITEM=(value) {
    __NULL_CUSTOM_ITEM_set = true
    __NULL_CUSTOM_ITEM = value
  }

  initFields_ABCustomItem() {
  }
    

    static getNullInstance() {
        if ((ABCustomItem.NULL_CUSTOM_ITEM == NullUtil.getInstance().NULL_OBJECT)) {
            ABCustomItem.NULL_CUSTOM_ITEM = ABCustomItem.new(StringUtil.getInstance().EMPTY_STRING, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
        }
        return ABCustomItem.NULL_CUSTOM_ITEM
    }
    

    construct new(label, backgroundBasicColor, foregroundBasicColor) {
    super()
    initFields_ABCustomItem()
    }
    

    setOwner(owner) {
    }
    

    paintXY(graphics, x, y) {
    }
    

    paintUnselected(graphics, x, y) {
    }
    

    isFocusable() {
        return false
    }
    

    getLabel() {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    setLabel(label) {
    }
    

    getHeight() {
        return 0
    }
    

    setHeight(height) {
    }
    

    getValue() {
        return 0.0
    }
    

    setValue(value) {
    }
    

    getMinimumWidth() {
        return 0
    }
    

    getMinimumHeight() {
        return 0
    }
    

    preMeasurement(graphics) {
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../javax/microedition/lcdui/Screen" for Screen
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil

