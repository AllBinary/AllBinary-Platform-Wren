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
// package org.allbinary.string

import "../../../allbinary_java" for JObject, JException, JR

class CommonPhoneStrings is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = CommonPhoneStrings.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  UP { _UP }
  UP=(value) { _UP = value }
  DOWN { _DOWN }
  DOWN=(value) { _DOWN = value }
  LEFT { _LEFT }
  LEFT=(value) { _LEFT = value }
  RIGHT { _RIGHT }
  RIGHT=(value) { _RIGHT = value }
  ZERO { _ZERO }
  ZERO=(value) { _ZERO = value }
  ONE { _ONE }
  ONE=(value) { _ONE = value }
  TWO { _TWO }
  TWO=(value) { _TWO = value }
  THREE { _THREE }
  THREE=(value) { _THREE = value }
  FOUR { _FOUR }
  FOUR=(value) { _FOUR = value }
  FIVE { _FIVE }
  FIVE=(value) { _FIVE = value }
  SIX { _SIX }
  SIX=(value) { _SIX = value }
  SEVEN { _SEVEN }
  SEVEN=(value) { _SEVEN = value }
  EIGHT { _EIGHT }
  EIGHT=(value) { _EIGHT = value }
  NINE { _NINE }
  NINE=(value) { _NINE = value }
  POUND { _POUND }
  POUND=(value) { _POUND = value }
  STAR { _STAR }
  STAR=(value) { _STAR = value }
  FIRE { _FIRE }
  FIRE=(value) { _FIRE = value }

  initFields_CommonPhoneStrings() {
    _UP = null
    _DOWN = null
    _LEFT = null
    _RIGHT = null
    _ZERO = null
    _ONE = null
    _TWO = null
    _THREE = null
    _FOUR = null
    _FIVE = null
    _SIX = null
    _SEVEN = null
    _EIGHT = null
    _NINE = null
    _POUND = null
    _STAR = null
    _FIRE = null
        _UP = "UP"
        _DOWN = "DOWN"
        _LEFT = "LEFT"
        _RIGHT = "RIGHT"
        _ZERO = "0"
        _ONE = "1"
        _TWO = "2"
        _THREE = "3"
        _FOUR = "4"
        _FIVE = "5"
        _SIX = "6"
        _SEVEN = "7"
        _EIGHT = "8"
        _NINE = "9"
        _POUND = "#"
        _STAR = "*"
        _FIRE = "FIRE"
  }

  construct new() {
    super()
    initFields_CommonPhoneStrings()
  }
    

    static getInstance() {
        return CommonPhoneStrings.instance
    }
}


