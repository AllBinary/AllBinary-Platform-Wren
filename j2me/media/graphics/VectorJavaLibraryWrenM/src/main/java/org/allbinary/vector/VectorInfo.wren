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
// package org.allbinary.vector

import "../../../allbinary_java" for JObject, JException, JR

class VectorInfo is JObject {
  width { _width }
  width=(value) { _width = value }
  height { _height }
  height=(value) { _height = value }
  points { _points }
  points=(value) { _points = value }
  totalFrames { _totalFrames }
  totalFrames=(value) { _totalFrames = value }

  initFields_VectorInfo() {
    _width = 0
    _height = 0
    _points = null
    _totalFrames = 0
        
        
        
        
  }
    

    construct new(width, height, points, totalFrames) {
    super()
    initFields_VectorInfo()
        _width = width
        _height = height
        _points = points
        _totalFrames = totalFrames
    }
    

    getWidth() {
        return _width
    }
    

    setWidth(width) {
        _width = width
    }
    

    getHeight() {
        return _height
    }
    

    setHeight(height) {
        _height = height
    }
    

    getPoints() {
        return _points
    }
    

    setPoints(points) {
        _points = points
    }
    

    getTotalFrames() {
        return _totalFrames
    }
    

    setTotalFrames(totalFrames) {
        _totalFrames = totalFrames
    }
}


