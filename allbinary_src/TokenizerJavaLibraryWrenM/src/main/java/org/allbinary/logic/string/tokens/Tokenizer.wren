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
// package org.allbinary.logic.string.tokens

import "../../../../../allbinary_java" for JObject, JException, JR

class Tokenizer is JObject {
  sep { _sep }
  sep=(value) { _sep = value }
  endSep { _endSep }
  endSep=(value) { _endSep = value }

  initFields_Tokenizer() {
    _sep = null
    _endSep = null
        
        _endSep = StringUtil.getInstance().EMPTY_STRING
  }
    

    construct new(sep) {
    super()
    initFields_Tokenizer()
        if ((TsUtil.getInstance().compareTo(sep, StringUtil.getInstance().EMPTY_STRING) == 0)) {
            Fiber.abort(JR.exception("Exception", "Sep provided is not valid"))
        }
        _sep = sep
    }
    

    setSep(sep) {
        _sep = sep
    }
    

    setEndSep(endSep) {
        _endSep = endSep
    }
    

    getInsideSep(string) {
        var tokenList = BasicArrayListD.new()
        var index = 0
        var size = JR.length(string)
        while ((index < size)) {
            index = JR.indexOf(string, _sep, index)
            if ((index != -1)) {
                var end = JR.indexOf(string, _endSep, JR.i32(index + JR.length(_sep)))
                if ((end != -1)) {
                    tokenList.add(JR.substring(string, JR.i32(index + JR.length(_sep)), JR.i32(end - (JR.i32(JR.length(_endSep) - 1)))))
                    index = JR.i32(end + JR.length(_endSep))
                } else {
                }
            } else {
                break
            }
        }
        return tokenList
    }
    

    getTokensFromString(string, tokenVector) {
        var index = 0
        var end = 0
        while ((index < JR.length(string))) {
            end = JR.indexOf(string, _sep, index)
            if ((end != -1)) {
                tokenVector.add(JR.substring(string, index, end))
                index = JR.i32(end + JR.length(_sep))
            } else {
                tokenVector.add(JR.substring(string, index, JR.length(string)))
                break
            }
        }
        return tokenVector
    }
    

    getTokens(stringVector) {
        var tokenHashtable = StdUtil.getInstance().createHashtable()
        var string = StringUtil.getInstance().EMPTY_STRING
        var end = 0
        var size = stringVector.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            string = stringVector.objectArray[index]
            end = JR.indexOf(string, _sep)
            if ((end >= 0)) {
                tokenHashtable.put(JR.substring(string, 0, end), JR.substring(string, JR.i32(end + 1), JR.length(string)))
            }
            }
        }
        return tokenHashtable
    }
}

import "../../../../../org/allbinary/TsUtil" for TsUtil
import "../../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD

