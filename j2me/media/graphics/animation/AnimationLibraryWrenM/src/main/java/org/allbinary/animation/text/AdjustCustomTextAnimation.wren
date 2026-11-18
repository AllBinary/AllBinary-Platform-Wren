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
// package org.allbinary.animation.text

import "../../../../allbinary_java" for JObject, JException, JR
import "./CustomTextAnimation" for CustomTextAnimation

class AdjustCustomTextAnimation is CustomTextAnimation {
  dx { _dx }
  dx=(value) { _dx = value }
  dy { _dy }
  dy=(value) { _dy = value }

  initFields_AdjustCustomTextAnimation() {
    _dx = 0
    _dy = 0
        
        
  }
    

    construct new(text, fontSize, dx, dy, animationBehavior) {
        super(text, fontSize, animationBehavior)
        initFields_AdjustCustomTextAnimation()
        _dx = dx
        _dy = dy
    }
    

    getDx() {
        return _dx
    }
    

    setDx(dx) {
        _dx = dx
    }
    

    getDy() {
        return _dy
    }
    

    setDy(dy) {
        _dy = dy
    }
    

    paintXY(graphics, x, y) {
        super.paintXY(graphics, JR.i32(x + _dx), JR.i32(y + _dy))
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior

