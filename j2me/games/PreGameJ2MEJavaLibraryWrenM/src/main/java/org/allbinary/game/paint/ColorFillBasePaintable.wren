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
import "../../../../org/allbinary/graphics/paint/Paintable" for Paintable

class ColorFillBasePaintable is Paintable {
  basicColor { _basicColor }
  basicColor=(value) { _basicColor = value }
  colorP { _colorP }
  colorP=(value) { _colorP = value }

  initFields_ColorFillBasePaintable() {
    _basicColor = null
    _colorP = 0
        _basicColor = BasicColorFactory.getInstance().WHITE
        _colorP = 0
  }
    

    construct new(basicColor) {
    super()
    initFields_ColorFillBasePaintable()
        this.setBasicColorP(basicColor)
    }
    

    setBasicColorP(basicColor) {
        _basicColor = basicColor
        this.setColor(this.getBasicColorP().intValue())
    }
    

    getBasicColorP() {
        return _basicColor
    }
    

    getColor() {
        return _colorP
    }
    

    setColor(color) {
        _colorP = color
    }
    

    paint(graphics) {
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../org/allbinary/graphics/color/ColorCompositeInterface" for ColorCompositeInterface

