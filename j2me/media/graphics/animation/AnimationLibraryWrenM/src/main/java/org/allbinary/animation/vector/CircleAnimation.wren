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

class CircleAnimation is Animation {
  TOTAL_ANGLE { _TOTAL_ANGLE }
  TOTAL_ANGLE=(value) { _TOTAL_ANGLE = value }
  width { _width }
  width=(value) { _width = value }
  height { _height }
  height=(value) { _height = value }

  initFields_CircleAnimation() {
    _TOTAL_ANGLE = 0
    _width = 0
    _height = 0
        _TOTAL_ANGLE = JR.i32(AngleFactory.getInstance().TOTAL_ANGLE)
        
        
  }
    

    construct new(width, height, basicColor) {
    super()
    initFields_CircleAnimation()
        _width = width
        _height = height
        this.setBasicColorP(basicColor)
    }
    

    nextFrame() {
    }
    

    paintXY(graphics, x, y) {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor())
        graphics.drawArc(x, y, _width, _height, 0, _TOTAL_ANGLE)
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
import "../../../../org/allbinary/math/AngleFactory" for AngleFactory

