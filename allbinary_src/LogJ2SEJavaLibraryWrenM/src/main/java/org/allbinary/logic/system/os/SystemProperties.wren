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

//ActualPlatform
class SystemProperties is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = SystemProperties.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  OS_NAME { _OS_NAME }
  OS_NAME=(value) { _OS_NAME = value }
  OS_ARCH { _OS_ARCH }
  OS_ARCH=(value) { _OS_ARCH = value }
  OS_VERSION { _OS_VERSION }
  OS_VERSION=(value) { _OS_VERSION = value }
  USER_HOME { _USER_HOME }
  USER_HOME=(value) { _USER_HOME = value }

  initFields_SystemProperties() {
    _OS_NAME = null
    _OS_ARCH = null
    _OS_VERSION = null
    _USER_HOME = null
        _OS_NAME = "os.name"
        _OS_ARCH = "os.arch"
        _OS_VERSION = "os.version"
        _USER_HOME = "user.home"
  }
    

    static getInstance() {
        return SystemProperties.instance
    }
    

    construct new() {
    super()
    initFields_SystemProperties()
    }
    

    getName() {
        return JSystem.getProperty(_OS_NAME)
    }
    

    getArch() {
        return JSystem.getProperty(_OS_ARCH)
    }
    

    getVersion() {
        return JSystem.getProperty(_OS_VERSION)
    }
    

    getUserHomePath() {
        return JSystem.getProperty(_USER_HOME)
    }
}

import "../../../../../java/lang/System" for JSystem

