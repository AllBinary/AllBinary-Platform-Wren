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
// package org.allbinary.game.paint

import "../../../../allbinary_java" for JObject, JException, JR
import "./ColorFillBasePaintable" for ColorFillBasePaintable

class ColorFillPaintable is ColorFillBasePaintable {
  displayInfoSingleton { _displayInfoSingleton }
  displayInfoSingleton=(value) { _displayInfoSingleton = value }

  initFields_ColorFillPaintable() {
    _displayInfoSingleton = null
        _displayInfoSingleton = DisplayInfoSingleton.getInstance()
  }
    

    construct new(basicColor) {
        super(basicColor)
        initFields_ColorFillPaintable()
    }
    

    paint(graphics) {
        graphics.setColor(this.colorP)
        graphics.fillRect(0, 0, _displayInfoSingleton.getLastWidth(), _displayInfoSingleton.getLastHeight())
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton

