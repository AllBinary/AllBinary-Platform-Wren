/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
import "./ImageAnimation" for ImageAnimation

class AdjustedImageAnimation is ImageAnimation {
  dx { _dx }
  dx=(value) { _dx = value }
  dy { _dy }
  dy=(value) { _dy = value }

  initFields_AdjustedImageAnimation() {
    _dx = 0
    _dy = 0
        _dx = 0
        _dy = 0
  }
    

    construct new(image, dx, dy, animationBehavior) {
        super(image, animationBehavior)
        initFields_AdjustedImageAnimation()
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

