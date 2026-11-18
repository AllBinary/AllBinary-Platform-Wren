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

//J2SE
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
    

    longBitsToDouble(bits) {
        return Double.longBitsToDouble(bits)
    }
    

    intBitsToFloat(bits) {
        return Float.intBitsToFloat(bits)
    }
    

    hashCode(anyType) {
        return anyType.hashCode()
    }
    

    waitFor(any, timeoutMillis) {
        var anyType = any
        anyType.wait(timeoutMillis)
    }
    

    getRecord(anyType, recordId) {
        var recordStore = anyType
        var data = null
        if (true) {
            data = List.filled(recordStore.getRecordSize(recordId), 0)
            recordStore.getRecord(recordId, data, 0)
        }
        return ((data.count < 1) ? NullUtil.getInstance().NULL_BYTE_ARRAY : data)
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
    

    getClassClassLoader(anyType) {
        return JR.className(anyType).getClassLoader()
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
        if ((owner is Form)) {
            return true
        } else {
            return false
        }
    }
    

    gc() {
        JSystem.gc()
    }
}

import "../../javax/microedition/lcdui/Displayable" for Displayable
import "../../javax/microedition/lcdui/Form" for Form
import "../../javax/microedition/rms/InvalidRecordIDException" for InvalidRecordIDException
import "../../javax/microedition/rms/RecordStore" for RecordStore
import "../../javax/microedition/rms/RecordStoreException" for RecordStoreException
import "../../javax/microedition/rms/RecordStoreNotOpenException" for RecordStoreNotOpenException
import "../../org/allbinary/logic/NullUtil" for NullUtil
import "../../java/lang/System" for JSystem
import "../../java/lang/Float" for Float
import "../../java/lang/Double" for Double

