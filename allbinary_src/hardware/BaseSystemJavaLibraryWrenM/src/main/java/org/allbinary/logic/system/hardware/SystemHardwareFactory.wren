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
// package org.allbinary.logic.system.hardware

import "../../../../../allbinary_java" for JObject, JException, JR

class SystemHardwareFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = SystemHardwareFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  hardwareInterface { _hardwareInterface }
  hardwareInterface=(value) { _hardwareInterface = value }

  initFields_SystemHardwareFactory() {
    _logUtil = null
    _commonStrings = null
    _hardwareInterface = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _hardwareInterface = NoHardware.getInstance()
  }
    

    static getInstance() {
        return SystemHardwareFactory.instance
    }
    

    construct new() {
    super()
    initFields_SystemHardwareFactory()
    }
    

    getInstance(operatingSystemInterface) {
        var jerror0 = Fiber.new {
            if ((_hardwareInterface == NoHardware.getInstance())) {
                _hardwareInterface = HardwareFactory.getInstance().getInstance(operatingSystemInterface)
            }
            _logUtil.putF("Found Hardware", this, _commonStrings.CONSTRUCTOR)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.CONSTRUCTOR, e)
        }
        return _hardwareInterface
    }
    

    static static_toString() {
        var systemHardwareFactory = SystemHardwareFactory.getInstance()
        var osBuffer = StringMaker.new()
        osBuffer.append("Hardware Info: \n")
        if ((systemHardwareFactory.hardwareInterface != null)) {
            osBuffer.append(systemHardwareFactory.hardwareInterface.toString())
        } else {
            osBuffer.append(StringUtil.getInstance().NULL_STRING)
        }
        return osBuffer.toString()
    }
}

import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/logic/system/os/GenericOperatingSystem" for GenericOperatingSystem
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./NoHardware" for NoHardware
import "./HardwareInterface" for HardwareInterface
import "./HardwareFactory" for HardwareFactory

