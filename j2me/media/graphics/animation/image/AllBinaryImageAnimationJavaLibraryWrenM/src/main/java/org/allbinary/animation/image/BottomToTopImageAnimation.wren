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

class BottomToTopImageAnimation is ImageSegmentAnimation {
  startHeight { _startHeight }
  startHeight=(value) { _startHeight = value }
  currentHeight { _currentHeight }
  currentHeight=(value) { _currentHeight = value }
  anchor { _anchor }
  anchor=(value) { _anchor = value }

  initFields_BottomToTopImageAnimation() {
    _startHeight = 0
    _currentHeight = 0
    _anchor = 0
        _startHeight = 0
        _currentHeight = 0
        _anchor = Anchor.TOP_LEFT
  }
    

    construct new(image, animationBehavior) {
        super(image, PrimitiveIntUtil.getArrayInstance(), animationBehavior)
        initFields_BottomToTopImageAnimation()
        this.setFrame((this.getSize() - 1))
    }
    

    nextFrame() {
        super.previousFrame()
        this.update()
    }
    

    previousFrame() {
        super.nextFrame()
        this.update()
    }
    

    setFrame(index) {
        super.setFrame(index)
        this.update()
    }
    

    update() {
        _startHeight = ((this.getDrawHeight() * this.getFrame()) / this.getSize())
        _currentHeight = (this.getDrawHeight() - _startHeight)
    }
    

    paintXY(graphics, x, y) {
        graphics.drawRegion(this.getImage(), this.getStartX(), _startHeight, this.getDrawWidth(), _currentHeight, Sprite.TRANS_NONE, x, JR.i32(y + _startHeight), _anchor)
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../javax/microedition/lcdui/game/Sprite" for Sprite
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/graphics/Anchor" for Anchor
import "../../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil

