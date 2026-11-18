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
// package org.allbinary.data

import "../../../allbinary_java" for JObject, JException, JR

class CamelCaseUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = CamelCaseUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  commonSeps { _commonSeps }
  commonSeps=(value) { _commonSeps = value }

  initFields_CamelCaseUtil() {
    _commonSeps = null
        _commonSeps = CommonSeps.getInstance()
  }

  construct new() {
    super()
    initFields_CamelCaseUtil()
  }
    

    static getInstance() {
        return CamelCaseUtil.instance
    }
    

    getAsCamelCase(string, stringBuilder) {
        var stringValidationUtil = StringValidationUtil.getInstance()
        stringBuilder.delete(0, stringBuilder.length())
        var list = BasicArrayListD.new()
        var tokenizer = Tokenizer.new(_commonSeps.UNDERSCORE)
        tokenizer.getTokensFromString(string, list)
        var size = list.size()
        var word = null
        if (true) {
            var i = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    i = JR.i32(i + 1)
                }
                jfirst = false
                if (!((i < size))) break
            word = list.get(i)
            word = (stringValidationUtil.isEmpty(word) ? word : StringMaker.new().appendchar(Character.toUpperCase(JR.charAt(word, 0))).append(JR.toLowerCase(JR.substring(word, 1))).toString())
            stringBuilder.append(word)
            }
        }
        return stringBuilder.toString()
    }
}

import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/logic/string/StringValidationUtil" for StringValidationUtil
import "../../../org/allbinary/logic/string/tokens/Tokenizer" for Tokenizer
import "../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../java/lang/Character" for Character

