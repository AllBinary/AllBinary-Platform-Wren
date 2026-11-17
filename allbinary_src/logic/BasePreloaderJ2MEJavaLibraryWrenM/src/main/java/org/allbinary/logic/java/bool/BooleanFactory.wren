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
// package org.allbinary.logic.java.bool

import "../../../../../allbinary_java" for JObject, JException, JR

class BooleanFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = BooleanFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  TRUE { _TRUE }
  TRUE=(value) { _TRUE = value }
  FALSE { _FALSE }
  FALSE=(value) { _FALSE = value }
  TRUE_STRING { _TRUE_STRING }
  TRUE_STRING=(value) { _TRUE_STRING = value }
  FALSE_STRING { _FALSE_STRING }
  FALSE_STRING=(value) { _FALSE_STRING = value }
  YES { _YES }
  YES=(value) { _YES = value }
  NO { _NO }
  NO=(value) { _NO = value }

  initFields_BooleanFactory() {
    _TRUE = null
    _FALSE = null
    _TRUE_STRING = null
    _FALSE_STRING = null
    _YES = null
    _NO = null
        _TRUE = true
        _FALSE = false
        _TRUE_STRING = _TRUE.toString()
        _FALSE_STRING = _FALSE.toString()
        _YES = "yes"
        _NO = "no"
  }

  construct new() {
    super()
    initFields_BooleanFactory()
  }
    

    static getInstance() {
        return BooleanFactory.instance
    }
    

    toStringb(bool) {
        if (bool) {
            return _TRUE_STRING
        } else {
            return _FALSE_STRING
        }
    }
}

import "../../../../../java/lang/Boolean" for Boolean

