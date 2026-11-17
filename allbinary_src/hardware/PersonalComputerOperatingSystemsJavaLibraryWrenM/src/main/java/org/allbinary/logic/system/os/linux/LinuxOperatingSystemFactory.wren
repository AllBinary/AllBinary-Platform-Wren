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
// package org.allbinary.logic.system.os.linux

import "../../../../../../allbinary_java" for JObject, JException, JR

class LinuxOperatingSystemFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = LinuxOperatingSystemFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }

  initFields_LinuxOperatingSystemFactory() {
    _logUtil = null
        _logUtil = LogUtil.getInstance()
  }
    

    static getInstance() {
        return LinuxOperatingSystemFactory.instance
    }
    

    construct new() {
    super()
    initFields_LinuxOperatingSystemFactory()
    }
    

    getOperatingSystemInstance() {
        var jerror0 = Fiber.new {
            var operatingSystems = OperatingSystems.getInstance()
            var osName = SystemProperties.getInstance().getName()
            var operatingSystemInterface = null
            if ((JR.compareTo(osName, operatingSystems.LINUX) == 0)) {
                operatingSystemInterface = LinuxOS.new()
            } else {
                if (operatingSystems.isUnknownSpecificOSAllowed()) {
                    operatingSystemInterface = LinuxOS.new()
                } else {
                    Fiber.abort(JR.exception("Exception", "Specific Linux OS Not Supported: " + osName))
                }
            }
            return operatingSystemInterface
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                var commonStrings = CommonStrings.getInstance()
                _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e)
            }
            return NoOperatingSystem.NO_OPERATING_SYSTEM
        }
    }
}

import "../../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../../org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" for LogConfigTypeFactory
import "../../../../../../org/allbinary/logic/communication/log/config/type/LogConfigTypes" for LogConfigTypes
import "../../../../../../org/allbinary/logic/system/os/GenericOperatingSystem" for GenericOperatingSystem
import "../../../../../../org/allbinary/logic/system/os/NoOperatingSystem" for NoOperatingSystem
import "../../../../../../org/allbinary/logic/system/os/OperatingSystems" for OperatingSystems
import "../../../../../../org/allbinary/logic/system/os/SystemProperties" for SystemProperties
import "../../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./LinuxOS" for LinuxOS

