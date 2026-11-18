/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.persistance

import "../../../allbinary_java" for JObject, JException, JR

class PlatformRecordIdUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = PlatformRecordIdUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  PLATFORM_SHORT_NAME { _PLATFORM_SHORT_NAME }
  PLATFORM_SHORT_NAME=(value) { _PLATFORM_SHORT_NAME = value }

  initFields_PlatformRecordIdUtil() {
    _PLATFORM_SHORT_NAME = null
        _PLATFORM_SHORT_NAME = "JSE"
  }

  construct new() {
    super()
    initFields_PlatformRecordIdUtil()
  }
    

    static getInstance() {
        return PlatformRecordIdUtil.instance
    }
    

    getRecordId(abeClientInformation, baseRecordId) {
        return StringMaker.new().append(abeClientInformation.toShortString()).append(CommonSeps.getInstance().UNDERSCORE).append(_PLATFORM_SHORT_NAME).append(baseRecordId).toString()
    }
}

import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface
import "../../../org/allbinary/string/CommonSeps" for CommonSeps

