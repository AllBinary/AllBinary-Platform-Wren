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

class ImageArrayAnimation is IndexedAnimation {
  imageArray { _imageArray }
  imageArray=(value) { _imageArray = value }
  totalFrames { _totalFrames }
  totalFrames=(value) { _totalFrames = value }
  circularIndexUtil { _circularIndexUtil }
  circularIndexUtil=(value) { _circularIndexUtil = value }
  anchor { _anchor }
  anchor=(value) { _anchor = value }

  initFields_ImageArrayAnimation() {
    _imageArray = null
    _totalFrames = 0
    _circularIndexUtil = null
    _anchor = 0
        _imageArray = NullImage.NULL_IMAGE_ARRAY
        _totalFrames = 0
        _circularIndexUtil = CircularIndexUtil.NULL_CIRCULAR_INDEX_UTIL
        _anchor = Anchor.TOP_LEFT
  }
    

    construct new(imageArray, animationBehavior) {
        super(animationBehavior)
        initFields_ImageArrayAnimation()
        this.setImageArray(imageArray)
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
    

    getImage(index) {
        return _imageArray[index]
    }
    

    getImageArray() {
        return _imageArray
    }
    

    setImageArray(imageArray) {
        _imageArray = imageArray
        _totalFrames = imageArray.count
        _circularIndexUtil = CircularIndexUtil.createInstance(_totalFrames)
    }
    

    paintXY(graphics, x, y) {
        graphics.drawImage(_imageArray[_circularIndexUtil.getIndex()], x, y, _anchor)
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../javax/microedition/lcdui/NullImage" for NullImage
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/graphics/Anchor" for Anchor
import "../../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil
import "../../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil

