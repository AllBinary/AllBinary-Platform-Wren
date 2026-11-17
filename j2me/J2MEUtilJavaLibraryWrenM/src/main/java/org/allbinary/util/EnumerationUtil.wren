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
// package org.allbinary.util

import "../../../allbinary_java" for JObject, JException, JR

//ArkTs does not have this.  So this is for the ArkTs build.
class EnumerationUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = EnumerationUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_EnumerationUtil() {
  }

  construct new() {
    super()
    initFields_EnumerationUtil()
  }
    

    static getInstance() {
        return EnumerationUtil.instance
    }
    

    hasMoreElements(enumeration) {
        return enumeration.hasMoreElements()
    }
    

    nextElement(enumeration) {
        return enumeration.nextElement()
    }
    

    getAsArray(enumeration) {
        var basicArrayList = BasicArrayListD.new()
        while (this.hasMoreElements(enumeration)) {
            basicArrayList.add(this.nextElement(enumeration))
        }
        return basicArrayList.toArray()
    }
}

import "../../../java/util/Enumeration" for Enumeration
import "./BasicArrayListD" for BasicArrayListD
import "./BasicArrayList" for BasicArrayList

