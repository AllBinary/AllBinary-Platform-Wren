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
// package org.allbinary.logic.math

import "../../../../allbinary_java" for JObject, JException, JR

class PrimitiveLongSingleton is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = PrimitiveLongSingleton.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  UNK { _UNK }
  UNK=(value) { _UNK = value }
  NUMBER_ARRAY { _NUMBER_ARRAY }
  NUMBER_ARRAY=(value) { _NUMBER_ARRAY = value }
  NUMBER_CHAR_ARRAY { _NUMBER_CHAR_ARRAY }
  NUMBER_CHAR_ARRAY=(value) { _NUMBER_CHAR_ARRAY = value }
  NUMBER_CHAR_ARRAYS { _NUMBER_CHAR_ARRAYS }
  NUMBER_CHAR_ARRAYS=(value) { _NUMBER_CHAR_ARRAYS = value }
  ZERO { _ZERO }
  ZERO=(value) { _ZERO = value }

  initFields_PrimitiveLongSingleton() {
    _UNK = null
    _NUMBER_ARRAY = null
    _NUMBER_CHAR_ARRAY = null
    _NUMBER_CHAR_ARRAYS = null
    _ZERO = null
        _UNK = ["U".bytes[0], "n".bytes[0], "k".bytes[0]]
        _NUMBER_ARRAY = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        _NUMBER_CHAR_ARRAY = ["0".bytes[0], "1".bytes[0], "2".bytes[0], "3".bytes[0], "4".bytes[0], "5".bytes[0], "6".bytes[0], "7".bytes[0], "8".bytes[0], "9".bytes[0]]
        _NUMBER_CHAR_ARRAYS = [["0".bytes[0]], ["1".bytes[0]], ["2".bytes[0]], ["3".bytes[0]], ["4".bytes[0]], ["5".bytes[0]], ["6".bytes[0]], ["7".bytes[0]], ["8".bytes[0]], ["9".bytes[0]]]
        _ZERO = [_NUMBER_CHAR_ARRAY[0]]
  }

  construct new() {
    super()
    initFields_PrimitiveLongSingleton()
  }
    

    static getInstance() {
        return PrimitiveLongSingleton.instance
    }
    

    getNumberFromChar(numberAsChar) {
        var size = _NUMBER_CHAR_ARRAY.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            if ((_NUMBER_CHAR_ARRAY[index] == numberAsChar)) {
                return _NUMBER_ARRAY[index]
            }
            }
        }
        Fiber.abort(JR.exception("Exception", StringMaker.new().append("numberAsChar was not in array: ").appendchar(numberAsChar).toString()))
    }
}

import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker

