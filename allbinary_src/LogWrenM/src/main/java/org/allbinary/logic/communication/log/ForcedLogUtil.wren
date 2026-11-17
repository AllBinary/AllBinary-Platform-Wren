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

class ForcedLogUtil is JObject {

  initFields_ForcedLogUtil() {
  }

  construct new() {
    super()
    initFields_ForcedLogUtil()
  }
    

    static log(message, anyType) {
        var jerror0 = Fiber.new {
            Fiber.abort(JR.exception("Exception", message))
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            PreLogUtil.putOE(CommonStrings.getInstance().EXCEPTION, anyType, "log", e)
        }
    }
}

import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil

