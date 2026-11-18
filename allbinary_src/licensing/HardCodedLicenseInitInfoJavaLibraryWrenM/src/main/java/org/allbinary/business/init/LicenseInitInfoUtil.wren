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
// package org.allbinary.business.init

import "../../../../allbinary_java" for JObject, JException, JR

class LicenseInitInfoUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = LicenseInitInfoUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  INITFILENAME { _INITFILENAME }
  INITFILENAME=(value) { _INITFILENAME = value }
  ABOUT { _ABOUT }
  ABOUT=(value) { _ABOUT = value }
  PRIVACY_POLICY { _PRIVACY_POLICY }
  PRIVACY_POLICY=(value) { _PRIVACY_POLICY = value }
  OFFICIAL_ALLBINARY_SERVICES_SERVER { _OFFICIAL_ALLBINARY_SERVICES_SERVER }
  OFFICIAL_ALLBINARY_SERVICES_SERVER=(value) { _OFFICIAL_ALLBINARY_SERVICES_SERVER = value }

  initFields_LicenseInitInfoUtil() {
    _INITFILENAME = null
    _ABOUT = null
    _PRIVACY_POLICY = null
    _OFFICIAL_ALLBINARY_SERVICES_SERVER = null
        _INITFILENAME = "licenseinitdata.dat"
        _ABOUT = "about"
        _PRIVACY_POLICY = "privacy_policy"
        _OFFICIAL_ALLBINARY_SERVICES_SERVER = "https://services.allbinary.com/LicServ/serverssl.php"
  }
    

    static getInstance() {
        return LicenseInitInfoUtil.instance
    }
    

    setFilePath(filePath) {
    }
    

    construct new() {
    super()
    initFields_LicenseInitInfoUtil()
    }
    

    write(initData) {
    }
    

    read() {
        return this.readAgain(0)
    }
    

    readAgain(initializeCounter) {
        var licenseInitInfo = LicenseInitInfo.new()
        licenseInitInfo.clearServers()
        licenseInitInfo.addServer(_OFFICIAL_ALLBINARY_SERVICES_SERVER)
        return licenseInitInfo
    }
}

import "./LicenseInitInfo" for LicenseInitInfo

