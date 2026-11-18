// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

import "../../../../../allbinary_java" for JObject, JException, JR
import "./ABCustomItem" for ABCustomItem

class ABCustomGaugeItem is ABCustomItem {
    static NULL_GAUGE_ITEM {
    if (__NULL_GAUGE_ITEM_set == null) {
      __NULL_GAUGE_ITEM_set = true
      __NULL_GAUGE_ITEM = ABCustomGaugeItem.new(StringUtil.getInstance().EMPTY_STRING, 1, 0, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
    }
    return __NULL_GAUGE_ITEM
  }
  static NULL_GAUGE_ITEM=(value) {
    __NULL_GAUGE_ITEM_set = true
    __NULL_GAUGE_ITEM = value
  }

  initFields_ABCustomGaugeItem() {
  }
    

    construct new(label, maxValue, initialValue, backgroundBasicColor, foregroundBasicColor) {
        super(label, backgroundBasicColor, foregroundBasicColor)
    }
}

import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil

