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
import "./ImageSegmentAnimation" for ImageSegmentAnimation

class TopToBottomImageAnimation is ImageSegmentAnimation {
  currentHeight { _currentHeight }
  currentHeight=(value) { _currentHeight = value }
  anchor { _anchor }
  anchor=(value) { _anchor = value }

  initFields_TopToBottomImageAnimation() {
    _currentHeight = 0
    _anchor = 0
        
        _anchor = Anchor.TOP_LEFT
  }
    

    construct new(image, sequenceArray, animationBehavior) {
        super(image, sequenceArray, animationBehavior)
        initFields_TopToBottomImageAnimation()
        _currentHeight = 0
        if ((this.getSequence()[0] == -1)) {
            this.setFrame((this.getSize() - 1))
        }
    }
    

    nextFrame() {
        if ((this.getSequence()[0] == -1)) {
            super.previousFrame()
        } else {
            super.nextFrame()
        }
        this.update()
    }
    

    previousFrame() {
        if ((this.getSequence()[0] == -1)) {
            super.nextFrame()
        } else {
            super.previousFrame()
        }
        this.update()
    }
    

    setFrame(index) {
        super.setFrame(index)
        this.update()
    }
    

    update() {
        _currentHeight = ((this.getDrawHeight() * this.getFrame()) / this.getSize())
    }
    

    paintXY(graphics, x, y) {
        graphics.drawRegion(this.getImage(), this.getStartX(), this.getStartY(), this.getDrawWidth(), _currentHeight, Sprite.TRANS_NONE, x, y, _anchor)
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../javax/microedition/lcdui/game/Sprite" for Sprite
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/graphics/Anchor" for Anchor

