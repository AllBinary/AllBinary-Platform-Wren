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

class ImageArrayRotationAnimationInfo is JObject {
  imageArray { _imageArray }
  imageArray=(value) { _imageArray = value }
  angleIncrement { _angleIncrement }
  angleIncrement=(value) { _angleIncrement = value }
  totalAngle { _totalAngle }
  totalAngle=(value) { _totalAngle = value }
  dx { _dx }
  dx=(value) { _dx = value }
  dy { _dy }
  dy=(value) { _dy = value }

  initFields_ImageArrayRotationAnimationInfo() {
    _imageArray = null
    _angleIncrement = 0
    _totalAngle = 0
    _dx = 0
    _dy = 0
        
        
        
        
        
  }
    

    construct new(imageArray, angleIncrement, totalAngle, dx, dy) {
    super()
    initFields_ImageArrayRotationAnimationInfo()
        _imageArray = imageArray
        _angleIncrement = angleIncrement
        _totalAngle = totalAngle
        _dx = dx
        _dy = dy
    }
    

    setImageArray(imageArray) {
        _imageArray = imageArray
    }
    

    getImageArray() {
        return _imageArray
    }
    

    getAngleInfoP() {
        return AngleInfo.getInstance(JR.i16(_angleIncrement))
    }
    

    setTotalAngle(totalAngle) {
        _totalAngle = totalAngle
    }
    

    getTotalAngle() {
        return _totalAngle
    }
    

    setDx(dx) {
        _dx = dx
    }
    

    getDx() {
        return _dx
    }
    

    setDy(dy) {
        _dy = dy
    }
    

    getDy() {
        return _dy
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/math/AngleInfo" for AngleInfo

