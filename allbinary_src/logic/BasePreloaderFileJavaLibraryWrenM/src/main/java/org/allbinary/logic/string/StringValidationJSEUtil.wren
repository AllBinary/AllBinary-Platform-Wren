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
// package org.allbinary.logic.string

import "../../../../allbinary_java" for JObject, JException, JR

class StringValidationJSEUtil is JObject {

  initFields_StringValidationJSEUtil() {
  }
    

    construct new() {
    super()
    initFields_StringValidationJSEUtil()
    }
    

    static isBlank(string) {
        var len = JR.length(string)
        if (true) {
            var i = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    i = JR.i32(i + 1)
                }
                jfirst = false
                if (!((i < len))) break
            var c = JR.charAt(string, i)
            if ((Character.isWhitespace(c) == false)) {
                return false
            }
            }
        }
        return true
    }
}

import "../../../../java/lang/Character" for Character

