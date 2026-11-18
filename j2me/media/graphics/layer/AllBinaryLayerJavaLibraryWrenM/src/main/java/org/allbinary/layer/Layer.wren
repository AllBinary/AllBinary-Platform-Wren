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
// package org.allbinary.layer

import "../../../allbinary_java" for JObject, JException, JR

class Layer is JObject {
    static ID {
    if (__ID_set == null) {
      __ID_set = true
      __ID = SmallIntegerSingletonFactory.getInstance().getAt(0)
    }
    return __ID
  }
  static ID=(value) {
    __ID_set = true
    __ID = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  x { _x }
  x=(value) { _x = value }
  y { _y }
  y=(value) { _y = value }
  z { _z }
  z=(value) { _z = value }
  width { _width }
  width=(value) { _width = value }
  height { _height }
  height=(value) { _height = value }
  visible { _visible }
  visible=(value) { _visible = value }

  initFields_Layer() {
    _logUtil = null
    _x = 0
    _y = 0
    _z = 0
    _width = 0
    _height = 0
    _visible = false
        _logUtil = LogUtil.getInstance()
        _x = 0
        _y = 0
        _z = 3
        _width = 0
        _height = 0
        _visible = true
  }
    

    construct new(width, height) {
    super()
    initFields_Layer()
        this.setLayerWidth(width)
        this.setLayerHeight(height)
    }
    

    setPosition(x, y, z) {
        _x = x
        _y = y
        _z = z
    }
    

    moveDXY(dx, dy) {
        _x = JR.i32(_x + dx)
        _y = JR.i32(_y + dy)
    }
    

    moveDXYZ(dx, dy, dz) {
        _x = JR.i32(_x + dx)
        _y = JR.i32(_y + dy)
        _z = JR.i32(_z + dz)
    }
    

    getXP() {
        return _x
    }
    

    getYP() {
        return _y
    }
    

    getZP() {
        return _z
    }
    

    getWidth() {
        return _width
    }
    

    getHeight() {
        return _height
    }
    

    getDepth() {
        return 0
    }
    

    setVisible(visible) {
        _visible = visible
    }
    

    isVisible() {
        return _visible
    }
    

    paint(graphics) {
        var commonStrings = CommonStrings.getInstance()
        var canvasStrings = CanvasStrings.getInstance()
        _logUtil.putF(commonStrings.NOT_IMPLEMENTED, this, canvasStrings.PAINT)
    }
    

    setLayerWidth(width) {
        if ((width < 0)) {
            Fiber.abort(JR.exception("IllegalArgumentException", ""))
        }
        _width = width
    }
    

    setLayerHeight(height) {
        if ((height < 0)) {
            Fiber.abort(JR.exception("IllegalArgumentException", ""))
        }
        _height = height
    }
    

    toStringAppend(stringBuffer) {
    }
}

import "../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../org/allbinary/graphics/displayable/CanvasStrings" for CanvasStrings
import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../java/lang/Integer" for Integer

