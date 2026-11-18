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
// package org.allbinary.globals

import "../../../allbinary_java" for JObject, JException, JR

class Globals is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = Globals.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }

  initFields_Globals() {
    _logUtil = null
        _logUtil = LogUtil.getInstance()
  }
    

    static getInstance() {
        return Globals.instance
    }
    

    construct new() {
    super()
    initFields_Globals()
    }
    

    init(classLoader, pathString) {
        var commonStrings = CommonStrings.getInstance()
        var appUrlGlobals = AppUrlGlobals.new()
        appUrlGlobals.setWebappPath(pathString)
        URLGLOBALS.init(appUrlGlobals)
        WebappClassLoaderInfo.setLoader(classLoader)
        var stringBuffer = StringMaker.new()
        stringBuffer.append("Setting Up AllBinary System Configuration Args: ")
        stringBuffer.append(pathString)
        stringBuffer.append(" ClassLoader: ")
        stringBuffer.append(JR.className(classLoader))
        _logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT)
        var stringValidationUtil = StringValidationUtil.getInstance()
        if (stringValidationUtil.isEmpty(pathString)) {
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append("No Path Provided. Using Process Path: ")
            stringBuffer.append(pathString)
            stringBuffer.append(CommonSeps.getInstance().SPACE)
            stringBuffer.append(CommonSeps.getInstance().EQUALS)
            stringBuffer.append(CommonSeps.getInstance().SPACE)
            stringBuffer.append(URLGLOBALS.getWebappPath())
            _logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT)
        }
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append("Webapp Path Set To: ")
        stringBuffer.append(URLGLOBALS.getWebappPath())
        _logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT)
    }
}

import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/logic/string/StringValidationUtil" for StringValidationUtil
import "../../../org/allbinary/logic/system/loader/WebappClassLoaderInfo" for WebappClassLoaderInfo
import "../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./AppUrlGlobals" for AppUrlGlobals
import "./URLGLOBALS" for URLGLOBALS

