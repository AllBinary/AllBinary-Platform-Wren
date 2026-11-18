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
import "./ImageAnimation" for ImageAnimation

class ImageSegmentAnimation is ImageAnimation {
  startX { _startX }
  startX=(value) { _startX = value }
  startY { _startY }
  startY=(value) { _startY = value }
  drawWidth { _drawWidth }
  drawWidth=(value) { _drawWidth = value }
  drawHeight { _drawHeight }
  drawHeight=(value) { _drawHeight = value }
  circularIndexUtil { _circularIndexUtil }
  circularIndexUtil=(value) { _circularIndexUtil = value }
  sequenceArray { _sequenceArray }
  sequenceArray=(value) { _sequenceArray = value }

  initFields_ImageSegmentAnimation() {
    _startX = 0
    _startY = 0
    _drawWidth = 0
    _drawHeight = 0
    _circularIndexUtil = null
    _sequenceArray = null
        
        
        
        
        
        
  }
    

    construct new(image, sequenceArray, animationBehavior) {
        super(image, animationBehavior)
        initFields_ImageSegmentAnimation()
        _startX = 0
        _startY = 0
        _drawWidth = this.getImage().getWidth()
        _drawHeight = this.getImage().getHeight()
        _circularIndexUtil = CircularIndexUtil.createInstance(_drawHeight)
        _sequenceArray = sequenceArray
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
        return _circularIndexUtil.getSize()
    }
    

    setSequence(sequenceArray) {
        _sequenceArray = sequenceArray
    }
    

    getSequence() {
        return _sequenceArray
    }
    

    paintXY(graphics, x, y) {
    }
    

    getStartX() {
        return _startX
    }
    

    setStartX(startX) {
        _startX = startX
    }
    

    getStartY() {
        return _startY
    }
    

    setStartY(startY) {
        _startY = startY
    }
    

    getDrawWidth() {
        return _drawWidth
    }
    

    setDrawWidth(drawWidth) {
        _drawWidth = drawWidth
    }
    

    getDrawHeight() {
        return _drawHeight
    }
    

    setDrawHeight(drawHeight) {
        _drawHeight = drawHeight
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil

