// Generated Code Do Not Modify
// package org.allbinary.animation

import "../../../allbinary_java" for JObject, JException, JR
import "./IndexedAnimation" for IndexedAnimation

class FillAnimation is IndexedAnimation {
  pixelBuffer { _pixelBuffer }
  pixelBuffer=(value) { _pixelBuffer = value }
  width { _width }
  width=(value) { _width = value }
  height { _height }
  height=(value) { _height = value }

  initFields_FillAnimation() {
    _pixelBuffer = null
    _width = 0
    _height = 0
        
        
        
  }
    

    construct new(pixelBuffer, width, height, animationBehavior) {
        super(animationBehavior)
        initFields_FillAnimation()
        _width = 100
        _height = 100
        _pixelBuffer = pixelBuffer
    }
    

    setBasicColorP(basicColor) {
        var changed = false
        if (((this.getBasicColorP() == null) || (this.getBasicColorP().intValue() != basicColor.intValue()))) {
            changed = true
        }
        super.setBasicColorP(basicColor)
        if (changed) {
            this.updateModifiers()
        }
    }
    

    changeBasicColor(basicColor) {
        var changed = false
        if (((this.getChangeBasicColor() == null) || (this.getChangeBasicColor().intValue() != basicColor.intValue()))) {
            changed = true
        }
        super.changeBasicColor(basicColor)
        if (changed) {
            this.updateModifiers()
        }
    }
    

    setAlpha(alpha) {
        var changed = false
        if ((this.alphaP != alpha)) {
            changed = true
        }
        super.setAlpha(alpha)
        if (changed) {
            this.updateModifiers()
        }
    }
    

    setScale(scaleX, scaleY) {
    }
    

    setMaxScale(maxScaleX, maxScaleY) {
    }
    

    updateModifiers() {
    }
    

    paint(g) {
        g.drawRGB(_pixelBuffer, 0, _width, 0, 0, _width, _height, true)
    }
}

import "../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "./AnimationBehavior" for AnimationBehavior

