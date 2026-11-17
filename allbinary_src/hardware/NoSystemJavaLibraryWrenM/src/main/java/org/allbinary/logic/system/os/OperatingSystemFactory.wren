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
// package org.allbinary.logic.system.os

import "../../../../../allbinary_java" for JObject, JException, JR

class OperatingSystemFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = OperatingSystemFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  genericOperatingSystem { _genericOperatingSystem }
  genericOperatingSystem=(value) { _genericOperatingSystem = value }

  initFields_OperatingSystemFactory() {
    _logUtil = null
    _genericOperatingSystem = null
        _logUtil = LogUtil.getInstance()
        _genericOperatingSystem = NoOperatingSystem.NO_OPERATING_SYSTEM
  }
    

    static getInstance() {
        return OperatingSystemFactory.instance
    }
    

    construct new() {
    super()
    initFields_OperatingSystemFactory()
    }
    

    getOperatingSystemInstance() {
        var commonStrings = CommonStrings.getInstance()
        var jerror0 = Fiber.new {
            var osString = StringMaker.new().append("OperatingSystem Info: ").append(_genericOperatingSystem.toString()).toString()
            System.print(osString)
            _logUtil.putF(osString, this, commonStrings.GET_INSTANCE)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e)
        }
        return _genericOperatingSystem
    }
}

import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../java/lang/System" for JSystem
import "./NoOperatingSystem" for NoOperatingSystem
import "./GenericOperatingSystem" for GenericOperatingSystem

