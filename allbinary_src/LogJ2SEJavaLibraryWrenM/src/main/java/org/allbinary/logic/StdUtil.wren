/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.logic

import "../../../allbinary_java" for JObject, JException, JR

//ActualPlatform
class StdUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = StdUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  EMPTY_VECTOR { _EMPTY_VECTOR }
  EMPTY_VECTOR=(value) { _EMPTY_VECTOR = value }
  NULL_TABLE { _NULL_TABLE }
  NULL_TABLE=(value) { _NULL_TABLE = value }
  NULL_MAP { _NULL_MAP }
  NULL_MAP=(value) { _NULL_MAP = value }

  initFields_StdUtil() {
    _EMPTY_VECTOR = null
    _NULL_TABLE = null
    _NULL_MAP = null
        _EMPTY_VECTOR = this.createVector()
        _NULL_TABLE = this.createHashtable()
        _NULL_MAP = this.createHashMap()
  }

  construct new() {
    super()
    initFields_StdUtil()
  }
    

    static getInstance() {
        return StdUtil.instance
    }
    

    createStack() {
        return ABStack.new()
    }
    

    createVector() {
        return ABVector.new()
    }
    

    createHashtable() {
        return ABHashtable.new()
    }
    

    createHashMap() {
        return ABHashMap.new()
    }
}

import "../../../org/allbinary/util/ABHashMap" for ABHashMap
import "../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../org/allbinary/util/ABStack" for ABStack
import "../../../org/allbinary/util/ABVector" for ABVector

