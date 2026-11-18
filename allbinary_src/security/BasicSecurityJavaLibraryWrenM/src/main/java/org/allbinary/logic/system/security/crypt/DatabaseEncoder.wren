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
// package org.allbinary.logic.system.security.crypt

import "../../../../../../allbinary_java" for JObject, JException, JR

class DatabaseEncoder is JObject {

  initFields_DatabaseEncoder() {
  }
    

    construct new() {
    super()
    initFields_DatabaseEncoder()
    }
    

    static encode(value) {
        var jerror0 = Fiber.new {
            var array = value
            var stringBuffer = StringMaker.new()
            if (true) {
                var index = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < array.count))) break
                stringBuffer.append(array[index].toString())
                if ((index < JR.i32(array.count - 1))) {
                    stringBuffer.append(CommonSeps.getInstance().SPACE)
                }
                }
            }
            return stringBuffer.toString()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            PreLogUtil.putOE(commonStrings.EXCEPTION, "DatabaseEncoder", "decode", e)
            return StringUtil.getInstance().EMPTY_STRING
        }
    }
    

    static decode(value) {
        var jerror1 = Fiber.new {
            var tokenizer = Tokenizer.new(CommonSeps.getInstance().SPACE)
            var vector = tokenizer.getTokensFromString(value, BasicArrayListD.new())
            var size = vector.size()
            var decode = List.filled(size, 0)
            var byteOfData = null
            if (true) {
                var index = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < size))) break
                byteOfData = vector.objectArray[index]
                decode[index] = Byte.parseByte(byteOfData)
                }
            }
            return decode
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            var commonStrings = CommonStrings.getInstance()
            PreLogUtil.putSE(commonStrings.EXCEPTION, "DatabaseEncoder", "decode", e)
            return NullUtil.getInstance().NULL_BYTE_ARRAY
        }
    }
}

import "../../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../../org/allbinary/logic/string/tokens/Tokenizer" for Tokenizer
import "../../../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../../../../java/lang/Byte" for Byte

