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
// package org.allbinary.animation

import "../../../allbinary_java" for JObject, JException, JR
import "./VectorAnimation" for VectorAnimation

class ColorLessVectorAnimation is VectorAnimation {

  initFields_ColorLessVectorAnimation() {
  }
    

    construct new(currentPoints, animationBehavior) {
        super(currentPoints, BasicColorFactory.getInstance().WHITE, animationBehavior)
    }
    

    paintXY(graphics, x, y) {
        this.paintVectors(graphics, x, y)
    }
}

import "../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "./AnimationBehavior" for AnimationBehavior

