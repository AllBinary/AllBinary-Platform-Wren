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
// package org.allbinary.animation.image.sprite

import "../../../../../allbinary_java" for JObject, JException, JR
import "./AllBinarySpriteRotationAnimation" for AllBinarySpriteRotationAnimation

class AllBinaryAdjustedSpriteRotationAnimation is AllBinarySpriteRotationAnimation {
  dx { _dx }
  dx=(value) { _dx = value }
  dy { _dy }
  dy=(value) { _dy = value }

  initFields_AllBinaryAdjustedSpriteRotationAnimation() {
    _dx = 0
    _dy = 0
        
        
  }
    

    construct new(sprite, image, dx, dy, animationBehavior) {
        super(sprite, image, animationBehavior)
        initFields_AllBinaryAdjustedSpriteRotationAnimation()
        _dx = dx
        _dy = dy
    }
    

    paintXY(g, x, y) {
        this.sprite.setPosition(JR.i32(x + _dx), JR.i32(y + _dy))
        this.paint(g)
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../javax/microedition/lcdui/Image" for Image
import "../../../../../javax/microedition/lcdui/game/Sprite" for Sprite
import "../../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior

