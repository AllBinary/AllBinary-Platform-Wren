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
// package org.allbinary.logic.math

import "../../../../allbinary_java" for JObject, JException, JR

class Orientation is JObject {
    static NONE {
    if (__NONE_set == null) {
      __NONE_set = true
      __NONE = Orientation.new(0, 0, 0)
    }
    return __NONE
  }
  static NONE=(value) {
    __NONE_set = true
    __NONE = value
  }
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = Orientation.new(0, 0, 0)
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  yaw { _yaw }
  yaw=(value) { _yaw = value }
  pitch { _pitch }
  pitch=(value) { _pitch = value }
  roll { _roll }
  roll=(value) { _roll = value }

  initFields_Orientation() {
    _yaw = null
    _pitch = null
    _roll = null
        _yaw = BasicDecimal.new(0)
        _pitch = BasicDecimal.new(0)
        _roll = BasicDecimal.new(0)
  }
    

    static getInstance(yaw, pitch, roll) {
        Orientation.SINGLETON.yaw.setint(yaw)
        Orientation.SINGLETON.pitch.setint(pitch)
        Orientation.SINGLETON.roll.setint(roll)
        return Orientation.SINGLETON
    }
    

    construct new(yaw, pitch, roll) {
    super()
    initFields_Orientation()
        _yaw.setint(yaw)
        _pitch.setint(pitch)
        _roll.setint(roll)
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append("Y: ")
        stringBuffer.append(_yaw.toString())
        stringBuffer.append(" P: ")
        stringBuffer.append(_pitch.toString())
        stringBuffer.append(" R: ")
        stringBuffer.append(_roll.toString())
        return stringBuffer.toString()
    }
}

import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "./BasicDecimal" for BasicDecimal

