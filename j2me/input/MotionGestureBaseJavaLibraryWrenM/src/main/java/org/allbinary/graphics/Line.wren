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
// package org.allbinary.graphics

import "../../../allbinary_java" for JObject, JException, JR

class Line is JObject {
  p1 { _p1 }
  p1=(value) { _p1 = value }
  p2 { _p2 }
  p2=(value) { _p2 = value }
  deltaX { _deltaX }
  deltaX=(value) { _deltaX = value }
  deltaY { _deltaY }
  deltaY=(value) { _deltaY = value }

  initFields_Line() {
    _p1 = null
    _p2 = null
    _deltaX = 0.0
    _deltaY = 0.0
        
        
        _deltaX = 0.0
        _deltaY = 0.0
  }
    

    construct new(p1, p2) {
    super()
    initFields_Line()
        _p1 = PointFactory.getInstance().ZERO_ZERO
        _p2 = _p1
        this.setP1(p1)
        this.setP2(p2)
    }
    

    getGradient() {
        return (this.getDeltaY() / this.getDeltaX())
    }
    

    update() {
        _deltaX = (this.getP1().getX() - this.getP2().getX())
        _deltaY = (this.getP1().getY() - this.getP2().getY())
    }
    

    getDeltaX() {
        return _deltaX
    }
    

    getDeltaY() {
        return _deltaY
    }
    

    getP1() {
        return _p1
    }
    

    getP2() {
        return _p2
    }
    

    setP1(p1) {
        _p1 = p1
        this.update()
    }
    

    setP2(p2) {
        _p2 = p2
        this.update()
    }
}

import "./GPoint" for GPoint
import "./PointFactory" for PointFactory

