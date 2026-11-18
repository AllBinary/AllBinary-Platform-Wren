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
// package org.allbinary

import "../../allbinary_java" for JObject, JException, JR

//J2SEForJ2ME
class J2SEUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = J2SEUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_J2SEUtil() {
  }

  construct new() {
    super()
    initFields_J2SEUtil()
  }
    

    static getInstance() {
        return J2SEUtil.instance
    }
    

    getHashMapAsArray(hashMap) {
        var objectArray = hashMap.keySet().toArray()
        return objectArray
    }
    

    getMapAsArray(map) {
        var objectArray = map.keySet().toArray()
        return objectArray
    }
    

    getSetAsArray(set) {
        var objectArray = set.toArray()
        return objectArray
    }
}

import "../../java/util/HashMap" for HashMap
import "../../java/util/Set" for Set

