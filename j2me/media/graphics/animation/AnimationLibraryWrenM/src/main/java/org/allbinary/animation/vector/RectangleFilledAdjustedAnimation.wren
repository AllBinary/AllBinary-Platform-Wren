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
// package org.allbinary.animation.vector

import "../../../../allbinary_java" for JObject, JException, JR
import "./RectangleFilledAnimation" for RectangleFilledAnimation

class RectangleFilledAdjustedAnimation is RectangleFilledAnimation {
  offsetX { _offsetX }
  offsetX=(value) { _offsetX = value }
  offsetY { _offsetY }
  offsetY=(value) { _offsetY = value }

  initFields_RectangleFilledAdjustedAnimation() {
    _offsetX = 0
    _offsetY = 0
        
        
  }
    

    construct new(width, height, offsetX, offsetY, basicColor) {
        super(width, height, basicColor)
        initFields_RectangleFilledAdjustedAnimation()
        _offsetX = offsetX
        _offsetY = offsetY
        this.setBasicColorP(basicColor)
    }
    

    nextFrame() {
    }
    

    paintXY(graphics, x, y) {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor())
        super.paintXY(graphics, JR.i32(x + _offsetX), JR.i32(y + _offsetY))
    }
    

    setOffsetX(offsetX) {
        _offsetX = offsetX
    }
    

    setOffsetY(offsetY) {
        _offsetY = offsetY
    }
    

    getBasicColorP() {
        return super.getBasicColorP()
    }
    

    setBasicColorP(basicColor) {
        super.setBasicColorP(basicColor)
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/color/ColorCompositeInterface" for ColorCompositeInterface

