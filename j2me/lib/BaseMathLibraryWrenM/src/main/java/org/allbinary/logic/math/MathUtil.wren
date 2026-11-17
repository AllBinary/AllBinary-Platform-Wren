// Generated Code Do Not Modify
// package org.allbinary.logic.math

import "../../../../allbinary_java" for JObject, JException, JR

class MathUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = MathUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  ACCURACY { _ACCURACY }
  ACCURACY=(value) { _ACCURACY = value }

  initFields_MathUtil() {
    _ACCURACY = 0
        _ACCURACY = 100
  }

  construct new() {
    super()
    initFields_MathUtil()
  }
    

    static getInstance() {
        return MathUtil.instance
    }
    

    getTotalDigits(digits) {
        var total = 0
        while ((digits > 0)) {
            digits = JR.idiv(digits, 10)
            total = JR.i32(total + 1)
        }
        return total
    }
    

    sqrt(value) {
        if ((value <= 1)) {
            return value
        }
        var accumulated = JR.shr(value, 1)
        var result = JR.shr((JR.i32(accumulated + (JR.idiv(value, accumulated)))), 1)
        if (true) {
            var jfirst = true
            while (jfirst || (accumulated > result)) {
                jfirst = false
            accumulated = result
            result = JR.shr((JR.i32(accumulated + (JR.idiv(value, accumulated)))), 1)
            }
        }
        return accumulated
    }
    

    sqrtd(x) {
        if ((x == 0)) {
            return 0.0
        }
        if ((x < 0)) {
            return -1.0
        }
        var result = x
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < _ACCURACY))) break
            result = (((result + ((x / result)))) / 2)
            }
        }
        return result
    }
    

    abs(value) {
        return (((value < 0)) ? -value : value)
    }
    

    abslong(value) {
        return (((value < 0)) ? -value : value)
    }
    

    min(value, value2) {
        return (((value <= value2)) ? value : value2)
    }
    

    max(value, value2) {
        return (((value >= value2)) ? value : value2)
    }
}


