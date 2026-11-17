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
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  genericOperatingSystem { _genericOperatingSystem }
  genericOperatingSystem=(value) { _genericOperatingSystem = value }
  hasDetected { _hasDetected }
  hasDetected=(value) { _hasDetected = value }

  initFields_OperatingSystemFactory() {
    _logUtil = null
    _commonStrings = null
    _genericOperatingSystem = null
    _hasDetected = false
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _genericOperatingSystem = NoOperatingSystem.NO_OPERATING_SYSTEM
        _hasDetected = false
  }
    

    static getInstance() {
        return OperatingSystemFactory.instance
    }
    

    construct new() {
    super()
    initFields_OperatingSystemFactory()
    }
    

    getOperatingSystemInstance() {
        var jerror0 = Fiber.new {
            var operatingSystems = OperatingSystems.getInstance()
            var systemProperties = SystemProperties.getInstance()
            var osName = systemProperties.getName()
            var osArch = systemProperties.getArch()
            var osVersion = systemProperties.getVersion()
            if (!_hasDetected) {
                _logUtil.putF("osName: " + osName, this, _commonStrings.GET_INSTANCE)
                _hasDetected = true
                if ((JR.indexOf(osName, operatingSystems.LINUX) >= 0)) {
                    if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                        _logUtil.putF("Found a Linux OS", this, _commonStrings.GET_INSTANCE)
                    }
                    _genericOperatingSystem = LinuxOperatingSystemFactory.getInstance().getOperatingSystemInstance()
                } else if ((JR.indexOf(osName, operatingSystems.WINDOWS) >= 0)) {
                    if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                        _logUtil.putF("Found a Windows OS", this, _commonStrings.GET_INSTANCE)
                    }
                    _genericOperatingSystem = WindowsOperatingSystemFactory.getInstance().getOperatingSystemInstance()
                } else if ((JR.indexOf(osName, operatingSystems.SOLARIS) >= 0)) {
                    if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                        _logUtil.putF("Found a Solaris OS", this, _commonStrings.GET_INSTANCE)
                    }
                    _genericOperatingSystem = SolarisOperatingSystemFactory.getInstance().getOperatingSystemInstance()
                } else {
                    Fiber.abort(JR.exception("Exception", StringMaker.new().append("OS Not Supported: ").append(osName).toString()))
                }
                var log = LogFactory.getInstanceF(StringMaker.new().append("OperatingSystem Info: ").append(StringUtil.getInstance().toString(_genericOperatingSystem)).toString(), this, _commonStrings.GET_INSTANCE)
                System.print(log.toString())
                _logUtil.putL(log)
            }
            return _genericOperatingSystem
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                _logUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.GET_INSTANCE, e)
            }
            return NoOperatingSystem.NO_OPERATING_SYSTEM
        }
    }
}

import "../../../../../org/allbinary/logic/communication/log/Log" for Log
import "../../../../../org/allbinary/logic/communication/log/LogFactory" for LogFactory
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" for LogConfigTypeFactory
import "../../../../../org/allbinary/logic/communication/log/config/type/LogConfigTypes" for LogConfigTypes
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/logic/system/os/linux/LinuxOperatingSystemFactory" for LinuxOperatingSystemFactory
import "../../../../../org/allbinary/logic/system/os/solaris/SolarisOperatingSystemFactory" for SolarisOperatingSystemFactory
import "../../../../../org/allbinary/logic/system/os/windows/WindowsOperatingSystemFactory" for WindowsOperatingSystemFactory
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../java/lang/System" for JSystem
import "./NoOperatingSystem" for NoOperatingSystem
import "./GenericOperatingSystem" for GenericOperatingSystem
import "./OperatingSystems" for OperatingSystems
import "./SystemProperties" for SystemProperties

