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

class BasicColorCacheFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = BasicColorCacheFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  hashtable { _hashtable }
  hashtable=(value) { _hashtable = value }

  initFields_BasicColorCacheFactory() {
    _hashtable = null
        _hashtable = StdUtil.getInstance().createHashtable()
  }
    

    static getInstance() {
        return BasicColorCacheFactory.instance
    }
    

    construct new() {
    super()
    initFields_BasicColorCacheFactory()
    }
    

    add(basicDefaultColor) {
        _hashtable.put(basicDefaultColor.intValue(), basicDefaultColor)
    }
    

    getAndOrCreate(integer) {
        var basicColor = _hashtable.get(integer)
        if ((basicColor == null)) {
            basicColor = BasicColorFactory.getInstance().createInstance(integer.intValue())
            _hashtable.put(integer, basicColor)
        }
        return basicColor
    }
}

import "../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../java/lang/Integer" for Integer
import "./BasicColor" for BasicColor
import "./BasicColorFactory" for BasicColorFactory

