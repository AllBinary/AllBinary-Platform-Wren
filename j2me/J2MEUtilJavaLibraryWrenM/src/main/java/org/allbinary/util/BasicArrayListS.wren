/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.util

import "../../../allbinary_java" for JObject, JException, JR
import "./BasicArrayList" for BasicArrayList

class BasicArrayListS is BasicArrayList {

  initFields_BasicArrayListS() {
  }
    

    construct new(size) {
        super(NullUtil.getInstance().NULL_OBJECT_ARRAY)
        if ((size < 0)) {
            Fiber.abort(JR.exception("IllegalArgumentException", StringMaker.new().append("Init Size Exception: ").appendint(size).toString()))
        }
        this.objectArray = List.filled(size, null)
    }
}

import "../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker

