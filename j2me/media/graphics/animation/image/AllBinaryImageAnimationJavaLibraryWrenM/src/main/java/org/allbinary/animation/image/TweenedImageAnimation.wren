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
import "../../../../org/allbinary/animation/IndexedAnimation" for IndexedAnimation

class TweenedImageAnimation is IndexedAnimation {
  image { _image }
  image=(value) { _image = value }
  dx { _dx }
  dx=(value) { _dx = value }
  dy { _dy }
  dy=(value) { _dy = value }
  totalFrames { _totalFrames }
  totalFrames=(value) { _totalFrames = value }
  circularIndexUtil { _circularIndexUtil }
  circularIndexUtil=(value) { _circularIndexUtil = value }
  anchor { _anchor }
  anchor=(value) { _anchor = value }

  initFields_TweenedImageAnimation() {
    _image = null
    _dx = 0
    _dy = 0
    _totalFrames = 0
    _circularIndexUtil = null
    _anchor = 0
        
        
        
        
        
        _anchor = Anchor.TOP_LEFT
  }
    

    construct new(image, dx, dy, totalFrames, animationBehavior) {
        super(animationBehavior)
        initFields_TweenedImageAnimation()
        _image = image
        _dx = dx
        _dy = dy
        _totalFrames = totalFrames
        _circularIndexUtil = CircularIndexUtil.createInstance(_totalFrames)
    }
    

    getAnimationSize() {
        return this.getSize()
    }
    

    nextFrame() {
        _circularIndexUtil.next()
    }
    

    previousFrame() {
        _circularIndexUtil.previous()
    }
    

    setFrame(index) {
        _circularIndexUtil.setIndex(index)
    }
    

    getFrame() {
        return _circularIndexUtil.getIndex()
    }
    

    getSize() {
        return _totalFrames
    }
    

    setSequence(sequence) {
    }
    

    getSequence() {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    paintXY(graphics, x, y) {
        var frame = this.getFrame()
        var currentX = JR.i32(_dx * frame)
        var currentY = JR.i32(_dy * frame)
        graphics.drawImage(_image, JR.i32(x + currentX), JR.i32(y + currentY), _anchor)
    }
    

    close() {
        DisposalUtil.getInstance().disposeImage(_image)
    }
    

    finalize() {
        DisposalUtil.getInstance().disposeImage(_image)
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/DisposalUtil" for DisposalUtil
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/graphics/Anchor" for Anchor
import "../../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil
import "../../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil

