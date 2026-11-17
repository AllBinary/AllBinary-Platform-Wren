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
// package org.allbinary.logic.communication.log

import "../../../../../allbinary_java" for JObject, JException, JR

//NoPlatform
class PreLogUtil is JObject {

  initFields_PreLogUtil() {
  }
    

    construct new() {
    super()
    initFields_PreLogUtil()
    }
    

    static put(specialMessage, anyType, functionName) {
        PreLogUtil.putOE(specialMessage, anyType, functionName, NullUtil.getInstance().NULL_OBJECT)
    }
    

    static putOE(specialMessage, anyType, functionName, exception) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    static putSE(specialMessage, className, functionName, exception) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
}

import "../../../../../org/allbinary/logic/NullUtil" for NullUtil

