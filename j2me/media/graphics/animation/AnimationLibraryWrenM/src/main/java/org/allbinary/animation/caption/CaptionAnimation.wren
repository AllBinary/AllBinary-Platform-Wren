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
// package org.allbinary.animation.caption

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/animation/Animation" for Animation

class CaptionAnimation is Animation {
  animationInterface { _animationInterface }
  animationInterface=(value) { _animationInterface = value }
  overlayAnimationInterface { _overlayAnimationInterface }
  overlayAnimationInterface=(value) { _overlayAnimationInterface = value }
  captionDx { _captionDx }
  captionDx=(value) { _captionDx = value }
  captionDy { _captionDy }
  captionDy=(value) { _captionDy = value }
  dx { _dx }
  dx=(value) { _dx = value }
  dy { _dy }
  dy=(value) { _dy = value }

  initFields_CaptionAnimation() {
    _animationInterface = null
    _overlayAnimationInterface = null
    _captionDx = 0
    _captionDy = 0
    _dx = 0
    _dy = 0
        
        
        
        
        
        
  }
    

    construct new(animationInterface, overlayAnimationInterface, captionDx, captionDy, dx, dy) {
    super()
    initFields_CaptionAnimation()
        _animationInterface = animationInterface
        _overlayAnimationInterface = overlayAnimationInterface
        _captionDx = captionDx
        _captionDy = captionDy
        _dx = dx
        _dy = dy
    }
    

    nextFrame() {
    }
    

    paintXY(graphics, x, y) {
        _animationInterface.paintXY(graphics, JR.i32(x + _captionDx), JR.i32(y + _captionDy))
        _overlayAnimationInterface.paintXY(graphics, JR.i32(JR.i32(x + _captionDx) + _dx), JR.i32(JR.i32(y + _captionDy) + _dy))
    }
    

    paintThreedXYZ(graphics, x, y, z) {
        _animationInterface.paintThreedXYZ(graphics, JR.i32(x + _captionDx), JR.i32(y + _captionDy), z)
        _overlayAnimationInterface.paintThreedXYZ(graphics, JR.i32(JR.i32(x + _captionDx) + _dx), JR.i32(JR.i32(y + _captionDy) + _dy), z)
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics

