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
// package org.allbinary.logic.java.byteutil

import "../../../../../allbinary_java" for JObject, JException, JR

class ByteUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ByteUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_ByteUtil() {
  }
    

    static getInstance() {
        return ByteUtil.instance
    }
    

    construct new() {
    super()
    initFields_ByteUtil()
    }
    

    xor(array, mask) {
        var bytes = List.filled(array.count, 0)
        var size = array.count
        var index = 0
        var currentByte = 0
        while ((index < size)) {
            currentByte = array[index]
            bytes[index] = JR.i8((JR.xor(currentByte, mask)))
            index = JR.i32(index + 1)
        }
        return bytes
    }
    

    not(array) {
        var bytes = List.filled(array.count, 0)
        var size = array.count
        var index = 0
        while ((index < size)) {
            bytes[index] = JR.i8(JR.not(array[index]))
            index = JR.i32(index + 1)
        }
        return bytes
    }
    

    xorByte(array, index) {
        var mask = 0
        if ((index == 0)) {
            mask = 1
        }
        if ((index == 1)) {
            mask = 2
        }
        if ((index == 2)) {
            mask = 4
        }
        if ((index == 3)) {
            mask = 8
        }
        if ((index == 4)) {
            mask = 16
        }
        if ((index == 5)) {
            mask = 32
        }
        if ((index == 6)) {
            mask = 64
        }
        if ((index == 7)) {
            mask = JR.i8(-127)
        }
        return this.xor(array, mask)
    }
    

    compare(newByteArray, oldByteArray) {
        if ((newByteArray.count != oldByteArray.count)) {
            return false
        } else {
        }
        var size = newByteArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            if ((newByteArray[index] != oldByteArray[index])) {
                return false
            }
            }
        }
        return true
    }
    

    compareWithStats(newByteArray, newSize, oldByteArray, stats) {
        if ((newSize != oldByteArray.count)) {
            stats[0] = -1
            stats[2] = newSize
            stats[3] = oldByteArray.count
            return false
        } else {
            stats[0] = newSize
        }
        stats[1] = 0
        var size = newSize
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            if ((newByteArray[index] != oldByteArray[index])) {
                return false
            }
            stats[1] = JR.i32(stats[1] + 1)
            }
        }
        return true
    }
}


