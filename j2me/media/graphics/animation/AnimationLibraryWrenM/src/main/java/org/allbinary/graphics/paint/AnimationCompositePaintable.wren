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
// package org.allbinary.graphics.paint

import "../../../../allbinary_java" for JObject, JException, JR
import "./InitUpdatePaintable" for InitUpdatePaintable

class AnimationCompositePaintable is InitUpdatePaintable {
  animationInterface { _animationInterface }
  animationInterface=(value) { _animationInterface = value }

  initFields_AnimationCompositePaintable() {
    _animationInterface = null
        
  }
    

    construct new(animationInterface) {
    super()
    initFields_AnimationCompositePaintable()
        _animationInterface = animationInterface
    }
    

    paint(graphics) {
        _animationInterface.paintXY(graphics, 0, 0)
    }
    

    paintThreed(graphics) {
        _animationInterface.paintThreedXYZ(graphics, 0, 0, 0)
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/animation/Animation" for Animation

