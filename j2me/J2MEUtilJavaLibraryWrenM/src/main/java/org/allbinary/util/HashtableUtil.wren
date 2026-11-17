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
// package org.allbinary.util

import "../../../allbinary_java" for JObject, JException, JR

class HashtableUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = HashtableUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  enumerationUtil { _enumerationUtil }
  enumerationUtil=(value) { _enumerationUtil = value }

  initFields_HashtableUtil() {
    _enumerationUtil = null
        _enumerationUtil = EnumerationUtil.getInstance()
  }

  construct new() {
    super()
    initFields_HashtableUtil()
  }
    

    static getInstance() {
        return HashtableUtil.instance
    }
    

    putAll(fromHashtable, hashtable) {
        var enumeration = fromHashtable.keys()
        var keyCanBeNull = null
        var valueCanBeNull = null
        while (_enumerationUtil.hasMoreElements(enumeration)) {
            keyCanBeNull = _enumerationUtil.nextElement(enumeration)
            valueCanBeNull = hashtable.get(keyCanBeNull)
            if ((valueCanBeNull == null)) {
            } else {
                hashtable.put(keyCanBeNull, valueCanBeNull)
            }
        }
    }
    

    getKeysAsArray(hashtable) {
        var objectArray = List.filled(hashtable.size(), null)
        var index = 0
        var enumeration = hashtable.keys()
        while (_enumerationUtil.hasMoreElements(enumeration)) {
            objectArray[Fn.new {
var jold = index
index = JR.i32(jold + 1)
return jold
}.call()] = _enumerationUtil.nextElement(enumeration)
        }
        return objectArray
    }
    

    getKeysAsList(hashtable) {
        var list = BasicArrayListS.new(hashtable.size())
        var enumeration = hashtable.keys()
        while (_enumerationUtil.hasMoreElements(enumeration)) {
            list.add(_enumerationUtil.nextElement(enumeration))
        }
        return list
    }
}

import "../../../java/util/Enumeration" for Enumeration
import "./EnumerationUtil" for EnumerationUtil
import "./ABHashtable" for ABHashtable
import "./BasicArrayListS" for BasicArrayListS
import "./BasicArrayList" for BasicArrayList

