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
// package org.allbinary.direction

import "../../../allbinary_java" for JObject, JException, JR

class Direction is JObject {
    static directionArray {
    if (__directionArray_set == null) {
      __directionArray_set = true
      __directionArray = List.filled(13, null)
    }
    return __directionArray
  }
  static directionArray=(value) {
    __directionArray_set = true
    __directionArray = value
  }
  name { _name }
  name=(value) { _name = value }
  otherName { _otherName }
  otherName=(value) { _otherName = value }
  value { _value }
  value=(value) { _value = value }
  frameFactor { _frameFactor }
  frameFactor=(value) { _frameFactor = value }

  initFields_Direction() {
    _name = null
    _otherName = null
    _value = 0
    _frameFactor = 0
        
        
        
        
  }
    

    construct new(name, otherName, value, frameFactor) {
    super()
    initFields_Direction()
        _name = name
        _otherName = otherName
        _value = value
        _frameFactor = frameFactor
        Direction.directionArray[value] = this
    }
    

    static getInstance(direction) {
        return Direction.directionArray[direction]
    }
    

    getValue() {
        return _value
    }
    

    getFrameFactor() {
        return _frameFactor
    }
    

    getOtherName() {
        return _otherName
    }
    

    getName() {
        return _name
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append("Direction: ")
        stringBuffer.append(this.getName())
        stringBuffer.append(" Or: ")
        stringBuffer.append(this.getOtherName())
        stringBuffer.append(" Value: ")
        stringBuffer.appendint(_value)
        return stringBuffer.toString()
    }
}

import "../../../org/allbinary/logic/string/StringMaker" for StringMaker

