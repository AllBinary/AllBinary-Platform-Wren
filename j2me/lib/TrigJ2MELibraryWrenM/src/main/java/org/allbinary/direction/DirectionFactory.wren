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

class DirectionFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = DirectionFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  NAME { _NAME }
  NAME=(value) { _NAME = value }
  LEFT { _LEFT }
  LEFT=(value) { _LEFT = value }
  RIGHT { _RIGHT }
  RIGHT=(value) { _RIGHT = value }
  DOWN { _DOWN }
  DOWN=(value) { _DOWN = value }
  UP { _UP }
  UP=(value) { _UP = value }
  UP_LEFT { _UP_LEFT }
  UP_LEFT=(value) { _UP_LEFT = value }
  UP_RIGHT { _UP_RIGHT }
  UP_RIGHT=(value) { _UP_RIGHT = value }
  DOWN_LEFT { _DOWN_LEFT }
  DOWN_LEFT=(value) { _DOWN_LEFT = value }
  DOWN_RIGHT { _DOWN_RIGHT }
  DOWN_RIGHT=(value) { _DOWN_RIGHT = value }
  NOT_BORDERED_WITH { _NOT_BORDERED_WITH }
  NOT_BORDERED_WITH=(value) { _NOT_BORDERED_WITH = value }
  NO_DIRECTION { _NO_DIRECTION }
  NO_DIRECTION=(value) { _NO_DIRECTION = value }
  TOP { _TOP }
  TOP=(value) { _TOP = value }
  BOTTOM { _BOTTOM }
  BOTTOM=(value) { _BOTTOM = value }
  ALL_DIRECTION { _ALL_DIRECTION }
  ALL_DIRECTION=(value) { _ALL_DIRECTION = value }

  initFields_DirectionFactory() {
    _NAME = null
    _LEFT = null
    _RIGHT = null
    _DOWN = null
    _UP = null
    _UP_LEFT = null
    _UP_RIGHT = null
    _DOWN_LEFT = null
    _DOWN_RIGHT = null
    _NOT_BORDERED_WITH = null
    _NO_DIRECTION = null
    _TOP = null
    _BOTTOM = null
    _ALL_DIRECTION = null
        _NAME = "DIRECTION"
        _LEFT = Direction.new(CommonPhoneStrings.getInstance().LEFT, "WEST", 0, 1)
        _RIGHT = Direction.new(CommonPhoneStrings.getInstance().RIGHT, "EAST", 1, 0)
        _DOWN = Direction.new(CommonPhoneStrings.getInstance().DOWN, "SOUTH", 2, 0)
        _UP = Direction.new(CommonPhoneStrings.getInstance().UP, "NORTH", 3, 0)
        
        
        
        
        _NOT_BORDERED_WITH = Direction.new("NOT_BORDERED_WITH", "NOT_BORDERED_WITH", 8, 0)
        _NO_DIRECTION = Direction.new("NO_DIRECTION", "NO_DIRECTION", 9, 0)
        _TOP = Direction.new("TOP", "TOP", 10, 0)
        _BOTTOM = Direction.new("BOTTOM", "BOTTOM", 11, 0)
        _ALL_DIRECTION = Direction.new("ALL_DIRECTION", "ALL_DIRECTION", 12, 0)
  }
    

    static getInstance() {
        return DirectionFactory.instance
    }
    

    construct new() {
    super()
    initFields_DirectionFactory()
        var stringBuffer = StringMaker.new()
        var commonSeps = CommonSeps.getInstance()
        _UP_LEFT = Direction.new("UP LEFT", stringBuffer.append(_UP.getOtherName()).append(commonSeps.SPACE).append(_LEFT.getOtherName()).toString(), 4, 0)
        stringBuffer.delete(0, stringBuffer.length())
        _UP_RIGHT = Direction.new("UP RIGHT", stringBuffer.append(_UP.getOtherName()).append(commonSeps.SPACE).append(_RIGHT.getOtherName()).toString(), 5, 0)
        stringBuffer.delete(0, stringBuffer.length())
        _DOWN_LEFT = Direction.new("DOWN LEFT", stringBuffer.append(_DOWN.getOtherName()).append(commonSeps.SPACE).append(_LEFT.getOtherName()).toString(), 6, 0)
        stringBuffer.delete(0, stringBuffer.length())
        _DOWN_RIGHT = Direction.new("DOWN RIGHT", stringBuffer.append(_DOWN.getOtherName()).append(commonSeps.SPACE).append(_RIGHT.getOtherName()).toString(), 7, 0)
    }
}

import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/string/CommonPhoneStrings" for CommonPhoneStrings
import "../../../org/allbinary/string/CommonSeps" for CommonSeps
import "./Direction" for Direction

