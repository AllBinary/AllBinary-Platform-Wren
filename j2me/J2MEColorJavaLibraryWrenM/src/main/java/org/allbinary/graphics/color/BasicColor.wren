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
// package org.allbinary.graphics.color

import "../../../../allbinary_java" for JObject, JException, JR

class BasicColor is JObject {
  name { _name }
  name=(value) { _name = value }
  value { _value }
  value=(value) { _value = value }
  redComponent { _redComponent }
  redComponent=(value) { _redComponent = value }
  greenComponent { _greenComponent }
  greenComponent=(value) { _greenComponent = value }
  blueComponent { _blueComponent }
  blueComponent=(value) { _blueComponent = value }
  alphaComponent { _alphaComponent }
  alphaComponent=(value) { _alphaComponent = value }
  red { _red }
  red=(value) { _red = value }
  green { _green }
  green=(value) { _green = value }
  blue { _blue }
  blue=(value) { _blue = value }
  alpha { _alpha }
  alpha=(value) { _alpha = value }

  initFields_BasicColor() {
    _name = null
    _value = 0
    _redComponent = 0.0
    _greenComponent = 0.0
    _blueComponent = 0.0
    _alphaComponent = 0.0
    _red = 0
    _green = 0
    _blue = 0
    _alpha = 0
        
        
        
        
        
        
        
        
        
        
  }
    

    construct new(alphaValue, value, name) {
    super()
    initFields_BasicColor()
        _name = name
        var tempValue = 0
        var basicColorUtil = BasicColorUtil.getInstance()
        if (basicColorUtil.isAlpha) {
            if (basicColorUtil.ffOpaque) {
                tempValue = JR.or(alphaValue, value)
            } else {
                tempValue = JR.or(0x00000000, value)
            }
        } else {
            tempValue = value
        }
        var alphaInt = (JR.and((JR.shr(tempValue, 24)), 255))
        _alpha = JR.i16(alphaInt)
        _alphaComponent = ((alphaInt) / 255)
        var redInt = (JR.and((JR.shr(tempValue, 16)), 255))
        _red = JR.i16(redInt)
        _redComponent = ((redInt) / 255)
        var greenInt = (JR.and((JR.shr(tempValue, 8)), 255))
        _green = JR.i16(greenInt)
        _greenComponent = ((greenInt) / 255)
        var blueInt = (JR.and((tempValue), 255))
        _blue = JR.i16(blueInt)
        _blueComponent = ((blueInt) / 255)
        _value = tempValue
    }
    

    intValue() {
        return _value
    }
    

    toInt() {
        return _value
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append("BasicColor: ")
        stringBuffer.append("Alpha: ")
        stringBuffer.appendshort(_alpha)
        stringBuffer.append(" Red: ")
        stringBuffer.appendshort(_red)
        stringBuffer.append(" Green: ")
        stringBuffer.appendshort(_green)
        stringBuffer.append(" Blue: ")
        stringBuffer.appendshort(_blue)
        stringBuffer.append(" Value: ")
        stringBuffer.appendint(_value)
        return stringBuffer.toString()
    }
    

    getName() {
        return _name
    }
    

    getRedComponent() {
        return _redComponent
    }
    

    getGreenComponent() {
        return _greenComponent
    }
    

    getBlueComponent() {
        return _blueComponent
    }
    

    getAlphaComponent() {
        return _alphaComponent
    }
}

import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "./BasicColorUtil" for BasicColorUtil

