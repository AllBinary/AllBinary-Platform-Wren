// Generated Code Do Not Modify
// package org.allbinary.util

import "../../../allbinary_java" for JObject, JException, JR

class ArrayUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ArrayUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  mathUtil { _mathUtil }
  mathUtil=(value) { _mathUtil = value }

  initFields_ArrayUtil() {
    _mathUtil = null
        _mathUtil = MathUtil.getInstance()
  }

  construct new() {
    super()
    initFields_ArrayUtil()
  }
    

    static getInstance() {
        return ArrayUtil.instance
    }
    

    copyOf(original, newLength) {
        return this.copyOfType(original, newLength, JR.className(original))
    }
    

    copyOfType(original, newLength, newType) {
        var copy = List.filled(newLength, null)
        JR.arraycopy(original, 0, copy, 0, _mathUtil.min(original.count, newLength))
        return copy
    }
    

    copyOfbyte(original, newLength) {
        var copy = List.filled(newLength, 0)
        JR.arraycopy(original, 0, copy, 0, _mathUtil.min(original.count, newLength))
        return copy
    }
    

    copyOfshort(original, newLength) {
        var copy = List.filled(newLength, 0)
        JR.arraycopy(original, 0, copy, 0, _mathUtil.min(original.count, newLength))
        return copy
    }
    

    copyOfint(original, newLength) {
        var copy = List.filled(newLength, 0)
        JR.arraycopy(original, 0, copy, 0, _mathUtil.min(original.count, newLength))
        return copy
    }
    

    copyOflong(original, newLength) {
        var copy = List.filled(newLength, 0)
        JR.arraycopy(original, 0, copy, 0, _mathUtil.min(original.count, newLength))
        return copy
    }
    

    copyOfchar(original, newLength) {
        var copy = List.filled(newLength, 0)
        JR.arraycopy(original, 0, copy, 0, _mathUtil.min(original.count, newLength))
        return copy
    }
    

    copyOffloat(original, newLength) {
        var copy = List.filled(newLength, 0.0)
        JR.arraycopy(original, 0, copy, 0, _mathUtil.min(original.count, newLength))
        return copy
    }
    

    copyOfdouble(original, newLength) {
        var copy = List.filled(newLength, 0.0)
        JR.arraycopy(original, 0, copy, 0, _mathUtil.min(original.count, newLength))
        return copy
    }
    

    copyOfboolean(original, newLength) {
        var copy = List.filled(newLength, false)
        JR.arraycopy(original, 0, copy, 0, _mathUtil.min(original.count, newLength))
        return copy
    }
    

    reverse(intArray) {
        var length = JR.i32(intArray.count - 1)
        var temp = 0
        var size = JR.idiv(length, 2)
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index <= size))) break
            temp = intArray[index]
            intArray[index] = intArray[JR.i32(length - index)]
            intArray[JR.i32(length - index)] = temp
            }
        }
    }
    

    flip(intArray, width, height) {
        var length = JR.i32(height - 1)
        var temp = 0
        var index = 0
        var rowIndex = 0
        if (true) {
            var y = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    y = JR.i32(y + 1)
                }
                jfirst = false
                if (!((y <= JR.idiv(length, 2)))) break
            if (true) {
                var x = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        x = JR.i32(x + 1)
                    }
                    jfirst = false
                    if (!((x < width))) break
                rowIndex = (JR.i32((JR.i32(length - y)) * width))
                index = JR.i32(x + (JR.i32(y * width)))
                temp = intArray[index]
                intArray[index] = intArray[JR.i32(rowIndex + x)]
                intArray[JR.i32(rowIndex + x)] = temp
                }
            }
            }
        }
    }
    

    toStringFromTwoDimensionaArray(twoDimensionalIntArray) {
        var stringBuffer = StringMaker.new()
        var commonSeps = CommonSeps.getInstance()
        var endIndex = twoDimensionalIntArray.count
        var endIndex2 = twoDimensionalIntArray[0].count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < endIndex))) break
            stringBuffer.append(commonSeps.BRACE_OPEN)
            if (true) {
                var index2 = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index2 = JR.i32(index2 + 1)
                    }
                    jfirst = false
                    if (!((index2 < endIndex2))) break
                stringBuffer.appendint(JR.i32(twoDimensionalIntArray[index][index2]))
                stringBuffer.append(commonSeps.COMMA_SEP)
                }
            }
            stringBuffer.append(commonSeps.BRACE_CLOSE)
            stringBuffer.append(commonSeps.NEW_LINE)
            }
        }
        return stringBuffer.toString()
    }
    

    toStringFromObjectArray(objectArray) {
        var stringBuffer = StringMaker.new()
        var commonSeps = CommonSeps.getInstance()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < objectArray.count))) break
            stringBuffer.append(StringUtil.getInstance().toString(objectArray[index]))
            stringBuffer.append(commonSeps.COMMA_SEP)
            }
        }
        return stringBuffer.toString()
    }
    

    toStringFromByteArray(byteArray) {
        var stringBuffer = StringMaker.new()
        var commonSeps = CommonSeps.getInstance()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < byteArray.count))) break
            stringBuffer.appendbyte(byteArray[index])
            stringBuffer.append(commonSeps.COMMA_SEP)
            }
        }
        return stringBuffer.toString()
    }
}

import "../../../org/allbinary/logic/math/MathUtil" for MathUtil
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../java/lang/System" for JSystem

