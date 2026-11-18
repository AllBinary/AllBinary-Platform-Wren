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
// package org.allbinary.logic.system.security.licensing

import "../../../../../../allbinary_java" for JObject, JException, JR
import "./ClientInformation" for ClientInformation

// This is the information sent to the license server
class AbeClientInformation is ClientInformation {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }

  initFields_AbeClientInformation() {
    _logUtil = null
        _logUtil = LogUtil.getInstance()
  }
    

    construct new(name, version, specialName, shortName) {
        super(name, version, specialName, shortName)
        initFields_AbeClientInformation()
    }
    

    init() {
        var jerror0 = Fiber.new {
            this.setOperatingSystemInterface(OperatingSystemFactory.getInstance().getOperatingSystemInstance())
            var licenseInitInfo = LicenseInitInfoUtil.getInstance().read()
            this.setLicenseId(licenseInitInfo.getLicenseId())
            this.setLicenseServers(licenseInitInfo.getServerList())
            var stringValidationUtil = StringValidationUtil.getInstance()
            if (stringValidationUtil.isEmpty(this.getLicenseId())) {
                var NONE = "No License Id"
                this.setLicenseId(NONE)
            }
            var commonStrings = CommonStrings.getInstance()
            PreLogUtil.put(StringMaker.new().append("Special Name: ").append(this.getSpecialName()).toString(), this, commonStrings.CONSTRUCTOR)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var logUtil = LogUtil.getInstance()
            var commonStrings = CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)
        }
    }
}

import "../../../../../../org/allbinary/business/init/LicenseInitInfo" for LicenseInitInfo
import "../../../../../../org/allbinary/business/init/LicenseInitInfoUtil" for LicenseInitInfoUtil
import "../../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../../org/allbinary/logic/string/StringValidationUtil" for StringValidationUtil
import "../../../../../../org/allbinary/logic/system/os/OperatingSystemFactory" for OperatingSystemFactory
import "../../../../../../org/allbinary/string/CommonStrings" for CommonStrings

