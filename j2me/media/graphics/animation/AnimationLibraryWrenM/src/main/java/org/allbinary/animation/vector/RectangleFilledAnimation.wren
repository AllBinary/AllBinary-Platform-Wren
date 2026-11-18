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
import "../../../../org/allbinary/animation/Animation" for Animation

class RectangleFilledAnimation is Animation {
  widthP { _widthP }
  widthP=(value) { _widthP = value }
  heightP { _heightP }
  heightP=(value) { _heightP = value }

  initFields_RectangleFilledAnimation() {
    _widthP = 0
    _heightP = 0
        
        
  }
    

    construct new(width, height, basicColor) {
    super()
    initFields_RectangleFilledAnimation()
        _widthP = width
        _heightP = height
        this.setBasicColorP(basicColor)
    }
    

    nextFrame() {
    }
    

    paintXY(graphics, x, y) {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor())
        graphics.fillRect(x, y, _widthP, _heightP)
    }
    

    setWidth(width) {
        _widthP = width
    }
    

    setHeight(height) {
        _heightP = height
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

