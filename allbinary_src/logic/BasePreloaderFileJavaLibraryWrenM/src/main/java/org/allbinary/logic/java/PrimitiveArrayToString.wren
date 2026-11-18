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
// package org.allbinary.logic.java

import "../../../../allbinary_java" for JObject, JException, JR

class PrimitiveArrayToString is JObject {

  initFields_PrimitiveArrayToString() {
  }

  construct new() {
    super()
    initFields_PrimitiveArrayToString()
  }
    

    static toString(floats) {
        var stringBuffer = StringMaker.new()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < floats.count))) break
            stringBuffer.appendfloat(floats[index])
            }
        }
        return stringBuffer.toString()
    }
}

import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker

