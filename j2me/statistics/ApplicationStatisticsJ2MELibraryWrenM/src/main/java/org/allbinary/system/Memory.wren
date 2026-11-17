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
// package org.allbinary.system

import "../../../allbinary_java" for JObject, JException, JR

//ActualPlatform
class Memory is JObject {

  initFields_Memory() {
  }

  construct new() {
    super()
    initFields_Memory()
  }
    

    static getInfo() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append("Memory: Free: ")
        stringBuffer.appendlong(Runtime.getRuntime().freeMemory())
        stringBuffer.append(" Total: ")
        stringBuffer.appendlong(Runtime.getRuntime().totalMemory())
        return stringBuffer.toString()
    }
}

import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../java/lang/Runtime" for Runtime

