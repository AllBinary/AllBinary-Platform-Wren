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
import "./CircleAnimation" for CircleAnimation

class AdjustedCircleAnimation is CircleAnimation {
  xAdjustment { _xAdjustment }
  xAdjustment=(value) { _xAdjustment = value }
  yAdjustment { _yAdjustment }
  yAdjustment=(value) { _yAdjustment = value }

  initFields_AdjustedCircleAnimation() {
    _xAdjustment = 0
    _yAdjustment = 0
        _xAdjustment = 0
        _yAdjustment = 0
  }
    

    static createAnimation(width, height, xAdjustment, yAdjustment, basicColor) {
        var adjustedCircleAnimation = AdjustedCircleAnimation.new(width, height, basicColor)
        adjustedCircleAnimation.initXY(xAdjustment, yAdjustment)
        return adjustedCircleAnimation
    }
    

    static createW(width, height, innerWidth, basicColor) {
        var adjustedCircleAnimation = AdjustedCircleAnimation.new(width, height, basicColor)
        adjustedCircleAnimation.init(innerWidth)
        return adjustedCircleAnimation
    }
    

    construct new(width, height, basicColor) {
        super(width, height, basicColor)
        initFields_AdjustedCircleAnimation()
    }
    

    initXY(xAdjustment, yAdjustment) {
        _xAdjustment = xAdjustment
        _yAdjustment = yAdjustment
    }
    

    init(innerWidth) {
        if (AndroidUtil.isAndroid()) {
            var widthPortion = (JR.idiv((JR.i32((JR.idiv(innerWidth, 3)) * 10)), 7))
            _xAdjustment = -(((JR.shr(this.width, 1)) - widthPortion))
            _yAdjustment = _xAdjustment
        } else {
            _xAdjustment = -(((JR.shr(this.width, 1)) - innerWidth))
            _yAdjustment = _xAdjustment
        }
    }
    

    paintXY(graphics, x, y) {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor())
        graphics.drawArc(JR.i32(x + _xAdjustment), JR.i32(y + _yAdjustment), this.width, this.height, 0, this.TOTAL_ANGLE)
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/AndroidUtil" for AndroidUtil
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor

