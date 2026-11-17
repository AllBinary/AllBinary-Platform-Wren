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
// package org.allbinary.logic.util.visitor

import "../../../../../allbinary_java" for JObject, JException, JR

class Visitor is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = Visitor.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  nullUtil { _nullUtil }
  nullUtil=(value) { _nullUtil = value }

  initFields_Visitor() {
    _nullUtil = null
        _nullUtil = NullUtil.getInstance()
  }

  construct new() {
    super()
    initFields_Visitor()
  }
    

    visit(anyType) {
        return _nullUtil.NULL_OBJECT
    }
    

    static getInstance() {
        return Visitor.instance
    }
}

import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "./VisitorInterface" for VisitorInterface

