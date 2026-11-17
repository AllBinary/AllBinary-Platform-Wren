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

//None - Do not use
class TsUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = TsUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_TsUtil() {
  }

  construct new() {
    super()
    initFields_TsUtil()
  }
    

    static getInstance() {
        return TsUtil.instance
    }
    

    hashCode(anyType) {
        return anyType.hashCode()
    }
    

    waitFor(any, timeoutMillis) {
        var anyType = any
        anyType.wait(timeoutMillis)
    }
    

    getRecord(anyType, recordId) {
        return List.filled(0, 0)
    }
    

    compareTo(a, b) {
        return JR.compareTo(a, b)
    }
    

    equalIgnoreCase(a, b) {
        return JR.equalsIgnoreCase(a, b)
    }
    

    equalsNotstring(anyType, object2) {
        return anyType.equals(object2)
    }
    

    toNumberFromChar(value) {
        return JR.i32(value)
    }
    

    toNumber(value) {
        return value
    }
    

    getByteArray(string) {
        return JR.getBytes(string)
    }
    

    isItemListener(owner) {
        return false
    }
    

    printAvailableMethods(anyType) {
    }
    

    gc() {
        JSystem.gc()
    }
}

import "../../java/lang/System" for JSystem

