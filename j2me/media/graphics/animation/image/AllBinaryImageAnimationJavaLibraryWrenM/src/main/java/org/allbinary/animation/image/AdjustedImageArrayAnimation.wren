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
// package org.allbinary.animation.image

import "../../../../allbinary_java" for JObject, JException, JR
import "./ImageArrayAnimation" for ImageArrayAnimation

class AdjustedImageArrayAnimation is ImageArrayAnimation {
  dx { _dx }
  dx=(value) { _dx = value }
  dy { _dy }
  dy=(value) { _dy = value }

  initFields_AdjustedImageArrayAnimation() {
    _dx = 0
    _dy = 0
        _dx = 0
        _dy = 0
  }
    

    construct new(imageArray, dx, dy, animationBehavior) {
        super(imageArray, animationBehavior)
        initFields_AdjustedImageArrayAnimation()
        this.init(dx, dy)
    }
    

    init(dx, dy) {
        this.setDx(dx)
        this.setDy(dy)
    }
    

    paintXY(graphics, x, y) {
        super.paintXY(graphics, JR.i32(x + _dx), JR.i32(y + _dy))
    }
    

    setDx(dx) {
        _dx = dx
    }
    

    getDx() {
        return _dx
    }
    

    setDy(dy) {
        _dy = dy
    }
    

    getDy() {
        return _dy
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior

