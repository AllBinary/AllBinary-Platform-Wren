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

class GPoint is JObject {
    static POINT_LABEL {
    if (__POINT_LABEL_set == null) {
      __POINT_LABEL_set = true
      __POINT_LABEL = "Point: "
    }
    return __POINT_LABEL
  }
  static POINT_LABEL=(value) {
    __POINT_LABEL_set = true
    __POINT_LABEL = value
  }
  x { _x }
  x=(value) { _x = value }
  y { _y }
  y=(value) { _y = value }
  z { _z }
  z=(value) { _z = value }

  initFields_GPoint() {
    _x = 0
    _y = 0
    _z = 0
        
        
        
  }
    

    static getInstance(point) {
        return GPoint.new(point.getX(), point.getY(), point.getZ())
    }
    

    construct new(x, y, z) {
    super()
    initFields_GPoint()
        _x = x
        _y = y
        _z = z
    }
    

    getX() {
        return _x
    }
    

    getY() {
        return _y
    }
    

    getZ() {
        return _z
    }
    

    getRawX() {
        return _x
    }
    

    getRawY() {
        return _y
    }
    

    getRawZ() {
        return _z
    }
    

    toString() {
        return GPoint.toStringStatic(this.getX(), this.getY(), this.getZ())
    }
    

    static toStringStatic(x, y, z) {
        var stringBuffer = StringMaker.new()
        var positionStrings = PositionStrings.getInstance()
        stringBuffer.append(GPoint.POINT_LABEL)
        stringBuffer.append(positionStrings.X_LABEL)
        stringBuffer.appendint(x)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(positionStrings.Y_LABEL)
        stringBuffer.appendint(y)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(positionStrings.Z_LABEL)
        stringBuffer.appendint(z)
        return stringBuffer.toString()
    }
}

import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/math/PositionStrings" for PositionStrings
import "../../../org/allbinary/string/CommonSeps" for CommonSeps

