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
import "./SpriteIndexedAnimation" for SpriteIndexedAnimation

class AdjustedSpriteIndexedAnimation is SpriteIndexedAnimation {
  dx { _dx }
  dx=(value) { _dx = value }
  dy { _dy }
  dy=(value) { _dy = value }

  initFields_AdjustedSpriteIndexedAnimation() {
    _dx = 0
    _dy = 0
        
        
  }
    

    construct new(sprite, image, basicColorArray, dx, dy, animationBehavior) {
        super(sprite, image, basicColorArray, animationBehavior)
        initFields_AdjustedSpriteIndexedAnimation()
        _dx = dx
        _dy = dy
    }
    

    paintFrame(graphics, frame, x, y) {
        this.setFrame(frame)
        this.sprite.setPosition(JR.i32(x + _dx), JR.i32(y + _dy))
        super.paint(graphics)
    }
    

    paintXY(g, x, y) {
        this.sprite.setPosition(JR.i32(x + _dx), JR.i32(y + _dy))
        super.paint(g)
    }
    

    paint(g) {
        this.sprite.setPosition(_dx, _dy)
        super.paint(g)
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../javax/microedition/lcdui/Image" for Image
import "../../../../../javax/microedition/lcdui/game/Sprite" for Sprite
import "../../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor

