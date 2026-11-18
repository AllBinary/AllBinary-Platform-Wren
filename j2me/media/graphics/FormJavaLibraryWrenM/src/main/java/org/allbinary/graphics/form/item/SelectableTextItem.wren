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
// package org.allbinary.graphics.form.item

import "../../../../../allbinary_java" for JObject, JException, JR
import "./ABTextItem" for ABTextItem

class SelectableTextItem is ABTextItem {

  initFields_SelectableTextItem() {
  }
    

    construct new(label, layout, altText, backgroundBasicColor, foregroundBasicColor) {
        super(label, layout, altText, backgroundBasicColor, foregroundBasicColor)
    }
    

    isFocusable() {
        return true
    }
    

    paintXY(graphics, x, y) {
        this.myFontProcessor.process(graphics)
        var stringComponent = this.getLabelStringComponent()
        if ((stringComponent != null)) {
            graphics.setColor(stringComponent.getForegroundBasicColor().intValue())
        }
        graphics.drawString(this.getLabel(), JR.i32(x + 2), y, 0)
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "./ABStringComponent" for ABStringComponent

