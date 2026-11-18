// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

import "../../../../../allbinary_java" for JObject, JException, JR

class ABStringComponent is JObject {
    static NULL_STRING_COMPONENT {
    if (__NULL_STRING_COMPONENT_set == null) {
      __NULL_STRING_COMPONENT_set = true
      __NULL_STRING_COMPONENT = ABStringComponent.new(BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
    }
    return __NULL_STRING_COMPONENT
  }
  static NULL_STRING_COMPONENT=(value) {
    __NULL_STRING_COMPONENT_set = true
    __NULL_STRING_COMPONENT = value
  }

  initFields_ABStringComponent() {
  }
    

    getBackgroundBasicColor() {
        return BasicColorFactory.getInstance().WHITE
    }
    

    construct new(backgroundBasicColor, foregroundBasicColor) {
    super()
    initFields_ABStringComponent()
    }
    

    getForegroundBasicColor() {
        return BasicColorFactory.getInstance().WHITE
    }
    

    setForegroundBasicColor(foregroundBasicColor) {
    }
}

import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory

