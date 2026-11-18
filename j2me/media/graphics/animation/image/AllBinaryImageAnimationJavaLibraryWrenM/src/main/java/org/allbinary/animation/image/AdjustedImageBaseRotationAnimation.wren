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
import "./ImageBaseRotationAnimation" for ImageBaseRotationAnimation

class AdjustedImageBaseRotationAnimation is ImageBaseRotationAnimation {
  dx { _dx }
  dx=(value) { _dx = value }
  dy { _dy }
  dy=(value) { _dy = value }

  initFields_AdjustedImageBaseRotationAnimation() {
    _dx = 0
    _dy = 0
        _dx = 0
        _dy = 0
  }
    

    construct new(image, angleInfo, totalAngle, dx, dy, animationBehavior) {
        super(image, angleInfo, totalAngle, animationBehavior)
        initFields_AdjustedImageBaseRotationAnimation()
        this.init(dx, dy)
    }
    

    init(dx, dy) {
        _dx = dx
        _dy = dy
    }
    

    paintXY(graphics, x, y) {
        super.paintXY(graphics, JR.i32(x + _dx), JR.i32(y + _dy))
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/math/AngleInfo" for AngleInfo

