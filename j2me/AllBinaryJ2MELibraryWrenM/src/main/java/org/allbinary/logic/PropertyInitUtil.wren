/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
// package org.allbinary.logic

import "../../../allbinary_java" for JObject, JException, JR

class PropertyInitUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = PropertyInitUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_PropertyInitUtil() {
  }

  construct new() {
    super()
    initFields_PropertyInitUtil()
  }
    

    static getInstance(value) {
        var commonStrings = CommonStrings.getInstance()
        var logUtil = LogUtil.getInstance()
        logUtil.putF(StringMaker.new().append("PropertyInitUtil: ").appendint(value).toString(), logUtil, commonStrings.CONSTRUCTOR)
        return PropertyInitUtil.instance
    }
}

import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/string/CommonStrings" for CommonStrings

