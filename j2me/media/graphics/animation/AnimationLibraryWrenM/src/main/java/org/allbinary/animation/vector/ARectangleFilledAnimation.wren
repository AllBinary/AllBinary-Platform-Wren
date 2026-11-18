// Generated Code Do Not Modify
// package org.allbinary.animation.vector

import "../../../../allbinary_java" for JObject, JException, JR
import "./RectangleFilledAnimation" for RectangleFilledAnimation

class ARectangleFilledAnimation is RectangleFilledAnimation {
  x { _x }
  x=(value) { _x = value }
  y { _y }
  y=(value) { _y = value }

  initFields_ARectangleFilledAnimation() {
    _x = 0
    _y = 0
        _x = 0
        _y = 0
  }
    

    construct new() {
        super(0, 0, BasicColorFactory.getInstance().BLACK)
        initFields_ARectangleFilledAnimation()
    }
    

    nextFrame() {
    }
    

    paintXY(graphics, unusedX, unusedY) {
        super.paintXY(graphics, _x, _y)
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory

