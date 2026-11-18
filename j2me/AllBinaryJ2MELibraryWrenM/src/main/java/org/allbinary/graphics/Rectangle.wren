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

class Rectangle is JObject {
  point { _point }
  point=(value) { _point = value }
  width { _width }
  width=(value) { _width = value }
  height { _height }
  height=(value) { _height = value }

  initFields_Rectangle() {
    _point = null
    _width = 0
    _height = 0
        
        
        
  }
    

    construct new(point, width, height) {
    super()
    initFields_Rectangle()
        _point = point
        _width = width
        _height = height
    }
    

    getPoint() {
        return _point
    }
    

    setPoint(point) {
        _point = point
    }
    

    getMaxX() {
        return (_point.getX() + _width)
    }
    

    getMaxY() {
        return (_point.getY() + _height)
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
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append(this.getPoint().toString())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(CommonLabels.getInstance().WIDTH_LABEL)
        stringBuffer.appendint(this.getWidth())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(CommonLabels.getInstance().HEIGHT_LABEL)
        stringBuffer.appendint(this.getHeight())
        stringBuffer.append(" MaxX: ")
        stringBuffer.appendint(this.getMaxX())
        stringBuffer.append(" MaxY: ")
        stringBuffer.appendint(this.getMaxY())
        return stringBuffer.toString()
    }
}

import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../org/allbinary/string/CommonSeps" for CommonSeps
import "./GPoint" for GPoint

