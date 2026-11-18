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
import "./GPoint" for GPoint

class CustomGPoint is GPoint {
    static NULL_CUSTOM_POINT {
    if (__NULL_CUSTOM_POINT_set == null) {
      __NULL_CUSTOM_POINT_set = true
      __NULL_CUSTOM_POINT = CustomGPoint.new(0, 0, 0)
    }
    return __NULL_CUSTOM_POINT
  }
  static NULL_CUSTOM_POINT=(value) {
    __NULL_CUSTOM_POINT_set = true
    __NULL_CUSTOM_POINT = value
  }
  cx { _cx }
  cx=(value) { _cx = value }
  cy { _cy }
  cy=(value) { _cy = value }
  cz { _cz }
  cz=(value) { _cz = value }

  initFields_CustomGPoint() {
    _cx = 0
    _cy = 0
    _cz = 0
        _cx = 0
        _cy = 0
        _cz = 0
  }
    

    static getInstance(point) {
        return CustomGPoint.new(point.getX(), point.getY(), point.getZ())
    }
    

    static getInstance3(x, y) {
        return CustomGPoint.new(x, y, 3)
    }
    

    construct new(x, y, z) {
        super(x, y, z)
        initFields_CustomGPoint()
    }
    

    setX(x) {
        _cx = x
    }
    

    getX() {
        return _cx
    }
    

    setY(y) {
        _cy = y
    }
    

    getY() {
        return _cy
    }
    

    setZ(z) {
        _cz = z
    }
    

    getZ() {
        return _cz
    }
}


