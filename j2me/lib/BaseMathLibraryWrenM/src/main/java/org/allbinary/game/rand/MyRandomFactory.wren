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
// package org.allbinary.game.rand

import "../../../../allbinary_java" for JObject, JException, JR

//Do not use in client code for money related things.
class MyRandomFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = MyRandomFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  mathUtil { _mathUtil }
  mathUtil=(value) { _mathUtil = value }
  rand { _rand }
  rand=(value) { _rand = value }

  initFields_MyRandomFactory() {
    _mathUtil = null
    _rand = null
        _mathUtil = MathUtil.getInstance()
        
  }
    

    static getInstance() {
        return MyRandomFactory.instance
    }
    

    construct new() {
    super()
    initFields_MyRandomFactory()
        _rand = Random.new(JR.currentTimeMillis())
    }
    

    setSeed(seed) {
        _rand = Random.new(seed)
    }
    

    getNextInt(range) {
        var div = JR.i32((JR.idiv(Integer.MAX_VALUE, range)) + 1)
        return (JR.idiv(_rand.nextInt(), div))
    }
    

    getAbsoluteNextInt(range) {
        return _mathUtil.abs(this.getNextInt(range))
    }
    

    getAbsoluteNextIntAllowZero(range) {
        if ((range == 0)) {
            return 0
        } else {
            return _mathUtil.abs(this.getNextInt(range))
        }
    }
    

    shuffle(intArray) {
        this.shuffleTotal(intArray, JR.i32(intArray.count * 7))
    }
    

    shuffleTotal(intArray, shuffleTotal) {
        var size = intArray.count
        var randomIndex = 0
        var randomIndex2 = 0
        var value = 0
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < shuffleTotal))) break
            randomIndex = this.getAbsoluteNextIntAllowZero(size)
            randomIndex2 = this.getAbsoluteNextIntAllowZero(size)
            value = intArray[randomIndex]
            intArray[randomIndex] = intArray[randomIndex2]
            intArray[randomIndex2] = value
            }
        }
    }
    

    shuffle2(intArray, intArray2) {
        this.shuffle2Total(intArray, intArray2, JR.i32(intArray.count * 7))
    }
    

    shuffle2Total(intArray, intArray2, shuffleTotal) {
        var size = intArray.count
        var randomIndex = 0
        var randomIndex2 = 0
        var value = 0
        var value2 = 0
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < shuffleTotal))) break
            randomIndex = this.getAbsoluteNextIntAllowZero(size)
            randomIndex2 = this.getAbsoluteNextIntAllowZero(size)
            value = intArray[randomIndex]
            value2 = intArray2[randomIndex]
            intArray[randomIndex] = intArray[randomIndex2]
            intArray[randomIndex2] = value
            intArray2[randomIndex] = intArray2[randomIndex2]
            intArray2[randomIndex2] = value2
            }
        }
    }
    

    static main(args) {
        var randomFactory = MyRandomFactory.getInstance()
        var stringBuilder = StringMaker.new()
        var commonSeps = CommonSeps.getInstance()
        var size2 = 100
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size2))) break
            stringBuilder.appendint(randomFactory.getAbsoluteNextInt(3)).append(commonSeps.COMMA)
            }
        }
        System.print(stringBuilder.toString())
        stringBuilder.delete(0, stringBuilder.length())
        var intArray = List.filled(52, 0)
        var intArray2 = List.filled(52, 0)
        var size = intArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            intArray[index] = index
            intArray2[index] = index
            }
        }
        randomFactory.shuffle2(intArray, intArray2)
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            stringBuilder.appendint(intArray[index]).append(commonSeps.COMMA)
            }
        }
        System.print(stringBuilder.toString())
        stringBuilder.delete(0, stringBuilder.length())
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            stringBuilder.appendint(intArray2[index]).append(commonSeps.COMMA)
            }
        }
        System.print(stringBuilder.toString())
        var found = false
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            found = false
            if (true) {
                var index2 = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index2 = JR.i32(index2 + 1)
                    }
                    jfirst = false
                    if (!((index2 < size))) break
                if ((intArray[index2] == index)) {
                    found = true
                }
                }
            }
            if (!found) {
                Fiber.abort(JR.exception("RuntimeException", ""))
            }
            }
        }
    }
}

import "../../../../java/util/Random" for Random
import "../../../../org/allbinary/logic/math/MathUtil" for MathUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../java/lang/System" for JSystem
import "../../../../java/lang/Integer" for Integer

