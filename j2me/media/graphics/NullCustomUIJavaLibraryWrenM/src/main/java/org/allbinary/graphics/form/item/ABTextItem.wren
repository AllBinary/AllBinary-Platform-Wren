// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

import "../../../../../allbinary_java" for JObject, JException, JR
import "./CustomCustomItem" for CustomCustomItem

class ABTextItem is CustomCustomItem {

  initFields_ABTextItem() {
  }
    

    construct new(label, layout, altText, backgroundBasicColor, foregroundBasicColor) {
        super(label, backgroundBasicColor, foregroundBasicColor)
    }
    

    keyPressed(keyCode) {
    }
    

    paintUnselected(graphics, x, y) {
    }
    

    getLabelStringComponent() {
        return ABStringComponent.NULL_STRING_COMPONENT
    }
    

    getMinimumWidth() {
        return super.getMinimumWidth()
    }
    

    getMinimumHeight() {
        return super.getMinimumHeight()
    }
    

    getLabel() {
        return super.getLabel()
    }
    

    paintXY(graphics, x, y) {
        super.paintXY(graphics, x, y)
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "./ABCustomItemInterface" for ABCustomItemInterface
import "./ABStringComponent" for ABStringComponent

