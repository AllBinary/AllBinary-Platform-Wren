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

class MathData is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = MathData.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  EQUALS { _EQUALS }
  EQUALS=(value) { _EQUALS = value }
  PLUS { _PLUS }
  PLUS=(value) { _PLUS = value }
  GREATER_THAN { _GREATER_THAN }
  GREATER_THAN=(value) { _GREATER_THAN = value }
  MINUS { _MINUS }
  MINUS=(value) { _MINUS = value }
  DIVIDE { _DIVIDE }
  DIVIDE=(value) { _DIVIDE = value }
  MULTIPLY { _MULTIPLY }
  MULTIPLY=(value) { _MULTIPLY = value }

  initFields_MathData() {
    _EQUALS = null
    _PLUS = null
    _GREATER_THAN = null
    _MINUS = null
    _DIVIDE = null
    _MULTIPLY = null
        
        _PLUS = "+"
        _GREATER_THAN = ">"
        
        
        
  }
    

    static getInstance() {
        return MathData.instance
    }
    

    construct new() {
    super()
    initFields_MathData()
        var commonSeps = CommonSeps.getInstance()
        _EQUALS = commonSeps.EQUALS
        _MINUS = commonSeps.DASH
        _DIVIDE = commonSeps.FORWARD_SLASH
        _MULTIPLY = CommonPhoneStrings.getInstance().STAR
    }
}

import "../../../../org/allbinary/string/CommonPhoneStrings" for CommonPhoneStrings
import "../../../../org/allbinary/string/CommonSeps" for CommonSeps

