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

class AbeClientInformationData is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = AbeClientInformationData.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  KEY { _KEY }
  KEY=(value) { _KEY = value }
  NAME { _NAME }
  NAME=(value) { _NAME = value }
  VERSION { _VERSION }
  VERSION=(value) { _VERSION = value }
  SPECIALNAME { _SPECIALNAME }
  SPECIALNAME=(value) { _SPECIALNAME = value }
  LICENSEID { _LICENSEID }
  LICENSEID=(value) { _LICENSEID = value }
  LICENSE_TYPE { _LICENSE_TYPE }
  LICENSE_TYPE=(value) { _LICENSE_TYPE = value }
  PREVIOUSLICENSEID { _PREVIOUSLICENSEID }
  PREVIOUSLICENSEID=(value) { _PREVIOUSLICENSEID = value }
  OSNAME { _OSNAME }
  OSNAME=(value) { _OSNAME = value }
  OSARCH { _OSARCH }
  OSARCH=(value) { _OSARCH = value }
  OSVERSION { _OSVERSION }
  OSVERSION=(value) { _OSVERSION = value }
  OS { _OS }
  OS=(value) { _OS = value }
  HARDWARE { _HARDWARE }
  HARDWARE=(value) { _HARDWARE = value }
  LICENSESERVERS { _LICENSESERVERS }
  LICENSESERVERS=(value) { _LICENSESERVERS = value }
  NEWLICENSE { _NEWLICENSE }
  NEWLICENSE=(value) { _NEWLICENSE = value }
  ISNEW { _ISNEW }
  ISNEW=(value) { _ISNEW = value }
  SPECIAL { _SPECIAL }
  SPECIAL=(value) { _SPECIAL = value }

  initFields_AbeClientInformationData() {
    _KEY = null
    _NAME = null
    _VERSION = null
    _SPECIALNAME = null
    _LICENSEID = null
    _LICENSE_TYPE = null
    _PREVIOUSLICENSEID = null
    _OSNAME = null
    _OSARCH = null
    _OSVERSION = null
    _OS = null
    _HARDWARE = null
    _LICENSESERVERS = null
    _NEWLICENSE = null
    _ISNEW = null
    _SPECIAL = null
        _KEY = "KEY"
        _NAME = "NAME"
        _VERSION = "VERSION"
        _SPECIALNAME = "SPECIALNAME"
        _LICENSEID = "LICENSEID"
        _LICENSE_TYPE = "LICENSETYPE"
        _PREVIOUSLICENSEID = "PREVIOUSLICENSEID"
        _OSNAME = "OSNAME"
        _OSARCH = "OSARCH"
        _OSVERSION = "OSVERSION"
        _OS = "OS"
        _HARDWARE = "HARDWARE"
        _LICENSESERVERS = "LICENSESERVERS"
        _NEWLICENSE = "NEWLICENSE"
        _ISNEW = "ISNEW"
        _SPECIAL = "SPECIAL"
  }
    

    static getInstance() {
        return AbeClientInformationData.instance
    }
    

    construct new() {
    super()
    initFields_AbeClientInformationData()
    }
}


