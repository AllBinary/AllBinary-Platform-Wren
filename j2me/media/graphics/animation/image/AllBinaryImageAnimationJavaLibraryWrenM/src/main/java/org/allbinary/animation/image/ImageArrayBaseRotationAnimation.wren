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
import "../../../../org/allbinary/animation/RotationAnimation" for RotationAnimation

class ImageArrayBaseRotationAnimation is RotationAnimation {
  imageModifierUtil { _imageModifierUtil }
  imageModifierUtil=(value) { _imageModifierUtil = value }
  originalImageArray { _originalImageArray }
  originalImageArray=(value) { _originalImageArray = value }
  imageArray { _imageArray }
  imageArray=(value) { _imageArray = value }
  currentImage { _currentImage }
  currentImage=(value) { _currentImage = value }
  totalFrames { _totalFrames }
  totalFrames=(value) { _totalFrames = value }
  anchor { _anchor }
  anchor=(value) { _anchor = value }

  initFields_ImageArrayBaseRotationAnimation() {
    _imageModifierUtil = null
    _originalImageArray = null
    _imageArray = null
    _currentImage = null
    _totalFrames = 0
    _anchor = 0
        _imageModifierUtil = ImageModifierUtil.getInstanceOrCreate()
        
        _imageArray = NullImage.NULL_IMAGE_ARRAY
        
        _totalFrames = 0
        _anchor = Anchor.TOP_LEFT
  }
    

    construct new(originalImageArray, angleInfo, animationBehavior) {
        super(angleInfo, CircularIndexUtil.createInstance((360 / angleInfo.getAngleIncrementInfo().getAngleIncrement())), animationBehavior)
        initFields_ImageArrayBaseRotationAnimation()
        _originalImageArray = originalImageArray
        this.setImageArray(_imageModifierUtil.getImageArray(originalImageArray))
        _currentImage = _imageArray[this.circularIndexUtil.getIndex()]
    }
    

    getAnimationSize() {
        return this.getSize()
    }
    

    setAlpha(alpha) {
        if ((this.alphaP != alpha)) {
            super.setAlpha(alpha)
            _imageModifierUtil.reset()
            var index = this.circularIndexUtil.getIndex()
            _imageModifierUtil.setAlpha(_originalImageArray[index], _imageArray[index], index, this.alphaP)
        }
    }
    

    nextRotation() {
        super.nextRotation()
        var index = this.circularIndexUtil.getIndex()
        _imageModifierUtil.setAlpha(_originalImageArray[index], _imageArray[index], index, this.alphaP)
        _currentImage = _imageArray[index]
    }
    

    previousRotation() {
        super.previousRotation()
        var index = this.circularIndexUtil.getIndex()
        _imageModifierUtil.setAlpha(_originalImageArray[index], _imageArray[index], index, this.alphaP)
        _currentImage = _imageArray[index]
    }
    

    setFrame(index2) {
        super.setFrame(index2)
        var index = this.circularIndexUtil.getIndex()
        _imageModifierUtil.setAlpha(_originalImageArray[index], _imageArray[index], index, this.alphaP)
        _currentImage = _imageArray[index]
    }
    

    setSequence(sequence) {
    }
    

    getSequence() {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    setImageArray(imageArray) {
        _imageArray = imageArray
        _totalFrames = imageArray.count
        this.circularIndexUtil = CircularIndexUtil.createInstance(_totalFrames)
    }
    

    paintXY(graphics, x, y) {
        graphics.drawImage(_currentImage, x, y, _anchor)
    }
    

    close() {
        var disposalUtil = DisposalUtil.getInstance()
        var size2 = _imageArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size2))) break
            disposalUtil.disposeImage(_imageArray[index])
            }
        }
        var size = _originalImageArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            disposalUtil.disposeImage(_originalImageArray[index])
            }
        }
        disposalUtil.disposeImage(_currentImage)
    }
    

    finalize() {
        var disposalUtil = DisposalUtil.getInstance()
        var size2 = _imageArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size2))) break
            disposalUtil.disposeImage(_imageArray[index])
            }
        }
        var size = _originalImageArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            disposalUtil.disposeImage(_originalImageArray[index])
            }
        }
        disposalUtil.disposeImage(_currentImage)
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../javax/microedition/lcdui/NullImage" for NullImage
import "../../../../org/allbinary/DisposalUtil" for DisposalUtil
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/graphics/Anchor" for Anchor
import "../../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil
import "../../../../org/allbinary/math/AngleInfo" for AngleInfo
import "../../../../org/allbinary/media/image/ImageModifierUtil" for ImageModifierUtil
import "../../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil

